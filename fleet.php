<div id="toast"></div>

<body class="destinations-page">

  <main class="main">

    <div class="page-title dark-background" data-aos="fade" style="background-image: url(assets/img/travel/showcase-8.webp);">
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

            function getDistanceInKm(text) {
                if (!text) return 0;
                if (text.includes("km")) return parseFloat(text.replace(" km",""));
                if (text.includes("m")) return parseFloat(text.replace(" m","")) / 1000;
                return 0;
            }

            function updateTotalPrice() {
                if (!distanceDisplay?.innerText) return 0;

                const distanceText = distanceDisplay.innerText;
                let km = 0;
                const match = distanceText.match(/Distance: ([\d,.]+ [km|m]+)/);
                if (match) {
                    if (match[1].includes("km")) km = parseFloat(match[1].replace(" km",""));
                    else if (match[1].includes("m")) km = parseFloat(match[1].replace(" m","")) / 1000;
                }

                // Base vehicle price
                let total = km * (window.selectedVehiclePricePerKm || 0);

                // Add add-ons
                document.querySelectorAll(".addon:checked").forEach(cb => {
                    const rate = parseFloat(cb.dataset.rate) || 0;
                    const qtySelect = document.querySelector(`select[name="addons_qty[${cb.dataset.id}]"]`);
                    const qty = qtySelect ? parseInt(qtySelect.value) : 1;
                    total += rate * qty;
                });

                // Update display
                const totalPriceInput = document.getElementById("totalPrice");
                if (totalPriceInput) totalPriceInput.value = total ? "USD " + total.toFixed(2) : "";

                return total; // ✅ Return total including add-ons
            }

            document.body.addEventListener("click", function(e) {
                if (!e.target.classList.contains("select-vehicle-btn")) return;

                e.preventDefault();

                const btn = e.target;
                const vehicleCard = btn.closest(".vehicle-card");
                const vehicleId = btn.dataset.id;
                const name = btn.dataset.name;
                const pricePerKm = parseFloat(btn.dataset.price); 
                window.selectedVehiclePricePerKm = pricePerKm; 

                document.querySelectorAll(".vehicle-card").forEach(card => card.classList.remove("selected"));
                if (vehicleCard) vehicleCard.classList.add("selected");

                const pickupLocation = document.querySelector("#pickupLocation")?.value || "Colombo";
                const dropoffLocation = document.querySelector("#dropoffLocation")?.value || "Kandy";
                const travelDate = document.querySelector("#date")?.value || null;

                const totalPrice = updateTotalPrice(); 

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
                        <div class="form-group" style="display: flex; align-items: center; gap: 10px; flex: 1;">

                            <!-- Country dropdown -->
                            <div style="flex: 0 0 40%;">
                                [[!ShowCountries]]
                            </div>

                            <!-- Phone input -->
                            <input type="tel" name="phone" placeholder="Phone Number" required style="flex: 1; padding: 10px; border: 1px solid #ccc; border-radius: 6px;">
                        </div>

                        <div class="form-row">
                            <div class="form-group" style="flex:1;">
                                <input type="text" name="flightNumber" placeholder="Flight Number" required>
                            </div>
                            <div class="form-group" style="flex:1;">
                                <input type="time" name="arrivalTime" placeholder="Flight Arrival Time" required>
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

                // Handle form submit
                document.getElementById("bookingForm").addEventListener("submit", async function(ev) {
                    ev.preventDefault();

                    const addons = [];
                    document.querySelectorAll(".addon:checked").forEach(cb => {
                        const qtySelect = document.querySelector(`select[name="addons_qty[${cb.dataset.id}]"]`);
                        const qty = qtySelect ? parseInt(qtySelect.value) : 1;
                        addons.push({
                            addon_name: cb.dataset.addon_name || cb.dataset.id,
                            quantity: qty
                        });
                    });

                    const selectedCountryCode = this.country?.value || "";
                    const fullPhone = selectedCountryCode ? `${selectedCountryCode} ${this.phone.value}` : this.phone.value;

                    const formData = {
                        vehicle_id: vehicleId,
                        vehicle_category: name,
                        price: parseFloat(updateTotalPrice()),
                        customer_name: this.customerName.value,
                        email: this.email.value,
                        phone: fullPhone,
                        flight_number: this.flightNumber.value,
                        arrival_time: this.arrivalTime.value,
                        number_of_passengers: this.numPassengers.value,
                        number_of_luggage: this.numLuggage.value,
                        pickup_location: pickupLocation,
                        dropoff_location: dropoffLocation,
                        travel_datetime: travelDate,
                        addons: addons 
                    };

                    try {
                        const response = await fetch("assets/includes/save_booking.php", {
                            method: "POST",
                            headers: { "Content-Type": "application/json" },
                            body: JSON.stringify(formData)
                        });

                        if (!response.ok) throw new Error(await response.text());
                        const result = await response.json();

                        const showToast = (msg, success = true) => {
                            const toast = document.getElementById("toast");
                            toast.innerText = msg;
                            toast.style.backgroundColor = success ? "#28a745" : "#dc3545"; 
                            toast.className = "show";
                            setTimeout(() => toast.className = toast.className.replace("show",""), 3000);
                        };

                        if (result.success) {
                            const bookingNumber = result.booking_number || "N/A";
                            showToast("✅ Booking saved successfully!");

                            const { jsPDF } = window.jspdf;
                            const doc = new jsPDF({ format: "a5", unit: "pt" });

                            const pageWidth = doc.internal.pageSize.getWidth();
                            const pageHeight = doc.internal.pageSize.getHeight();

                            // === Header ===
                            const marginX = 25;

                            const imgUrl = "/transfers/images/logo.png";
                            doc.addImage(imgUrl, "PNG", pageWidth / 2 - 35, 20, 70, 35);
                            

                            doc.setDrawColor(200, 0, 0);
                            doc.setLineWidth(1);
                            doc.line(marginX, 65, pageWidth - marginX, 65);

                            doc.setFont("helvetica", "bold");
                            doc.setFontSize(12);
                            doc.setTextColor(0, 0, 0);
                            doc.text("SR Transfers, Sri Lanka", pageWidth / 2, 80, { align: "center" });

                            doc.setFont("helvetica", "normal");
                            doc.setFontSize(9);
                            doc.text("No. 37/15, Negombo Road, Seeduwa, Sri Lanka", pageWidth / 2, 95, { align: "center" });
                            doc.text("Phone: +94 77 778 6729 | info@srilankarentacar.lk", pageWidth / 2, 110, { align: "center" });
                            doc.text(`Invoice Number: ${bookingNumber}`, pageWidth / 2, 126, { align: "center" });

                            doc.setDrawColor(0, 0, 0);
                            doc.setLineWidth(0.8);
                            doc.line(marginX, 130, pageWidth - marginX, 130);

                            doc.setFont("helvetica", "bold");
                            doc.setFontSize(14);
                            doc.setTextColor(0, 0, 0); 
                            doc.text("Invoice", pageWidth / 2, 145, { align: "center" }); 

                            const tableColumn = ["Description", "Value"];
                            const tableRows = Object.keys(formData)
                            .filter(k => k !== "vehicle_id")
                            .map(k => {
                                let v = formData[k];
                                if (k === "addons" && Array.isArray(v)) {
                                v = v.map(a => `${a.addon_name} (x${a.quantity})`).join(", ");
                                }
                                if (k === "price" && v) v = `$ ${parseFloat(v).toFixed(2)}`;
                                const label = k.replace(/_/g, " ").replace(/\b\w/g, c => c.toUpperCase());
                                return [label, v || ""];
                            });

                            doc.autoTable({
                            head: [tableColumn],
                            body: tableRows,
                            startY: 155,
                            theme: "grid",
                            styles: { fontSize: 9, cellPadding: 4, textColor: 0 },
                            headStyles: { fillColor: [194, 0, 0], textColor: 255, halign: "center", fontStyle: "bold" },
                            columnStyles: {
                                0: { cellWidth: 120 },
                                1: { cellWidth: pageWidth - 120 - 2 * marginX }
                            },
                            margin: { left: marginX, right: marginX }
                            });

                            const tableEndY = doc.lastAutoTable.finalY + 10;

                            doc.setFont("helvetica", "bold");
                            doc.setFontSize(11);
                            doc.setTextColor(200, 0, 0);
                            doc.text(`Total Charge: $${parseFloat(formData.price || 0).toFixed(2)}`, marginX, tableEndY + 15);
                            doc.setFontSize(9);
                            doc.setTextColor(0, 0, 0);
                            doc.text("**Please note: A waiting charge of $15 per hour will apply in addition to the total.", marginX, tableEndY + 30);

                            doc.setFontSize(9);
                            doc.setTextColor(0, 102, 0);
                            doc.text("• Please note: This serves as your official booking confirmation.", marginX, tableEndY + 55);

                            doc.setFontSize(10);
                            doc.setTextColor(0, 0, 0);
                            doc.text("Thank you for booking with SR Transfers!", pageWidth / 2, pageHeight - 25, { align: "center" });

                            // === Save PDF ===
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
                            setTimeout(() => location.reload(), 2000);
                        }
 
                        else showToast("❌ Error: " + result.message, false);
                    } catch (err) {
                        console.error(err);
                        const showToast = (msg, success = true) => {
                            const toast = document.getElementById("toast");
                            toast.innerText = msg;
                            toast.style.backgroundColor = success ? "#28a745" : "#dc3545"; 
                            toast.className = "show";
                            setTimeout(() => toast.className = toast.className.replace("show",""), 3000);
                        };
                        showToast("⚠️ Something went wrong while submitting the booking.", false);
                    }
                });
            });
        });
    </script>
</main>
</body>
</html>
