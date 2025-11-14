<?php
    $conn = include __DIR__ . '/assets/includes/db_connect.php';

    // Handle deletion
    if (isset($_GET['delete_id'])) {
        $deleteId = (int)$_GET['delete_id'];
        $stmt = $conn->prepare("DELETE FROM addons WHERE id = ?");
        $stmt->execute([$deleteId]);
        header("Location: addons.php");
        exit;
    }

    // Fetch all addons
    $stmt = $conn->query("SELECT * FROM addons ORDER BY id DESC");
    $addons = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="icon" type="image/png" href="assets/img/logo.png">
        <title>SR Transfers | Addons</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/2.1.2/css/dataTables.bootstrap5.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <style>
            body { background: #f4f6f8; font-family: "Cambria", sans-serif; }
            .container { max-width: 95%; }
            .card { padding: 20px; border-radius: 12px; margin-top: 40px; box-shadow: 0 4px 15px rgba(0,0,0,0.08); }
            table thead tr th { background-color: #000; color: #fff; }
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
                        <h2 class="text-center fw-bold mb-4">🚀 Addons</h2>
                        <div class="mb-3 text-end">
                            <a href="addon_form.php" class="btn btn-success">+ Add New Addon</a>
                        </div>
                        <div class="table-responsive">
                            <table id="addonsTable" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Addon Name</th>
                                        <th>Rate (USD)</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($addons as $i => $a): ?>
                                        <tr>
                                            <td><?= $i + 1 ?></td>
                                            <td><?= htmlspecialchars($a['addon_name']) ?></td>
                                            <td><?= number_format($a['rate'],2) ?></td>
                                            <td>
                                                <a href="addon_form.php?id=<?= $a['id'] ?>" class="btn btn-sm btn-primary">Edit</a>
                                                <?php if (isset($_SESSION['user_role']) && $_SESSION['user_role'] === 'admin'): ?>
                                                    <a href="addons.php?delete_id=<?= $a['id'] ?>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this addon?');">Delete</a>
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
                $('#addonsTable').DataTable({
                    pageLength: 10,
                    lengthMenu: [5, 10, 25, 50],
                    order: [[0, 'desc']],
                    responsive: true
                });
            });
        </script>
    </body>
</html>
