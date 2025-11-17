<style>
    .faq-wrapper {
        display: grid;
        grid-template-columns: 1fr 2fr;
        gap: 40px;
        align-items: start;
    }

    .faq-sidebar {
        position: sticky;
        top: 20px;
    }

    .faq-image {
        border-radius: 12px;
        margin-bottom: 30px;
    }

    .faq-image img {
        width: 100%;
        height: auto;
        border-radius: 8px;
    }

    .contact-box {
        background: #008cad;
        color: white;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
    }

    .contact-box h3 {
        font-size: 1.5rem;
        margin-bottom: 15px;
        display: flex;
        align-items: center;
        gap: 10px;
        color: white;
        font-weight: 700;
    }

    .contact-box p {
        margin-bottom: 20px;
        opacity: 0.95;
    }

    .btn-contact {
        display: inline-block;
        background: white;
        color: #667eea;
        padding: 12px 30px;
        border-radius: 25px;
        text-decoration: none;
        font-weight: 600;
        transition: transform 0.3s ease;
    }

    .btn-contact:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 12px rgba(255, 255, 255, 0.3);
    }

    /* Tabs */
    .faq-tabs {
        background: white;
        border-radius: 12px;
        padding: 30px;
        box-shadow: 0 2px 15px rgba(0, 0, 0, 0.08);
    }

    .nav-pills {
        display: flex;
        gap: 10px;
        margin-bottom: 30px;
        border-bottom: 2px solid #e9ecef;
        padding-bottom: 10px;
        flex-wrap: wrap;
    }

    .nav-pills button {
        background: transparent;
        border: none;
        padding: 12px 24px;
        border-radius: 8px;
        cursor: pointer;
        font-size: 0.95rem;
        font-weight: 500;
        color: #6c757d;
        transition: all 0.3s ease;
    }

    .nav-pills button:hover {
        background: #f8f9fa;
        color: #495057;
    }

    .nav-pills button.active {
        background: #008cad;
        color: white;
    }

    /* Accordion */
    .tab-content {
        display: none;
    }

    .tab-content.active {
        display: block;
    }

    .faq-item {
        margin-bottom: 15px;
        border: 1px solid #e9ecef;
        border-radius: 8px;
        overflow: hidden;
        transition: box-shadow 0.3s ease;
    }

    .faq-item:hover {
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    }

    .accordion-header {
        margin: 0;
    }

    .accordion-button {
        width: 100%;
        background: white;
        border: none;
        padding: 18px 20px;
        text-align: left;
        font-size: 1rem;
        font-weight: 600;
        color: #333;
        cursor: pointer;
        display: flex;
        justify-content: space-between;
        align-items: center;
        transition: background 0.3s ease;
    }

    .accordion-button:hover {
        background: #f8f9fa;
    }

    .accordion-button::after {
        content: '+';
        font-size: 1.5rem;
        font-weight: 300;
        transition: transform 0.3s ease;
    }

    .accordion-button.active::after {
        content: '−';
        transform: rotate(180deg);
    }

    .accordion-body {
        padding: 0 20px;
        max-height: 0;
        overflow: hidden;
        transition: all 0.3s ease;
        background: #f8f9fa;
    }

    .accordion-body.show {
        padding: 20px;
        max-height: 500px;
        padding-top: 0;
    }

    .accordion-body p {
        margin: 0;
        color: #6c757d;
        line-height: 1.7;
    }

    .accordion-body strong {
        color: #495057;
    }

    /* Responsive Design */
    @media (max-width: 968px) {
        .faq-wrapper {
            grid-template-columns: 1fr;
        }

        .faq-sidebar {
            position: static;
        }

        .page-title h1 {
            font-size: 2rem;
        }

        .nav-pills {
            flex-direction: column;
        }

        .nav-pills button {
            width: 100%;
            text-align: center;
        }
    }

    @media (max-width: 576px) {
        .page-title {
            padding: 60px 0 40px;
        }

        .page-title h1 {
            font-size: 1.75rem;
        }

        .faq-section {
            padding: 40px 0;
        }

        .faq-tabs {
            padding: 20px;
        }
    }
</style>

