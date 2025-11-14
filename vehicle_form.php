<?php
$conn = include __DIR__ . '/assets/includes/db_connect.php';

// Initialize variables
$id = $name = $passengers = $suitcases = $price = $lead_time = $image = $description = '';
$editMode = false;

if (isset($_GET['id'])) {
    $stmt = $conn->prepare("SELECT * FROM vehicles WHERE id = ?");
    $stmt->execute([$_GET['id']]);
    $vehicle = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($vehicle) {
        $id = $vehicle['id'];
        $name = $vehicle['name'];
        $passengers = $vehicle['passengers'];
        $suitcases = $vehicle['suitcases'];
        $price = $vehicle['price'];
        $lead_time = $vehicle['lead_time'];
        $image = $vehicle['image'];
        $description = $vehicle['description'];
        $editMode = true;
    }
}

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = $_POST['name'];
    $passengers = $_POST['passengers'];
    $suitcases = $_POST['suitcases'];
    $price = $_POST['price'];
    $lead_time = $_POST['lead_time'];
    $description = $_POST['description'];

    // Handle image upload
    $uploadDir = 'C:/xampp/htdocs/transfers/images/navbar/'; 
    if (!is_dir($uploadDir)) mkdir($uploadDir, 0777, true);

    if (isset($_FILES['image']) && $_FILES['image']['tmp_name']) {
        $ext = pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
        $newFileName = uniqid() . '.' . $ext; 
        $fullPath = $uploadDir . $newFileName;

        if (move_uploaded_file($_FILES['image']['tmp_name'], $fullPath)) {
            $image = $newFileName; 
        } else {
            echo '<div style="color:red;">Error uploading image.</div>';
        }
    }

    if ($editMode) {
        $stmt = $conn->prepare("UPDATE vehicles SET name=?, passengers=?, suitcases=?, price=?, lead_time=?, image=?, description=? WHERE id=?");
        $stmt->execute([$name, $passengers, $suitcases, $price, $lead_time, $image, $description, $id]);
    } else {
        $stmt = $conn->prepare("INSERT INTO vehicles (name, passengers, suitcases, price, lead_time, image, description) VALUES (?, ?, ?, ?, ?, ?, ?)");
        $stmt->execute([$name, $passengers, $suitcases, $price, $lead_time, $image, $description]);
    }

    header("Location: vehicles.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title><?= $editMode ? 'Edit Vehicle' : 'Add Vehicle' ?></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<style>
body { background: #f4f6f8; font-family: "Cambria", sans-serif; }
.card { margin-top: 30px; padding: 20px; border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.08);}
label { font-weight: 600; }
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
                <h2 class="text-center fw-bold mb-4"><?= $editMode ? 'Edit Vehicle' : '+ Add New Vehicle' ?></h2>
                <form action="" method="post" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="name">Vehicle Category <span class="text-danger">*</span></label>
                        <input type="text" name="name" id="name" placeholder="Enter Vehicle Category" class="form-control" value="<?= htmlspecialchars($name) ?>" required>
                    </div>
                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label for="passengers">Passengers <span class="text-danger">*</span></label>
                            <input type="number" name="passengers" placeholder="Enter No of Passengers" id="passengers" class="form-control" value="<?= htmlspecialchars($passengers) ?>" required>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="suitcases">Suitcases <span class="text-danger">*</span></label>
                            <input type="number" name="suitcases" id="suitcases" placeholder="Enter No of Suitcases" class="form-control" value="<?= htmlspecialchars($suitcases) ?>" required>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="price">Price (USD) <span class="text-danger">*</span></label>
                            <input type="number" step="0.01" name="price" placeholder="Enter per Km Price" id="price" class="form-control" value="<?= htmlspecialchars($price) ?>" required>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="lead_time">Lead Time <span class="text-danger">*</span></label>
                        <input type="text" name="lead_time" id="lead_time" placeholder="Enter Lead Time" class="form-control" value="<?= htmlspecialchars($lead_time) ?>" required>
                    </div>
                    <div class="mb-3">
                        <label for="image">Vehicle Image</label>
                        <input type="file" name="image" id="image" class="form-control">
                        <?php if ($editMode && $image): ?>
                            <img src="images/navbar/<?= htmlspecialchars($image) ?>" width="120" class="mt-2">
                        <?php endif; ?>
                    </div>
                    <div class="mb-3">
                        <label for="description">Description</label>
                        <textarea name="description" id="description" rows="4" class="form-control"><?= htmlspecialchars($description) ?></textarea>
                    </div>
                    <div class="text-end">
                        <a href="vehicles.php" class="btn btn-secondary">Cancel</a>
                        <button type="submit" class="btn btn-primary"><?= $editMode ? 'Update Vehicle' : 'Add Vehicle' ?></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
