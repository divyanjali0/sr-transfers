<?php
    $conn = include __DIR__ . '/assets/includes/db_connect.php';

    $id = $addon_name = $rate = '';
    $editMode = false;

    if (isset($_GET['id'])) {
        $stmt = $conn->prepare("SELECT * FROM addons WHERE id=?");
        $stmt->execute([$_GET['id']]);
        $addon = $stmt->fetch(PDO::FETCH_ASSOC);
        if ($addon) {
            $id = $addon['id'];
            $addon_name = $addon['addon_name'];
            $rate = $addon['rate'];
            $editMode = true;
        }
    }

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $addon_name = $_POST['addon_name'];
        $rate = $_POST['rate'];

        if ($editMode) {
            $stmt = $conn->prepare("UPDATE addons SET addon_name=?, rate=? WHERE id=?");
            $stmt->execute([$addon_name, $rate, $id]);
        } else {
            $stmt = $conn->prepare("INSERT INTO addons (addon_name, rate) VALUES (?,?)");
            $stmt->execute([$addon_name, $rate]);
        }
        header("Location: addons.php");
        exit;
    }
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="icon" type="image/png" href="assets/images/logo.png">
        <title><?= $editMode ? 'Edit Addon' : 'Add Addon' ?></title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <style>
            body { background: #f4f6f8; font-family: "Cambria", sans-serif; }
            .card { margin-top: 30px; padding: 20px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.08); }
            label { font-weight: 600; }
        </style>
    </head>
    <body>
        <div class="d-flex">
            <?php include __DIR__ . '/assets/includes/sidebar.php'; ?>

            <div class="flex-grow-1">
                <div class="container">
                    <div class="card">
                        <h4 class="text-center fw-bold mb-4"><?= $editMode ? 'Edit Addon' : '+ Add New Addon' ?></h2>
                        <form action="" method="post">
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="addon_name">Addon Name <span class="text-danger">*</span></label>
                                    <input type="text" name="addon_name" id="addon_name" class="form-control" value="<?= htmlspecialchars($addon_name) ?>" required>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="rate">Rate (USD) <span class="text-danger">*</span></label>
                                    <input type="number" step="0.01" name="rate" id="rate" class="form-control" value="<?= htmlspecialchars($rate) ?>" required>
                                </div>
                            </div>
                            <div class="text-end">
                                <a href="addons.php" class="btn btn-secondary">Cancel</a>
                                <button type="submit" class="btn btn-primary"><?= $editMode ? 'Update Addon' : 'Add Addon' ?></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
