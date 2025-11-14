include_once MODX_BASE_PATH . 'assets/includes/db_connect.php';

try {
    $stmt = $conn->query("SELECT * FROM `vehicles` ORDER BY sort_order ASC");
    $vehicles = $stmt->fetchAll(PDO::FETCH_ASSOC);

    if ($vehicles) {
        foreach ($vehicles as $vehicle) {
            $hiddenClass = ($vehicle['id'] > 6) ? 'hidden-vehicle' : '';
            echo '<div class="vehicle-card-fleet ' . $hiddenClass . '">';
            
            // Vehicle image
            echo '<div class="vehicle-image">';
            echo '<img src="assets/img/vehicles/' . htmlspecialchars($vehicle['image']) . '" alt="' . htmlspecialchars($vehicle['name']) . '" style="width:100%; border-radius:10px;">';
            echo '</div>';

            // Vehicle details
            echo '<div class="vehicle-details">';
            echo '<h5>' . htmlspecialchars($vehicle['name']) . '</h5>';
            echo '<p><i class="fa fa-user"></i> ' . intval($vehicle['passengers']) . ' Passengers</p>';
            echo '<p><i class="fa fa-suitcase"></i> ' . intval($vehicle['suitcases']) . ' Suitcases</p>';
            echo '</div>';

            // Vehicle price & total
            echo '<div class="vehicle-price text-end">';
            echo '<h4 class="estimated-total" id="total-price-' . intval($vehicle['id']) . '" style="font-weight:600;color:#04366b;display:none; font-size:18px;">Total: </h4>';
            echo '<p style="color:black; font-weight:600; margin-bottom:0;">$' . number_format($vehicle['price'], 2) . ' <small style="font-size:0.7em; font-weight:800; color:black;">per KM</small></p>';
            echo '<p class="text-success fw-bold">Free Cancellation</p>';

            // Select button
            echo '<button class="btn btn-primary mt-2 select-vehicle-btn"
                data-id="' . intval($vehicle['id']) . '"
                data-name="' . htmlspecialchars($vehicle['name']) . '"
                data-price="' . number_format($vehicle['price'], 2, '.', '') . '">
                Select Vehicle
            </button>';

            echo '</div>'; // vehicle-price
            echo '</div>'; // vehicle-card
        }
    } else {
        echo '<p>No vehicles found.</p>';
    }

} catch (PDOException $e) {
    echo '<p style="color:red;">Database error: ' . $e->getMessage() . '</p>';
}
?>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const pickupInput = document.getElementById("pickupLocation");
        const dropoffInput = document.getElementById("dropoffLocation");
        const returnPickup = document.getElementById("returnPickup");
        const returnDropoff = document.getElementById("returnDropoff");
        const roundtripCheck = document.getElementById("roundtripCheck");
        const distanceDisplay = document.getElementById("distanceResult");

        let mainDistance = 0, returnDistance = 0, mainDuration = '', returnDuration = '';
        let selectedVehicleId = null;

        function getDistance(origin, dest) {
            return new Promise(resolve => {
                if (!origin || !dest) return resolve({ km: 0, duration: '' });
                const service = new google.maps.DistanceMatrixService();
                service.getDistanceMatrix({
                    origins: [origin],
                    destinations: [dest],
                    travelMode: google.maps.TravelMode.DRIVING,
                    unitSystem: google.maps.UnitSystem.METRIC
                }, (response, status) => {
                    if (status === "OK") {
                        const elem = response.rows[0].elements[0];
                        if (elem.status === "OK") {
                            const km = parseFloat(elem.distance.text.replace(" km",""));
                            resolve({ km, duration: elem.duration.text });
                            return;
                        }
                    }
                    resolve({ km: 0, duration: '' });
                });
            });
        }

        async function calculateAll() {
            const mainOrigin = pickupInput.value.trim();
            const mainDest = dropoffInput.value.trim();
            if (!mainOrigin || !mainDest) return;

            const mainRes = await getDistance(mainOrigin, mainDest);
            mainDistance = mainRes.km;
            mainDuration = mainRes.duration;

            if (roundtripCheck.checked) {
                const retOrigin = returnPickup.value.trim();
                const retDest = returnDropoff.value.trim();
                if (retOrigin && retDest) {
                    const retRes = await getDistance(retOrigin, retDest);
                    returnDistance = retRes.km;
                    returnDuration = retRes.duration;
                } else {
                    returnDistance = 0;
                    returnDuration = '';
                }
            } else {
                returnDistance = 0;
                returnDuration = '';
            }

            updateDisplay();
            updateAllVehiclePrices();
        }

        function updateDisplay() {
            if (mainDistance <= 0) {
                distanceDisplay.style.display = 'none';
                return;
            }
            distanceDisplay.style.display = 'block';

            let html = '';
            if (roundtripCheck.checked && returnDistance > 0) {
                html += `<div style="display:flex; justify-content:space-around; gap:20px;">
                            <div>🚗 Main Trip: <strong>${mainDistance.toFixed(1)} km</strong> • ${mainDuration}</div>
                            <div>🔁 Return Trip: <strong>${returnDistance.toFixed(1)} km</strong> • ${returnDuration}</div>
                        </div>`;
                html += `<div style="text-align:center; margin-top:5px;">📏 Total Distance: <strong>${(mainDistance + returnDistance).toFixed(1)} km</strong></div>`;
            } else {
                html = `🚗 Main Trip: <strong>${mainDistance.toFixed(1)} km</strong> • ${mainDuration}`;
            }
            distanceDisplay.innerHTML = html;
        }

        function updateAllVehiclePrices() {
            if (mainDistance <= 0) return;
            const totalKm = mainDistance + returnDistance;

            document.querySelectorAll('.vehicle-card-fleet').forEach(card => {
                const pricePerKm = parseFloat(card.querySelector('.select-vehicle-btn').dataset.price) || 0;
                const total = totalKm * pricePerKm;
                const totalEl = card.querySelector('.estimated-total');
                if (totalEl) {
                    totalEl.innerHTML = 'Total: $ ' + total.toFixed(2);
                    totalEl.style.display = 'block';
                }

                // Highlight selected vehicle
                const vehicleId = card.querySelector('.select-vehicle-btn').dataset.id;
                if (vehicleId == selectedVehicleId) {
                    card.style.border = '2px solid #04366b';
                    card.style.boxShadow = '0 4px 15px rgba(0,0,0,0.2)';
                } else {
                    card.style.border = '1px solid #ddd';
                    card.style.boxShadow = '0 2px 6px rgba(0,0,0,0.1)';
                }
            });
        }

        // Handle vehicle selection
        document.querySelectorAll('.select-vehicle-btn').forEach(btn => {
            btn.addEventListener('click', function() {
                selectedVehicleId = this.dataset.id;
                updateAllVehiclePrices();
            });
        });

        // Recalculate distances on input changes
        [pickupInput, dropoffInput, returnPickup, returnDropoff].forEach(input => {
            input.addEventListener('change', calculateAll);
        });
        roundtripCheck.addEventListener('change', calculateAll);

        calculateAll(); 
    });
</script>

<?php return ''; ?>
