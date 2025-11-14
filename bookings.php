<?php
    session_start();
    require_once __DIR__ . '/assets/includes/db_connect.php';

    // Check if user is logged in
    if (!isset($_SESSION['user_id'])) {
        header("Location: login.php");
        exit;
    }

    try {
        $stmt = $conn->query("
            SELECT 
                id,
                booking_number,
                customer_name,
                email,
                phone,
                vehicle_category,
                flight_number,
                travel_datetime,
                number_of_passengers,
                number_of_luggage,
                pickup_location,
                dropoff_location,
                travel_datetime,
                total_price,
                created_at,
                invoice_file
            FROM bookings
            ORDER BY created_at DESC
        ");
        $bookings = $stmt->fetchAll(PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        die('<div style="color:red;">Database error: ' . $e->getMessage() . '</div>');
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SR Transfers | Booking Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="assets/images/logo.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.1.2/css/dataTables.bootstrap5.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <style>
        body { font-family: "Cambria", sans-serif; background-color: #f4f6f8; font-size: 12px; }
        .container { max-width: max-content; }
        .dashboard-card { background: #fff; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.08); padding: 20px; margin-top: 40px; }
        h2 { color: #0a277d; font-weight: 600; margin-bottom: 20px; }
        table thead { background-color: #000 !important; color: #fff !important; }
        table thead tr th { background-color: #000; color: #fff; }
        .dataTables_wrapper .dataTables_filter input { border-radius: 8px; border: 1px solid #ccc; padding: 4px 8px; }
        .dataTables_wrapper .dataTables_length select { border-radius: 8px; border: 1px solid #ccc; }
        #redirectMessage { margin-top: 15px; font-weight: 600; color: #dc3545; }
    </style>
</head>
<body>
    <div class="d-flex">
        <!-- Sidebar -->
        <?php include __DIR__ . '/assets/includes/sidebar.php'; ?>

        <!-- Main Content -->
        <div class="flex-grow-1">
            <div class="container">
                <div class="card dashboard-card">
                    <h2 class="text-center fw-bold">🚘 Booking Dashboard</h2>

                    <div id="redirectMessage" class="text-center"></div>

                    <div class="table-responsive">
                        <table id="bookingsTable" class="table table-bordered table-striped align-middle">
                            <thead>
                                <tr class="table-dark">
                                    <th>#</th>
                                    <th>Booking No</th>
                                    <th>Customer</th>
                                    <th>Email</th>
                                    <th>Price (USD)</th>
                                    <th>Travel Date / Time</th>
                                    <th>Phone</th>
                                    <th>Vehicle</th>
                                    <th>Flight No</th>
                                    <th>View Invoice</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($bookings as $i => $b): ?>
                                    <tr>
                                        <td><?= $i + 1 ?></td>
                                        <td><?= htmlspecialchars($b['booking_number'] ?? '') ?></td>
                                        <td><?= htmlspecialchars($b['customer_name'] ?? '') ?></td>
                                        <td><?= htmlspecialchars($b['email'] ?? '') ?></td>
                                        <td><?= number_format($b['total_price'] ?? 0, 2) ?></td>
                                        <td><?= $b['travel_datetime'] ? date('d M Y H:i', strtotime($b['travel_datetime'])) : '' ?></td>
                                        <td><?= htmlspecialchars($b['phone'] ?? '') ?></td>
                                        <td><?= htmlspecialchars($b['vehicle_category'] ?? '') ?></td>
                                        <td><?= htmlspecialchars($b['flight_number'] ?? '') ?></td>
                                        <td>
                                            <?php if (!empty($b['invoice_file'])): ?>
                                                <a href="<?= htmlspecialchars($b['invoice_file']) ?>" target="_blank" class="btn btn-sm btn-primary">
                                                    View Invoice
                                                </a>
                                            <?php else: ?>
                                                <span class="text-muted">Not generated</span>
                                            <?php endif; ?>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.datatables.net/2.1.2/js/dataTables.js"></script>
<script src="https://cdn.datatables.net/2.1.2/js/dataTables.bootstrap5.js"></script>
<script>
    $(document).ready(function () {
        $('#bookingsTable').DataTable({
            pageLength: 50,
            lengthMenu: [5, 10, 25, 50],
            order: [[14, 'desc']], 
            responsive: true
        });

        let seconds = 3600;
        const msg = document.getElementById('redirectMessage');
        const interval = setInterval(() => {
            seconds--;
            if (seconds < 0) {
                clearInterval(interval);
                window.location.href = "login.php?timeout=1";
            }
        }, 1000);
    });
</script>
</body>
</html>