<body>
    <main>
        <div class="page-title dark-background" data-aos="fade" style="background-image: url(assets/img/travel/showcase-3.png);">
            <div class="container position-relative">
                    <h1>Frequently Asked Questions</h1>
                    <p>Got questions? We've got answers! Learn everything you need to know about our services.</p>
                    <nav class="breadcrumbs">
                        <ol>
                            <li><a href="[[~1]]">Home</a></li>
                            <li class="current">FAQ</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <!-- FAQ Section -->
            <section class="faq-section">
                <div class="container">
                    <div class="faq-wrapper">
                        <!-- Sidebar -->
                        <div class="faq-sidebar">
                            <div class="faq-image">
                                <img src="assets/img/illustration/illustration-5.webp" alt="FAQ Illustration">
                            </div>
                            <div class="contact-box">
                                <h3>
                                    <span>🎧</span> Need Assistance?
                                </h3>
                                <p>Have questions about bookings, routes, or pricing? Our team is here to help you with prompt and reliable support.</p>
                                <a href="[[~5]]" class="btn-contact">Connect with Support</a>
                            </div>
                        </div>
                        <div class="faq-tabs">
                            <!-- Tabs -->
                            <div class="nav-pills">
                                <button class="tab-button active" data-tab="general">General Inquiries</button>
                                <button class="tab-button" data-tab="booking">Booking & Reservations</button>
                                <button class="tab-button" data-tab="pricing">Payments & Policies</button>
                            </div>

                            <!-- GENERAL TAB -->
                            <div id="general-tab" class="tab-content active">
                                <div class="faq-item">
                                    <button class="accordion-button" data-target="q1">How do I book a transfer?</button>
                                    <div class="accordion-body" id="q1">
                                        <p>You can book a transfer easily through our website by selecting your pickup location, destination, date, and preferred vehicle type.</p>
                                    </div>
                                </div>

                                <div class="faq-item">
                                    <button class="accordion-button" data-target="q2">What types of vehicles are available?</button>
                                    <div class="accordion-body" id="q2">
                                        <p>We offer a range of vehicles including sedans, SUVs, vans, and luxury cars to suit your travel needs. You can choose your preferred vehicle when booking your transfer.</p>
                                    </div>
                                </div>

                                <div class="faq-item">
                                    <button class="accordion-button" data-target="q3">Can I cancel or reschedule my booking?</button>
                                    <div class="accordion-body" id="q3">
                                        <p>Yes, you can cancel or reschedule your booking. Please contact our support team at least 24 hours before your scheduled pickup to avoid any cancellation fees.</p>
                                    </div>
                                </div>

                                <div class="faq-item">
                                    <button class="accordion-button" data-target="q4">Is my personal data safe with SR Transfers?</button>
                                    <div class="accordion-body" id="q4">
                                        <p>Yes. We take data privacy seriously. Your personal and payment information is securely stored and used only for booking purposes. We never share your data with third parties.</p>
                                    </div>
                                </div>

                                <div class="faq-item">
                                    <button class="accordion-button" data-target="q5">How do I contact the driver or support team?</button>
                                    <div class="accordion-body" id="q5">
                                        <p>Once your booking is confirmed, you will receive the driver’s contact details. For any assistance, our support team is available via phone, email, or the “Connect with Support” button on our website.</p>
                                    </div>
                                </div>
                            </div>

                            <!-- BOOKING TAB -->
                            <div id="booking-tab" class="tab-content">
                                <div class="faq-item">
                                    <button class="accordion-button" data-target="q6">How far in advance should I book my transfer?</button>
                                    <div class="accordion-body" id="q6">
                                        <p>We recommend booking your transfer at least 24 hours in advance to ensure vehicle availability and timely confirmation. However, same-day bookings are accepted based on availability.</p>
                                    </div>
                                </div>
                                <div class="faq-item">
                                    <button class="accordion-button" data-target="q7">Can I change my pickup time or location after booking?</button>
                                    <div class="accordion-body" id="q7">
                                        <p>Yes, you can modify your pickup time or location by contacting our support team. Please inform us at least 12 hours before your scheduled pickup to update your booking without any extra charges.</p>
                                    </div>
                                </div>
                            </div>

                            <!-- PRICING TAB -->
                            <div id="pricing-tab" class="tab-content">
                                <div class="faq-item">
                                    <button class="accordion-button" data-target="q8">What payment methods do you accept?</button>
                                    <div class="accordion-body" id="q8">
                                        <p>We currently accept <strong>cash payments only</strong>. Please make your payment directly to the driver at the end of your transfer.</p>
                                    </div>
                                </div>
                                <div class="faq-item">
                                    <button class="accordion-button" data-target="q9">What is your cancellation and refund policy?</button>
                                    <div class="accordion-body" id="q9">
                                        <p>You can cancel your booking at least <strong>24 hours before</strong> your scheduled pickup time with no charges. Since we accept cash payments only, no online refund process is required. If you cancel after the driver has been dispatched, a small service fee may apply.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </main>

    <script>
        // TAB SWITCHING
        document.querySelectorAll('.tab-button').forEach(btn => {
            btn.addEventListener('click', () => {
                document.querySelectorAll('.tab-button').forEach(b => b.classList.remove('active'));
                document.querySelectorAll('.tab-content').forEach(c => c.classList.remove('active'));

                btn.classList.add('active');
                document.getElementById(btn.dataset.tab + '-tab').classList.add('active');
            });
        });

        document.querySelectorAll('.accordion-button').forEach(btn => {
            btn.addEventListener('click', () => {
                const tab = btn.closest('.tab-content');
                const body = document.getElementById(btn.dataset.target);

                // Close others
                tab.querySelectorAll('.accordion-button').forEach(b => b !== btn && b.classList.remove('active'));
                tab.querySelectorAll('.accordion-body').forEach(b => b !== body && b.classList.remove('show'));

                // Toggle clicked
                btn.classList.toggle('active');
                body.classList.toggle('show');
            });
        });
    </script>
</body>
