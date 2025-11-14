<?php  return 'include_once MODX_BASE_PATH . \'assets/includes/db_connect.php\';

try {
    $stmt = $conn->query("SELECT * FROM `vehicles` ORDER BY sort_order ASC");
    $vehicles = $stmt->fetchAll(PDO::FETCH_ASSOC);

    if ($vehicles) {
        foreach ($vehicles as $vehicle) {
            $hiddenClass = ($vehicle[\'id\'] > 6) ? \'hidden-vehicle\' : \'\';
            echo \'<div class="vehicle-card-fleet\' . $hiddenClass . \'">\';

            // ✅ Vehicle image
            echo \'<div class="vehicle-image">\';
            echo \'<img src="assets/img/navbar/\' . htmlspecialchars($vehicle[\'image\']) . \'" alt="\' . htmlspecialchars($vehicle[\'name\']) . \'" style="width:100%; border-radius:10px;">\';
            echo \'</div>\';

            // ✅ Vehicle details
            echo \'<div class="vehicle-details">\';
            echo \'<h5>\' . htmlspecialchars($vehicle[\'name\']) . \'</h5>\';
            echo \'<p><i class="fa fa-user"></i> \' . intval($vehicle[\'passengers\']) . \' Passengers</p>\';
            echo \'<p><i class="fa fa-suitcase"></i> \' . intval($vehicle[\'suitcases\']) . \' Suitcases</p>\';
            echo \'</div>\';

            // ✅ Vehicle price
            echo \'<div class="vehicle-price text-end">\';
            echo \'<h4 class="estimated-total" id="total-price-\' . intval($vehicle[\'id\']) . \'" style="font-weight:600;color:#04366b;display:none; font-size:18px;">Total: </h4>\';
            echo \'<p style="color:black; font-weight:600; margin-bottom:0;">$\' . number_format($vehicle[\'price\'], 2) . \' <small style="font-size:0.7em; font-weight:800; color:black; margin-bottom:0;">per KM</small></p>\';
            echo \'<p class="text-success fw-bold">Free Cancellation</p>\';


            // ✅ Select button
            echo \'<button class="btn btn-primary mt-2 select-vehicle-btn"
                data-id="\' . intval($vehicle[\'id\']) . \'"
                data-name="\' . htmlspecialchars($vehicle[\'name\']) . \'"
                data-passengers="\' . intval($vehicle[\'passengers\']) . \'"
                data-suitcases="\' . intval($vehicle[\'suitcases\']) . \'"
                data-price="\' . number_format($vehicle[\'price\'], 2, \'.\', \'\') . \'"
                data-image="images/car_types/\' . htmlspecialchars($vehicle[\'image\']) . \'">
                Select Vehicle
            </button>\';

            echo \'</div>\'; // vehicle-price
            echo \'</div>\'; // vehicle-card
        }
    } else {
        echo \'<p>No vehicles found.</p>\';
    }

} catch (PDOException $e) {
    echo \'<p style="color:red;">Database error: \' . $e->getMessage() . \'</p>\';
}
return;
';