<?php
include_once 'db_connect.php';
header('Content-Type: application/json');

try {
    $data = json_decode(file_get_contents("php://input"), true);

    if (!$data) {
        echo json_encode(['success' => false, 'message' => 'Invalid input']);
        exit;
    }

    // Prepare add-ons string
    $addonsArray = array_map(fn($a) => $a['addon_name'].' x'.$a['quantity'].' ($'.$a['total'].')', $data['addons'] ?? []);
    $addonsString = implode(", ", $addonsArray);

    $stmt = $conn->prepare("
        INSERT INTO bookings 
        (
            vehicle_id, vehicle_category, customer_name, email, phone,
            flight_number, number_of_passengers, number_of_luggage,
            pickup_location, dropoff_location, return_pickup_location, return_dropoff_location,
            travel_datetime, return_datetime,
            price_per_km, main_distance_km, main_price,
            return_distance_km, return_price, total_price, addons
        )
        VALUES 
        (
            :vehicle_id, :vehicle_category, :customer_name, :email, :phone,
            :flight_number, :number_of_passengers, :number_of_luggage,
            :pickup, :dropoff, :return_pickup, :return_dropoff,
            :travel_datetime, :return_datetime,
            :price_per_km, :main_distance_km, :main_price,
            :return_distance_km, :return_price, :total_price, :addons
        )
    ");

    $stmt->execute([
        ':vehicle_id'       => $data['vehicle_id'] ?? null,
        ':vehicle_category' => $data['vehicle_category'] ?? null,
        ':customer_name'    => $data['customer_name'] ?? null,
        ':email'            => $data['email'] ?? null,
        ':phone'            => $data['phone'] ?? null,
        ':flight_number'    => $data['flight_number'] ?? null,
        ':number_of_passengers' => $data['number_of_passengers'] ?? null,
        ':number_of_luggage'    => $data['number_of_luggage'] ?? null,
        ':pickup'           => $data['pickup_location'] ?? null,
        ':dropoff'          => $data['dropoff_location'] ?? null,
        ':return_pickup'    => $data['return_pickup_location'] ?? null,
        ':return_dropoff'   => $data['return_dropoff_location'] ?? null,
        ':travel_datetime'  => $data['travel_datetime'] ?? null,
        ':return_datetime'  => $data['return_datetime'] ?? null,  
        ':price_per_km'     => $data['price_per_km'] ?? 0,
        ':main_distance_km' => $data['main_distance_km'] ?? 0,
        ':main_price'       => $data['main_price'] ?? 0,
        ':return_distance_km' => $data['return_distance_km'] ?? 0,
        ':return_price'     => $data['return_price'] ?? 0,
        ':total_price'      => $data['total_price'] ?? 0,
        ':addons'           => $addonsString
    ]);

    $lastId = $conn->lastInsertId();
    $year = date('Y');
    $month = date('m');
    $bookingNumber = sprintf("SR/RENT-%s/%s/%04d", $year, $month, $lastId);

    $invoiceFileName = sprintf("%04d.pdf", $lastId);
    $baseUrl = "https://srilankatransfer.lk/";
    $invoicePath = $baseUrl . "invoices/" . $invoiceFileName;

    $update = $conn->prepare("
        UPDATE bookings 
        SET booking_number = :booking_number, invoice_file = :invoice_file 
        WHERE id = :id
    ");
    $update->execute([
        ':booking_number' => $bookingNumber,
        ':invoice_file' => $invoicePath,
        ':id' => $lastId
    ]);

    echo json_encode([
        'success' => true,
        'message' => 'Booking saved successfully',
        'booking_number' => $bookingNumber,
        'invoice_file' => $invoicePath
    ]);

} catch (PDOException $e) {
    echo json_encode(['success' => false, 'message' => $e->getMessage()]);
}
