<div id="toast"></div>

<body class="destinations-page">

  <main class="main">

    <div class="page-title dark-background" data-aos="fade" style="background-image: url(assets/img/travel/showcase-5.png);">
      <div class="container position-relative">
        <h1>Our Fleet</h1>
        <p>Explore our selection of reliable, comfortable vehicles for any trip.</p>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="[[~1]]">Home</a></li>
            <li class="current">Fleet</li>
          </ol>
        </nav>
      </div>
    </div>

    <section id="fleet" style="padding:5rem 0; background: #f8f9fa;">
        <div class="container">
            <div class="row fleet-row">

                <div class="col-md-6 vehicle-detail">
                    <div class="vehicle-list d-grid" style="gap: 20px; display:flex; flex-direction:column;">
                        [[!ShowVehicleData]]
                    </div>
                </div>

                <div class="col-md-6">
                    [[!ShowSearchData]]
                    <div id="selectedVehicle" class="mt-4" style="margin-top:2%;"></div>
                </div>
            </div>
        </div>
    </section>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.5.28/jspdf.plugin.autotable.min.js"></script>

    <style>
        #selectedVehicle .card {
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            padding: 7px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        #selectedVehicle .card:hover {
            transform: translateY(-3px);
            box-shadow: 0 12px 25px rgba(0,0,0,0.15);
        }

        #selectedVehicle .vehicle-info p {
            margin: 5px 0;
            font-size: 14px;
            margin-bottom: 0 !important;
        }

        .vehicle-selected-info {
            display: flex;
            gap: 15px;
            align-items: flex-start;
        }
        @media (max-width: 768px) {
            .vehicle-selected-info {
                flex-direction: column;
                align-items: center;
            }
        }
        .vehicle-selected-info img {
            width: 22rem;
            max-width: 100%;
            height: auto;
            border-radius: 8px;
        }
        .booking-form {
            background: #ffffff;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.1);
            padding: 18px;
            margin-top: 20px;
        }
        .booking-form h5 {
            margin-bottom: 10px !important;
            font-weight: 600;
            color: #333;
        }
        .booking-form .form-group {
            margin-bottom: 15px;
        }
        .booking-form input {
            width: 100%;
            padding: 10px 12px;
            border-radius: 10px;
            border: 1px solid #ddd;
            outline: none;
            transition: all 0.2s ease-in-out;
        }
        .booking-form input:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0,123,255,0.3);
        }
        .booking-form button {
            background: linear-gradient(180deg, #0a277d, #1b289da3);
            color: #fff;
            font-weight: 600;
            border: none;
            padding: 12px;
            border-radius: 10px;
            width: 100%;
            transition: background 0.3s ease, transform 0.2s ease;
        }
        .booking-form button:hover {
            background: linear-gradient(135deg, #0056d2, #003d99);
            transform: translateY(-2px);
        }
        .form-row {
            display: flex;
            gap: 10px;
        }
        @media (max-width: 768px) {
            .form-row {
                flex-direction: column;
            }
        }
    </style>

    <script>
        document.addEventListener("DOMContentLoaded", () => {

            const distanceDisplay = document.getElementById("distanceResult");
            const returnPickup = document.getElementById("returnPickup");
            const returnDropoff = document.getElementById("returnDropoff");

            // Update total price & collect add-ons
            function updateTotalPrice() {
                const mainDistance = parseFloat(distanceDisplay?.dataset.mainDistance || 0);
                const returnDistance = parseFloat(distanceDisplay?.dataset.returnDistance || 0);
                const pricePerKm = window.selectedVehiclePricePerKm || 0;

                let total = (mainDistance + returnDistance) * pricePerKm;

                const addons = [];
                document.querySelectorAll(".addon:checked").forEach(cb => {
                    const qtySelect = document.querySelector(`select[name="addons_qty[${cb.dataset.id}]"]`);
                    const qty = qtySelect ? parseInt(qtySelect.value) : 1;
                    const rate = parseFloat(cb.dataset.rate || 0);
                    const addonTotal = rate * qty;
                    total += addonTotal;

                    addons.push({ addon_name: cb.dataset.addon_name, quantity: qty, rate, total: addonTotal });
                });

                const totalPriceInput = document.getElementById("totalPrice");
                if (totalPriceInput) totalPriceInput.value = total ? "USD " + total.toFixed(2) : "";

                return { total, mainDistance, returnDistance, addons };
            }

            // Vehicle selection listener
            document.body.addEventListener("click", function(e) {
                if (!e.target.classList.contains("select-vehicle-btn")) return;

                e.preventDefault();

                const btn = e.target;
                const vehicleCard = btn.closest(".vehicle-card");
                const vehicleId = btn.dataset.id;
                const name = btn.dataset.name;
                const pricePerKm = parseFloat(btn.dataset.price || 0);
                window.selectedVehiclePricePerKm = pricePerKm;

                document.querySelectorAll(".vehicle-card").forEach(card => card.classList.remove("selected"));
                if (vehicleCard) vehicleCard.classList.add("selected");

                const pickupLocation = document.querySelector("#pickupLocation")?.value || "";
                const dropoffLocation = document.querySelector("#dropoffLocation")?.value || "";
                const travelDate = document.querySelector("#date")?.value || "";

                const { total, mainDistance, returnDistance, addons } = updateTotalPrice();

                // Render booking form
                const container = document.getElementById("selectedVehicle");
                container.innerHTML = `
                    <form class="booking-form" id="bookingForm">
                        <h5>Enter Your Details</h5>
                        <div class="form-group">
                            <input type="text" name="customerName" placeholder="Full Name" required>
                        </div>
                        <div class="form-group">
                            <input type="email" name="email" placeholder="Email Address" required>
                        </div>
                        <div class="form-group" style="display: flex; gap: 10px; flex: 1;">
                            <div style="flex: 0 0 40%;">[[!ShowCountries]]</div>
                            <input type="tel" name="phone" placeholder="Phone Number" required style="flex: 1; padding: 10px; border-radius: 6px;">
                        </div>
                        <div class="form-row">
                            <div class="form-group" style="flex:1;">
                                <input type="text" name="flightNumber" placeholder="Flight Number" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group" style="flex:1;">
                                <input type="number" name="numPassengers" min="1" placeholder="Number of Passengers" required>
                            </div>
                            <div class="form-group" style="flex:1;">
                                <input type="number" name="numLuggage" min="0" placeholder="Number of Suitcases" required>
                            </div>
                        </div>
                        <button type="submit">Submit Booking</button>
                    </form>
                `;

                // Form submit handler
                document.getElementById("bookingForm").addEventListener("submit", async function(ev) {
                    ev.preventDefault();
                    const submitBtn = this.querySelector('button[type="submit"]');
                    if (submitBtn) {
                        submitBtn.disabled = true;
                        submitBtn.innerText = "Submitting...";
                        submitBtn.style.backgroundColor = "#6c757d"; 
                    }

                    if (
                        !document.querySelector("#pickupLocation")?.value.trim() ||
                        !document.querySelector("#dropoffLocation")?.value.trim() ||
                        !document.querySelector("#date")?.value.trim()
                    ) {
                        const showToast = (msg, success = true) => {
                            const toast = document.getElementById("toast");
                            toast.innerText = msg;
                            toast.style.backgroundColor = "#dc3545";
                            toast.className = "show";
                            setTimeout(() => toast.className = toast.className.replace("show",""), 3000);
                        };

                        showToast("⚠️ Please enter pickup, dropoff and date before booking!", false);
                        return;
                    }

                    // Get latest distances from your Google Maps distance script
                    const mainDistance = parseFloat(distanceDisplay?.dataset.mainDistance || 0);
                    const returnDistance = parseFloat(distanceDisplay?.dataset.returnDistance || 0);
                    const pricePerKm = window.selectedVehiclePricePerKm || 0;

                    // Compute main, return, total
                    let mainPrice = mainDistance * pricePerKm;
                    let returnPrice = returnDistance * pricePerKm;
                    let total = mainPrice + returnPrice;

                    // Collect add-ons again
                    const addons = [];
                    document.querySelectorAll(".addon:checked").forEach(cb => {
                        const qtySelect = document.querySelector(`select[name="addons_qty[${cb.dataset.id}]"]`);
                        const qty = qtySelect ? parseInt(qtySelect.value) : 1;
                        const rate = parseFloat(cb.dataset.rate || 0);
                        const addonTotal = rate * qty;
                        total += addonTotal;
                        addons.push({ addon_name: cb.dataset.addon_name, quantity: qty, rate, total: addonTotal });
                    });

                    const selectedCountryCode = this.country?.value || "";
                    const fullPhone = selectedCountryCode ? `${selectedCountryCode} ${this.phone.value}` : this.phone.value;

                    const formData = {
                        vehicle_id: vehicleId,
                        vehicle_category: name,
                        customer_name: this.customerName.value,
                        email: this.email.value,
                        phone: fullPhone,
                        flight_number: this.flightNumber.value,
                        total_price: total,
                        number_of_passengers: this.numPassengers.value,
                        number_of_luggage: this.numLuggage.value,
                        main_distance_km: mainDistance,
                        main_price: mainPrice,
                        return_distance_km: returnDistance,
                        return_price: returnPrice,
                        addons: addons,
                        pickup_location: document.querySelector("#pickupLocation")?.value || "",
                        dropoff_location: document.querySelector("#dropoffLocation")?.value || "",
                        return_pickup_location: returnPickup?.value || "",
                        return_dropoff_location: returnDropoff?.value || "",
                        travel_datetime: document.querySelector("#date")?.value || "",
                        return_datetime: document.querySelector("#returnDate")?.value || "",   
                    };

                    try {
                        const response = await fetch("assets/includes/save_booking.php", {
                            method: "POST",
                            headers: { "Content-Type": "application/json" },
                            body: JSON.stringify(formData)
                        });

                        if (!response.ok) throw new Error(await response.text());
                        const result = await response.json();
                        console.log("Server response:", result);

                        const showToast = (msg, success = true) => {
                            const toast = document.getElementById("toast");
                            toast.innerText = msg;
                            toast.style.backgroundColor = success ? "#28a745" : "#dc3545"; 
                            toast.className = "show";
                            setTimeout(() => toast.className = toast.className.replace("show",""), 3000);
                        };

                        if (result.success) {
                            const bookingNumber = result.booking_number;

                            showToast("✅ Booking saved successfully!");

                            const { jsPDF } = window.jspdf;
                            const doc = new jsPDF({ format: "a5", unit: "pt" });

                            const pageWidth = doc.internal.pageSize.getWidth();
                            const marginX = 25;
                            let currentY = 15; 

                            // === Header ===
                            const imgUrl = "assets/img/logo-pdf.png";
                            doc.addImage(imgUrl, "PNG", pageWidth / 2 - 35, currentY, 70, 35);
                            currentY += 38; 

                            doc.setDrawColor(0, 0, 128);
                            doc.setLineWidth(1);
                            doc.line(marginX, currentY, pageWidth - marginX, currentY);
                            currentY += 12; 

                            doc.setFont("cambria", "bold");
                            doc.setFontSize(11);
                            doc.text("SR Transfers, Sri Lanka", pageWidth / 2, currentY, { align: "center" });
                            currentY += 12;

                            doc.setFont("cambria", "normal");
                            doc.setFontSize(8);
                            doc.text("No. 37/15, Negombo Road, Seeduwa, Sri Lanka", pageWidth / 2, currentY, { align: "center" });
                            currentY += 12;
                            doc.text("Phone: +94 76 798 9878 | transfers@srilankarentacar.com", pageWidth / 2, currentY, { align: "center" });
                            currentY += 12;
                            doc.text(`Invoice Number: ${bookingNumber}`, pageWidth / 2, currentY, { align: "center" });
                            currentY += 10;

                            doc.setDrawColor(0, 0, 128);
                            doc.setLineWidth(0.8);
                            doc.line(marginX, currentY, pageWidth - marginX, currentY);
                            currentY += 12; 

                            // === Invoice title ===
                            doc.setFont("cambria", "bold");
                            doc.setFontSize(13);
                            doc.text("Invoice", pageWidth / 2, currentY, { align: "center" });
                            currentY += 6; 

                            // === Table ===
                            const tableColumn = ["Description", "Value"];
                            const tableRows = Object.keys(formData)
                                .filter(k => k !== "vehicle_id" && formData[k])
                                .map(k => {
                                    let v = formData[k];
                                    if (k === "addons" && Array.isArray(v)) {
                                        v = v.map(a => `${a.addon_name} (x${a.quantity})`).join(", ");
                                    }
                                    if (["price", "total_price", "main_price", "return_price"].includes(k) && v) {
                                        v = `$ ${parseFloat(v).toFixed(2)}`;
                                    }
                                    const label = k.replace(/_/g, " ").replace(/\b\w/g, c => c.toUpperCase());
                                    return [label, v || ""];
                                });

                            doc.autoTable({
                                head: [tableColumn],
                                body: tableRows,
                                startY: currentY,
                                theme: "grid",

                                styles: { fontSize: 8, cellPadding: 2, font: "cambria",  textColor: [0, 0, 0] },
                                headStyles: { fillColor: [10, 105, 168], textColor: 255, halign: "center", fontStyle: "bold", font: "cambria" },
                                columnStyles: {
                                    0: { cellWidth: 100 },
                                    1: { cellWidth: pageWidth - 100 - 2 * marginX }
                                },
                                margin: { left: marginX, right: marginX },
                                tableLineWidth: 0.5
                            });

                            let tableEndY = doc.lastAutoTable.finalY + 20;
                            currentY = tableEndY;

                            const maxWidth = pageWidth - 2 * marginX;

                            // =========================
                            // SECTION TITLE
                            // =========================
                            doc.setFont("cambria", "bold");
                            doc.setFontSize(10);
                            doc.setTextColor(0, 0, 0);
                            doc.text("TERMS & CONDITIONS", marginX, currentY);
                            currentY += 10;

                            // underline
                            doc.setDrawColor(0, 0, 0);
                            doc.setLineWidth(0.6);
                            doc.line(marginX, currentY, pageWidth - marginX, currentY);
                            currentY += 12;

                            doc.setFont("cambria", "normal");
                            doc.setFontSize(9);

                            function bullet(text) {
                                const bulletPoint = "• ";
                                const wrapped = doc.splitTextToSize(text, maxWidth - 10);

                                // red bullet
                                doc.setTextColor(220, 0, 0);
                                doc.text(bulletPoint, marginX, currentY);

                                // black text
                                doc.setTextColor(0, 0, 0);
                                doc.text(wrapped, marginX + 10, currentY);

                                currentY += wrapped.length * 11 + 6;
                            }

                            bullet("Complimentary Waiting Time: First hour of waiting is free of charge. Thereafter, a waiting fee of $15 per hour applies.");
                            bullet("Airport Meet & Greet: One of our Airport Representatives will be at the arrival hall (in front of the Information Center) holding a signboard with your name near Exit Gate SL.");
                            bullet("Contact Information: Please contact our airport representative at +94 76 669 9877. They will hand you over to the driver.");

                            currentY += 8;
                            doc.setDrawColor(0, 0, 0);
                            doc.setLineWidth(0.6);
                            doc.line(marginX, currentY, pageWidth - marginX, currentY);
                            currentY += 18;

                            // =========================
                            // TOTAL CHARGE
                            // =========================
                            doc.setFont("cambria", "bold");
                            doc.setFontSize(10);
                            doc.setTextColor(0, 0, 0);
                            doc.text("TOTAL CHARGE : ", marginX, currentY);

                            doc.setTextColor(200, 0, 0);
                            doc.text(`$ ${parseFloat(formData.total_price || 0).toFixed(2)}`, pageWidth - marginX, currentY, {
                                align: "right"
                            });

                            currentY += 20;

                            doc.setFont("cambria", "bold");
                            doc.setFontSize(9);
                            doc.setTextColor(3, 26, 56);
                            // doc.text("This serves as your official booking confirmation.", marginX, currentY);

                            currentY += 20;

                            // === Footer ===
                            doc.setFont("cambria", "bold");
                            doc.setFontSize(9);
                            doc.setTextColor(0, 0, 0);
                            doc.text("Thank you for booking with SR Transfers!", pageWidth / 2, doc.internal.pageSize.getHeight() - 20, { align: "center" });

                            doc.save(`${formData.customer_name}_invoice.pdf`);
                            const pdfBlob = doc.output("blob");
                            const formDataPdf = new FormData();
                            formDataPdf.append("invoice", pdfBlob, `${bookingNumber}.pdf`);
                            formDataPdf.append("booking_number", bookingNumber);

                            await fetch("assets/includes/save_invoice.php", {
                                method: "POST",
                                body: formDataPdf
                            });
                            this.reset();
                            setTimeout(() => location.reload(), 1000);
                        } else {
                            showToast("❌ Error: " + result.message, false);
                        }

                    } catch (err) {
                        console.error("Error submitting booking:", err);
                        const showToast = (msg, success = true) => {
                            const toast = document.getElementById("toast");
                            toast.innerText = msg;
                            toast.style.backgroundColor = success ? "#28a745" : "#dc3545"; 
                            toast.className = "show";
                            setTimeout(() => toast.className = toast.className.replace("show",""), 1000);
                        };
                        showToast("⚠️ Something went wrong while submitting the booking.", false);
                    }  finally {
                        if (submitBtn) {
                            submitBtn.disabled = false;
                            submitBtn.innerText = "Submit Booking";
                        }
                    }
                });
            });
        });
    </script>

</main>
</body>
</html>
