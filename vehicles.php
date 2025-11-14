<?php
    session_start();
    $conn = include __DIR__ . '/assets/includes/db_connect.php';

    if (isset($_POST['vehicle_id']) && isset($_POST['new_price'])) {
        $stmt = $conn->prepare("UPDATE vehicles SET price = ? WHERE id = ?");
        $stmt->execute([$_POST['new_price'], $_POST['vehicle_id']]);
        echo "success";
        exit;
    }

    $stmt = $conn->query("SELECT * FROM vehicles ORDER BY price ASC");
    $vehicles = $stmt->fetchAll();
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Vehicles Dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="assets/images/logo.png">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/2.1.2/css/dataTables.bootstrap5.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <style>
            body { background: #f4f6f8; font-family: "Cambria", sans-serif; }
            .card { margin-top: 30px; padding: 20px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.08);}
            table thead { background: #000; color: #fff; }
            .price-input { width: 100px; text-align: right; }
            .updated {
                background-color: #d1e7dd !important;
                transition: background-color 0.5s ease;
            }
            .toast-container {
                position: fixed;
                top: 20px;
                right: 20px;
                z-index: 2000;
            }
        </style>
    </head>
<body>

<div class="d-flex">
    <!-- Sidebar -->
    <?php include __DIR__ . '/assets/includes/sidebar.php'; ?>

    <!-- Main Content -->
    <div class="flex-grow-1">
        <div class="container">
            <div class="card">
                <h2 class="text-center fw-bold mb-4">🚗 Vehicles Management</h2>
                <div class="mb-3 text-end">
                    <a href="vehicle_form.php" class="btn btn-success">+ Add New Vehicle</a>
                </div>
                <div class="table-responsive">
                    <table id="vehiclesTable" class="table table-bordered table-striped align-middle">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Passengers</th>
                                <th>Suitcases</th>
                                <th>Price (USD)</th>
                                <th>Lead Time</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($vehicles as $i => $vehicle): ?>
                            <tr>
                                <td><?= $i + 1 ?></td>
                                <td><?= htmlspecialchars($vehicle['name']) ?></td>
                                <td><?= $vehicle['passengers'] ?></td>
                                <td><?= $vehicle['suitcases'] ?></td>
                                <td>
                                    <input type="number" step="0.01" class="form-control form-control-sm price-input"
                                        data-id="<?= $vehicle['id'] ?>"
                                        value="<?= htmlspecialchars($vehicle['price']) ?>">
                                </td>
                                <td><?= htmlspecialchars($vehicle['lead_time']) ?></td>
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="toast-container">
    <div id="successToast" class="toast align-items-center text-white bg-success border-0" role="alert">
        <div class="d-flex">
            <div class="toast-body">
                ✅ Price updated successfully!
            </div>
            <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast"></button>
        </div>
    </div>
    <div id="errorToast" class="toast align-items-center text-white bg-danger border-0" role="alert">
        <div class="d-flex">
            <div class="toast-body">
                ❌ Error updating price.
            </div>
            <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast"></button>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.datatables.net/2.1.2/js/dataTables.js"></script>
<script src="https://cdn.datatables.net/2.1.2/js/dataTables.bootstrap5.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>
    $(document).ready(function () {
        const successToast = new bootstrap.Toast(document.getElementById('successToast'));
        const errorToast = new bootstrap.Toast(document.getElementById('errorToast'));

        $('#vehiclesTable').DataTable({
            pageLength: 10,
            lengthMenu: [5, 10, 25, 50],
            order: [[4, 'asc']], 
            responsive: true
        });

        // Auto-save price change
        $('.price-input').on('change', function() {
            const input = $(this);
            const newPrice = parseFloat(input.val());
            const vehicleId = input.data('id');

            if (isNaN(newPrice) || newPrice < 0) {
                input.val('');
                errorToast.show();
                return;
            }

            $.post('vehicles.php', { vehicle_id: vehicleId, new_price: newPrice }, function(response) {
                if (response.trim() === 'success') {
                    input.addClass('updated');
                    successToast.show();

                    // ✅ Remove highlight and refresh after toast
                    setTimeout(() => {
                        input.removeClass('updated');
                        location.reload(); // Refresh the page
                    }, 1500); // wait 1.5 seconds before refreshing
                } else {
                    errorToast.show();
                }
            });
        });
    });
</script>

</body>
</html>
