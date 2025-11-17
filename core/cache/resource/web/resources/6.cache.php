<?php  return array (
  'resourceClass' => 'MODX\\Revolution\\modDocument',
  'resource' => 
  array (
    'id' => 6,
    'type' => 'document',
    'pagetitle' => 'FAQ',
    'longtitle' => '',
    'description' => '',
    'alias' => 'faq',
    'link_attributes' => '',
    'published' => 1,
    'pub_date' => 0,
    'unpub_date' => 0,
    'parent' => 0,
    'isfolder' => 0,
    'introtext' => '',
    'content' => '<style>
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
        content: \'+\';
        font-size: 1.5rem;
        font-weight: 300;
        transition: transform 0.3s ease;
    }

    .accordion-button.active::after {
        content: \'−\';
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
                    <p>Got questions? We\'ve got answers! Learn everything you need to know about our services.</p>
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
        document.querySelectorAll(\'.tab-button\').forEach(btn => {
            btn.addEventListener(\'click\', () => {
                document.querySelectorAll(\'.tab-button\').forEach(b => b.classList.remove(\'active\'));
                document.querySelectorAll(\'.tab-content\').forEach(c => c.classList.remove(\'active\'));

                btn.classList.add(\'active\');
                document.getElementById(btn.dataset.tab + \'-tab\').classList.add(\'active\');
            });
        });

        document.querySelectorAll(\'.accordion-button\').forEach(btn => {
            btn.addEventListener(\'click\', () => {
                const tab = btn.closest(\'.tab-content\');
                const body = document.getElementById(btn.dataset.target);

                // Close others
                tab.querySelectorAll(\'.accordion-button\').forEach(b => b !== btn && b.classList.remove(\'active\'));
                tab.querySelectorAll(\'.accordion-body\').forEach(b => b !== body && b.classList.remove(\'show\'));

                // Toggle clicked
                btn.classList.toggle(\'active\');
                body.classList.toggle(\'show\');
            });
        });
    </script>
</body>
',
    'richtext' => 1,
    'template' => 2,
    'menuindex' => 5,
    'searchable' => 1,
    'cacheable' => 1,
    'createdby' => 1,
    'createdon' => 1762929996,
    'editedby' => 1,
    'editedon' => 1763378901,
    'deleted' => 0,
    'deletedon' => 0,
    'deletedby' => 0,
    'publishedon' => 1762930200,
    'publishedby' => 1,
    'menutitle' => '',
    'content_dispo' => 0,
    'hidemenu' => 0,
    'class_key' => 'MODX\\Revolution\\modDocument',
    'context_key' => 'web',
    'content_type' => 1,
    'uri' => '',
    'uri_override' => 0,
    'hide_children_in_tree' => 0,
    'show_in_tree' => 1,
    'properties' => NULL,
    'alias_visible' => 1,
    '_content' => '<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>SR Transfers (Pvt) Ltd</title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
</head>

 <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>
<header class="header">
    <!-- Topbar -->
    <div class="topbar text-center">
        <p class="mb-0">
  <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" style="color:white; text-decoration: none;">
    <i class="fa fa-map-marker" style="color:orange; margin-right:2px;"></i> SR Transfers, Seeduwa | Sri Lanka
  </a>
  &nbsp;|&nbsp;
  <a href="tel:+94777786729" style="color:white; text-decoration: none;">
    <i class="fa fa-phone" style="color:orange; margin-right:2px;"></i> +94 77 778 6729
  </a>
  &nbsp;|&nbsp;
  <a href="mailto:info@srilankarentacar.lk" style="color:white; text-decoration: none;">
    <i class="fa fa-envelope" style="color:orange; margin-right:2px;"></i> info@srilankarentacar.lk
  </a>
</p>

    </div>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light" id="mainNavbar">
        <div class="container">
<a class="navbar-brand" href="index.html">
    <!-- Default Logo -->
    <img src="assets/img/logo.png" class="logo-default" alt="Logo">

    <!-- Scrolled Logo -->
    <img src="assets/img/logo-hover.png" class="logo-scrolled" alt="Scrolled Logo">
</a>


            <!-- Offcanvas Toggle -->
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#mobileMenu">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Offcanvas Menu -->
            <div class="offcanvas offcanvas-start text-bg-dark" tabindex="-1" id="mobileMenu">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title">
                        <img src="assets/img/logo.png" alt="Logo" style="width:100px;">
                    </h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"></button>
                </div>
                <div class="offcanvas-body mobile-scrollable">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="index.php?id=1">HOME</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">FLEET</a>
                            <div class="dropdown-menu fleet-menu p-3 bg-transparent border-0">
                                <div class="fleet-container">
                                    <!-- Fleet Items -->
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/1.png" alt="Standard Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Standard Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/6.png" alt="Executive Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Executive Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/3.png" alt="Luxury Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/2.png" alt="People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">People Carrier</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/5.png" alt="Large People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Large People Carrier</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/4.png" alt="Luxury Coach" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury Coach</p>
                                    </div>
                                </div>
                                <div class="text-center mt-3">
                                    <a href="index.php?id=7" class="btn btn-primary fleet-button">Explore Our Fleet</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="index.php?id=3">DESTINATIONS</a></li>
                        <li class="nav-item"><a class="nav-link" href="index.php?id=2">ABOUT US</a></li>
                        <li class="nav-item"><a class="nav-link" href="index.php?id=6">FAQ</a></li>
                        <li class="nav-item"><a class="nav-link" href="index.php?id=5">CONTACT US</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>

<script>
    window.addEventListener(\'scroll\', function() {
        const header = document.querySelector(\'.header\');
            if (window.scrollY > 50) {
            header.classList.add(\'scrolled\');
            } else {
            header.classList.remove(\'scrolled\');
        }
    });
</script>


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
        content: \'+\';
        font-size: 1.5rem;
        font-weight: 300;
        transition: transform 0.3s ease;
    }

    .accordion-button.active::after {
        content: \'−\';
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
                    <p>Got questions? We\'ve got answers! Learn everything you need to know about our services.</p>
                    <nav class="breadcrumbs">
                        <ol>
                            <li><a href="index.php?id=1">Home</a></li>
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
                                <a href="index.php?id=5" class="btn-contact">Connect with Support</a>
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
        document.querySelectorAll(\'.tab-button\').forEach(btn => {
            btn.addEventListener(\'click\', () => {
                document.querySelectorAll(\'.tab-button\').forEach(b => b.classList.remove(\'active\'));
                document.querySelectorAll(\'.tab-content\').forEach(c => c.classList.remove(\'active\'));

                btn.classList.add(\'active\');
                document.getElementById(btn.dataset.tab + \'-tab\').classList.add(\'active\');
            });
        });

        document.querySelectorAll(\'.accordion-button\').forEach(btn => {
            btn.addEventListener(\'click\', () => {
                const tab = btn.closest(\'.tab-content\');
                const body = document.getElementById(btn.dataset.target);

                // Close others
                tab.querySelectorAll(\'.accordion-button\').forEach(b => b !== btn && b.classList.remove(\'active\'));
                tab.querySelectorAll(\'.accordion-body\').forEach(b => b !== body && b.classList.remove(\'show\'));

                // Toggle clicked
                btn.classList.toggle(\'active\');
                body.classList.toggle(\'show\');
            });
        });
    </script>
</body>

  <footer id="footer" class="footer position-relative dark-background">

    <div class="footer-newsletter">
      <div class="container">
        <div class="row justify-content-center text-center">
          <div class="col-lg-6">
            <h4>Join Our Newsletter</h4>
            <p>Join our newsletter to get the latest news, airport transfer promotions, and travel updates across Sri Lanka.</p>
            <form action="forms/newsletter.php" method="post" class="php-email-form">
              <div class="newsletter-form"><input type="email" name="email"><input type="submit" value="Subscribe"></div>
              <div class="loading">Loading</div>
              <div class="error-message"></div>
              <div class="sent-message">Your subscription request has been sent. Thank you!</div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="container footer-top">
      <div class="row gy-4">
        <div class="col-lg-4 col-md-6 footer-about">
          <a href="index.php?id=1" class="d-flex align-items-center mb-2">
            <img src="assets/img/logo.png" alt="Tour Logo" class="logo me-2" style="height:40px;">
          </a>
          <div class="footer-contact pt-3">
            <p>SR Transfers (Pvt) Ltd</p>
            <p>
                <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" rel="noopener" class="text-decoration-none">
                371-5,<br>
                Negombo - Colombo Main Rd,<br>
                Seeduwa, Sri Lanka
                </a>
            </p>
            <p class="mt-3">
                <strong>Phone :</strong>
                <a href="tel:+94777786729" class="text-decoration-none"> +94 77 778 6729</a>
            </p>            
            <p>
                <strong>Email :</strong>
                <a href="mailto:info@srilankarentacar.lk" class="text-decoration-none"> info@srilankarentacar.lk</a>
            </p>          
        </div>
        </div>

        <div class="col-lg-4 col-md-3 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=1">Home</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=3">Destinations</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=2">About Us</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=6">FAQ</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=5">Contact Us</a></li>
          </ul>
        </div>

        <div class="col-lg-4 col-md-12">
          <h4>Follow Us</h4>
          <div class="social-links d-flex">
            <a href="https://www.facebook.com/srrentacar"><i class="bi bi-facebook"></i></a>
            <a href="https://www.instagram.com/srrentacarsrilanka/"><i class="bi bi-instagram"></i></a>
            <a href="https://www.linkedin.com/company/sr-rent-a-car/"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

      </div>
    </div>

    <div class="container copyright text-center mt-4">
      <p>© <strong class="px-1 sitename">2025 SR Transfers (Pvt) Ltd</strong> <span>All Rights Reserved</span></p>
    </div>

  </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>',
    '_isForward' => false,
  ),
  'contentType' => 
  array (
    'id' => 1,
    'name' => 'HTML',
    'description' => 'HTML content',
    'mime_type' => 'text/html',
    'file_extensions' => '.html',
    'icon' => '',
    'headers' => NULL,
    'binary' => 0,
  ),
  'policyCache' => 
  array (
  ),
  'elementCache' => 
  array (
    '[[$header?]]' => '<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>SR Transfers (Pvt) Ltd</title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
</head>

 <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>',
    '[[~1]]' => 'index.php?id=1',
    '[[~7]]' => 'index.php?id=7',
    '[[~3]]' => 'index.php?id=3',
    '[[~2]]' => 'index.php?id=2',
    '[[~6]]' => 'index.php?id=6',
    '[[~5]]' => 'index.php?id=5',
    '[[$navbar?]]' => '<header class="header">
    <!-- Topbar -->
    <div class="topbar text-center">
        <p class="mb-0">
  <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" style="color:white; text-decoration: none;">
    <i class="fa fa-map-marker" style="color:orange; margin-right:2px;"></i> SR Transfers, Seeduwa | Sri Lanka
  </a>
  &nbsp;|&nbsp;
  <a href="tel:+94777786729" style="color:white; text-decoration: none;">
    <i class="fa fa-phone" style="color:orange; margin-right:2px;"></i> +94 77 778 6729
  </a>
  &nbsp;|&nbsp;
  <a href="mailto:info@srilankarentacar.lk" style="color:white; text-decoration: none;">
    <i class="fa fa-envelope" style="color:orange; margin-right:2px;"></i> info@srilankarentacar.lk
  </a>
</p>

    </div>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light" id="mainNavbar">
        <div class="container">
<a class="navbar-brand" href="index.html">
    <!-- Default Logo -->
    <img src="assets/img/logo.png" class="logo-default" alt="Logo">

    <!-- Scrolled Logo -->
    <img src="assets/img/logo-hover.png" class="logo-scrolled" alt="Scrolled Logo">
</a>


            <!-- Offcanvas Toggle -->
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#mobileMenu">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Offcanvas Menu -->
            <div class="offcanvas offcanvas-start text-bg-dark" tabindex="-1" id="mobileMenu">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title">
                        <img src="assets/img/logo.png" alt="Logo" style="width:100px;">
                    </h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"></button>
                </div>
                <div class="offcanvas-body mobile-scrollable">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="index.php?id=1">HOME</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">FLEET</a>
                            <div class="dropdown-menu fleet-menu p-3 bg-transparent border-0">
                                <div class="fleet-container">
                                    <!-- Fleet Items -->
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/1.png" alt="Standard Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Standard Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/6.png" alt="Executive Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Executive Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/3.png" alt="Luxury Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/2.png" alt="People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">People Carrier</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/5.png" alt="Large People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Large People Carrier</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/4.png" alt="Luxury Coach" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury Coach</p>
                                    </div>
                                </div>
                                <div class="text-center mt-3">
                                    <a href="index.php?id=7" class="btn btn-primary fleet-button">Explore Our Fleet</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="index.php?id=3">DESTINATIONS</a></li>
                        <li class="nav-item"><a class="nav-link" href="index.php?id=2">ABOUT US</a></li>
                        <li class="nav-item"><a class="nav-link" href="index.php?id=6">FAQ</a></li>
                        <li class="nav-item"><a class="nav-link" href="index.php?id=5">CONTACT US</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>

<script>
    window.addEventListener(\'scroll\', function() {
        const header = document.querySelector(\'.header\');
            if (window.scrollY > 50) {
            header.classList.add(\'scrolled\');
            } else {
            header.classList.remove(\'scrolled\');
        }
    });
</script>

',
    '[[$footer?]]' => '  <footer id="footer" class="footer position-relative dark-background">

    <div class="footer-newsletter">
      <div class="container">
        <div class="row justify-content-center text-center">
          <div class="col-lg-6">
            <h4>Join Our Newsletter</h4>
            <p>Join our newsletter to get the latest news, airport transfer promotions, and travel updates across Sri Lanka.</p>
            <form action="forms/newsletter.php" method="post" class="php-email-form">
              <div class="newsletter-form"><input type="email" name="email"><input type="submit" value="Subscribe"></div>
              <div class="loading">Loading</div>
              <div class="error-message"></div>
              <div class="sent-message">Your subscription request has been sent. Thank you!</div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="container footer-top">
      <div class="row gy-4">
        <div class="col-lg-4 col-md-6 footer-about">
          <a href="index.php?id=1" class="d-flex align-items-center mb-2">
            <img src="assets/img/logo.png" alt="Tour Logo" class="logo me-2" style="height:40px;">
          </a>
          <div class="footer-contact pt-3">
            <p>SR Transfers (Pvt) Ltd</p>
            <p>
                <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" rel="noopener" class="text-decoration-none">
                371-5,<br>
                Negombo - Colombo Main Rd,<br>
                Seeduwa, Sri Lanka
                </a>
            </p>
            <p class="mt-3">
                <strong>Phone :</strong>
                <a href="tel:+94777786729" class="text-decoration-none"> +94 77 778 6729</a>
            </p>            
            <p>
                <strong>Email :</strong>
                <a href="mailto:info@srilankarentacar.lk" class="text-decoration-none"> info@srilankarentacar.lk</a>
            </p>          
        </div>
        </div>

        <div class="col-lg-4 col-md-3 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=1">Home</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=3">Destinations</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=2">About Us</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=6">FAQ</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="index.php?id=5">Contact Us</a></li>
          </ul>
        </div>

        <div class="col-lg-4 col-md-12">
          <h4>Follow Us</h4>
          <div class="social-links d-flex">
            <a href="https://www.facebook.com/srrentacar"><i class="bi bi-facebook"></i></a>
            <a href="https://www.instagram.com/srrentacarsrilanka/"><i class="bi bi-instagram"></i></a>
            <a href="https://www.linkedin.com/company/sr-rent-a-car/"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

      </div>
    </div>

    <div class="container copyright text-center mt-4">
      <p>© <strong class="px-1 sitename">2025 SR Transfers (Pvt) Ltd</strong> <span>All Rights Reserved</span></p>
    </div>

  </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>',
  ),
  'sourceCache' => 
  array (
    'MODX\\Revolution\\modChunk' => 
    array (
      'header' => 
      array (
        'fields' => 
        array (
          'id' => 2,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'header',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => '<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>SR Transfers (Pvt) Ltd</title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
</head>

 <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>SR Transfers (Pvt) Ltd</title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
</head>

 <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>

  <!-- Main JS File -->
  <script src="assets/js/main.js"></script>',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'MODX\\Revolution\\Sources\\modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
      'navbar' => 
      array (
        'fields' => 
        array (
          'id' => 3,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'navbar',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => '<header class="header">
    <!-- Topbar -->
    <div class="topbar text-center">
        <p class="mb-0">
  <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" style="color:white; text-decoration: none;">
    <i class="fa fa-map-marker" style="color:orange; margin-right:2px;"></i> SR Transfers, Seeduwa | Sri Lanka
  </a>
  &nbsp;|&nbsp;
  <a href="tel:+94777786729" style="color:white; text-decoration: none;">
    <i class="fa fa-phone" style="color:orange; margin-right:2px;"></i> +94 77 778 6729
  </a>
  &nbsp;|&nbsp;
  <a href="mailto:info@srilankarentacar.lk" style="color:white; text-decoration: none;">
    <i class="fa fa-envelope" style="color:orange; margin-right:2px;"></i> info@srilankarentacar.lk
  </a>
</p>

    </div>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light" id="mainNavbar">
        <div class="container">
<a class="navbar-brand" href="index.html">
    <!-- Default Logo -->
    <img src="assets/img/logo.png" class="logo-default" alt="Logo">

    <!-- Scrolled Logo -->
    <img src="assets/img/logo-hover.png" class="logo-scrolled" alt="Scrolled Logo">
</a>


            <!-- Offcanvas Toggle -->
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#mobileMenu">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Offcanvas Menu -->
            <div class="offcanvas offcanvas-start text-bg-dark" tabindex="-1" id="mobileMenu">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title">
                        <img src="assets/img/logo.png" alt="Logo" style="width:100px;">
                    </h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"></button>
                </div>
                <div class="offcanvas-body mobile-scrollable">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="[[~1]]">HOME</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">FLEET</a>
                            <div class="dropdown-menu fleet-menu p-3 bg-transparent border-0">
                                <div class="fleet-container">
                                    <!-- Fleet Items -->
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/1.png" alt="Standard Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Standard Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/6.png" alt="Executive Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Executive Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/3.png" alt="Luxury Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/2.png" alt="People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">People Carrier</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/5.png" alt="Large People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Large People Carrier</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/4.png" alt="Luxury Coach" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury Coach</p>
                                    </div>
                                </div>
                                <div class="text-center mt-3">
                                    <a href="[[~7]]" class="btn btn-primary fleet-button">Explore Our Fleet</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="[[~3]]">DESTINATIONS</a></li>
                        <li class="nav-item"><a class="nav-link" href="[[~2]]">ABOUT US</a></li>
                        <li class="nav-item"><a class="nav-link" href="[[~6]]">FAQ</a></li>
                        <li class="nav-item"><a class="nav-link" href="[[~5]]">CONTACT US</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>

<script>
    window.addEventListener(\'scroll\', function() {
        const header = document.querySelector(\'.header\');
            if (window.scrollY > 50) {
            header.classList.add(\'scrolled\');
            } else {
            header.classList.remove(\'scrolled\');
        }
    });
</script>

',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '<header class="header">
    <!-- Topbar -->
    <div class="topbar text-center">
        <p class="mb-0">
  <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" style="color:white; text-decoration: none;">
    <i class="fa fa-map-marker" style="color:orange; margin-right:2px;"></i> SR Transfers, Seeduwa | Sri Lanka
  </a>
  &nbsp;|&nbsp;
  <a href="tel:+94777786729" style="color:white; text-decoration: none;">
    <i class="fa fa-phone" style="color:orange; margin-right:2px;"></i> +94 77 778 6729
  </a>
  &nbsp;|&nbsp;
  <a href="mailto:info@srilankarentacar.lk" style="color:white; text-decoration: none;">
    <i class="fa fa-envelope" style="color:orange; margin-right:2px;"></i> info@srilankarentacar.lk
  </a>
</p>

    </div>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light" id="mainNavbar">
        <div class="container">
<a class="navbar-brand" href="index.html">
    <!-- Default Logo -->
    <img src="assets/img/logo.png" class="logo-default" alt="Logo">

    <!-- Scrolled Logo -->
    <img src="assets/img/logo-hover.png" class="logo-scrolled" alt="Scrolled Logo">
</a>


            <!-- Offcanvas Toggle -->
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#mobileMenu">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Offcanvas Menu -->
            <div class="offcanvas offcanvas-start text-bg-dark" tabindex="-1" id="mobileMenu">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title">
                        <img src="assets/img/logo.png" alt="Logo" style="width:100px;">
                    </h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"></button>
                </div>
                <div class="offcanvas-body mobile-scrollable">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="[[~1]]">HOME</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown">FLEET</a>
                            <div class="dropdown-menu fleet-menu p-3 bg-transparent border-0">
                                <div class="fleet-container">
                                    <!-- Fleet Items -->
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/1.png" alt="Standard Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Standard Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/6.png" alt="Executive Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Executive Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/3.png" alt="Luxury Cars" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury Cars</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/2.png" alt="People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">People Carrier</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/5.png" alt="Large People Carrier" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Large People Carrier</p>
                                    </div>
                                    <div class="fleet-item text-center">
                                        <img src="assets/img/navbar/4.png" alt="Luxury Coach" class="img-fluid mb-2">
                                        <p class="mb-0 text-white">Luxury Coach</p>
                                    </div>
                                </div>
                                <div class="text-center mt-3">
                                    <a href="[[~7]]" class="btn btn-primary fleet-button">Explore Our Fleet</a>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="[[~3]]">DESTINATIONS</a></li>
                        <li class="nav-item"><a class="nav-link" href="[[~2]]">ABOUT US</a></li>
                        <li class="nav-item"><a class="nav-link" href="[[~6]]">FAQ</a></li>
                        <li class="nav-item"><a class="nav-link" href="[[~5]]">CONTACT US</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</header>

<script>
    window.addEventListener(\'scroll\', function() {
        const header = document.querySelector(\'.header\');
            if (window.scrollY > 50) {
            header.classList.add(\'scrolled\');
            } else {
            header.classList.remove(\'scrolled\');
        }
    });
</script>

',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'MODX\\Revolution\\Sources\\modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
      'footer' => 
      array (
        'fields' => 
        array (
          'id' => 1,
          'source' => 1,
          'property_preprocess' => false,
          'name' => 'footer',
          'description' => '',
          'editor_type' => 0,
          'category' => 0,
          'cache_type' => 0,
          'snippet' => '  <footer id="footer" class="footer position-relative dark-background">

    <div class="footer-newsletter">
      <div class="container">
        <div class="row justify-content-center text-center">
          <div class="col-lg-6">
            <h4>Join Our Newsletter</h4>
            <p>Join our newsletter to get the latest news, airport transfer promotions, and travel updates across Sri Lanka.</p>
            <form action="forms/newsletter.php" method="post" class="php-email-form">
              <div class="newsletter-form"><input type="email" name="email"><input type="submit" value="Subscribe"></div>
              <div class="loading">Loading</div>
              <div class="error-message"></div>
              <div class="sent-message">Your subscription request has been sent. Thank you!</div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="container footer-top">
      <div class="row gy-4">
        <div class="col-lg-4 col-md-6 footer-about">
          <a href="[[~1]]" class="d-flex align-items-center mb-2">
            <img src="assets/img/logo.png" alt="Tour Logo" class="logo me-2" style="height:40px;">
          </a>
          <div class="footer-contact pt-3">
            <p>SR Transfers (Pvt) Ltd</p>
            <p>
                <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" rel="noopener" class="text-decoration-none">
                371-5,<br>
                Negombo - Colombo Main Rd,<br>
                Seeduwa, Sri Lanka
                </a>
            </p>
            <p class="mt-3">
                <strong>Phone :</strong>
                <a href="tel:+94777786729" class="text-decoration-none"> +94 77 778 6729</a>
            </p>            
            <p>
                <strong>Email :</strong>
                <a href="mailto:info@srilankarentacar.lk" class="text-decoration-none"> info@srilankarentacar.lk</a>
            </p>          
        </div>
        </div>

        <div class="col-lg-4 col-md-3 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~1]]">Home</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~3]]">Destinations</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~2]]">About Us</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~6]]">FAQ</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~5]]">Contact Us</a></li>
          </ul>
        </div>

        <div class="col-lg-4 col-md-12">
          <h4>Follow Us</h4>
          <div class="social-links d-flex">
            <a href="https://www.facebook.com/srrentacar"><i class="bi bi-facebook"></i></a>
            <a href="https://www.instagram.com/srrentacarsrilanka/"><i class="bi bi-instagram"></i></a>
            <a href="https://www.linkedin.com/company/sr-rent-a-car/"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

      </div>
    </div>

    <div class="container copyright text-center mt-4">
      <p>© <strong class="px-1 sitename">2025 SR Transfers (Pvt) Ltd</strong> <span>All Rights Reserved</span></p>
    </div>

  </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>',
          'locked' => false,
          'properties' => 
          array (
          ),
          'static' => false,
          'static_file' => '',
          'content' => '  <footer id="footer" class="footer position-relative dark-background">

    <div class="footer-newsletter">
      <div class="container">
        <div class="row justify-content-center text-center">
          <div class="col-lg-6">
            <h4>Join Our Newsletter</h4>
            <p>Join our newsletter to get the latest news, airport transfer promotions, and travel updates across Sri Lanka.</p>
            <form action="forms/newsletter.php" method="post" class="php-email-form">
              <div class="newsletter-form"><input type="email" name="email"><input type="submit" value="Subscribe"></div>
              <div class="loading">Loading</div>
              <div class="error-message"></div>
              <div class="sent-message">Your subscription request has been sent. Thank you!</div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="container footer-top">
      <div class="row gy-4">
        <div class="col-lg-4 col-md-6 footer-about">
          <a href="[[~1]]" class="d-flex align-items-center mb-2">
            <img src="assets/img/logo.png" alt="Tour Logo" class="logo me-2" style="height:40px;">
          </a>
          <div class="footer-contact pt-3">
            <p>SR Transfers (Pvt) Ltd</p>
            <p>
                <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" rel="noopener" class="text-decoration-none">
                371-5,<br>
                Negombo - Colombo Main Rd,<br>
                Seeduwa, Sri Lanka
                </a>
            </p>
            <p class="mt-3">
                <strong>Phone :</strong>
                <a href="tel:+94777786729" class="text-decoration-none"> +94 77 778 6729</a>
            </p>            
            <p>
                <strong>Email :</strong>
                <a href="mailto:info@srilankarentacar.lk" class="text-decoration-none"> info@srilankarentacar.lk</a>
            </p>          
        </div>
        </div>

        <div class="col-lg-4 col-md-3 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~1]]">Home</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~3]]">Destinations</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~2]]">About Us</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~6]]">FAQ</a></li>
            <li><i class="bi bi-chevron-right"></i> <a href="[[~5]]">Contact Us</a></li>
          </ul>
        </div>

        <div class="col-lg-4 col-md-12">
          <h4>Follow Us</h4>
          <div class="social-links d-flex">
            <a href="https://www.facebook.com/srrentacar"><i class="bi bi-facebook"></i></a>
            <a href="https://www.instagram.com/srrentacarsrilanka/"><i class="bi bi-instagram"></i></a>
            <a href="https://www.linkedin.com/company/sr-rent-a-car/"><i class="bi bi-linkedin"></i></a>
          </div>
        </div>

      </div>
    </div>

    <div class="container copyright text-center mt-4">
      <p>© <strong class="px-1 sitename">2025 SR Transfers (Pvt) Ltd</strong> <span>All Rights Reserved</span></p>
    </div>

  </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>',
        ),
        'policies' => 
        array (
        ),
        'source' => 
        array (
          'id' => 1,
          'name' => 'Filesystem',
          'description' => '',
          'class_key' => 'MODX\\Revolution\\Sources\\modFileMediaSource',
          'properties' => 
          array (
          ),
          'is_stream' => true,
        ),
      ),
    ),
    'MODX\\Revolution\\modSnippet' => 
    array (
    ),
    'MODX\\Revolution\\modTemplateVar' => 
    array (
    ),
  ),
);