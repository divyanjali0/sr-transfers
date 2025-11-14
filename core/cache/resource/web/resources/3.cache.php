<?php  return array (
  'resourceClass' => 'MODX\\Revolution\\modDocument',
  'resource' => 
  array (
    'id' => 3,
    'type' => 'document',
    'pagetitle' => 'Destinations',
    'longtitle' => '',
    'description' => '',
    'alias' => 'destinations',
    'link_attributes' => '',
    'published' => 1,
    'pub_date' => 0,
    'unpub_date' => 0,
    'parent' => 0,
    'isfolder' => 0,
    'introtext' => '',
    'content' => '<body class="destinations-page">

  <main class="main">

    <!-- Page Title -->
    <div class="page-title dark-background" data-aos="fade" style="background-image: url(assets/img/travel/showcase-8.webp);">
      <div class="container position-relative">
        <h1>Destinations</h1>
        <p>Discover top destinations and unforgettable experiences, whether for adventure, relaxation, or culture.</p>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="[[~1]]">Home</a></li>
            <li class="current">Destinations</li>
          </ol>
        </nav>
      </div>
    </div>
    <!-- End Page Title -->

    <!-- Travel Destinations Section -->
    <section id="travel-destinations" class="travel-destinations section">
        <div class="container" data-aos="fade-up" data-aos-delay="100">
          <div class="row">
            <div class="col-lg-8 mx-auto text-center">
              <h2 style="font-weight:700; margin-bottom:16px;">Uncover Captivating Sri Lankan Experiences</h2>
              <p class="mb-5">From golden beaches to misty mountains and ancient temples, explore Sri Lanka\'s diverse beauty. Let us craft unforgettable journeys tailored to your dreams.</p>
            </div>
          </div>

          <div class="isotope-layout" data-default-filter="*" data-layout="masonry" data-sort="original-order">
            <!-- <ul class="destination-filters isotope-filters" data-aos="fade-up" data-aos-delay="200">
              <li data-filter="*" class="filter-active">All Locales</li>
              <li data-filter=".filter-coastal">Coastal</li>
              <li data-filter=".filter-mountain">Hill Country</li>
              <li data-filter=".filter-historical">Cultural</li>
              <li data-filter=".filter-wildlife">Wildlife</li>
            </ul> -->

            <div class="row gy-4 isotope-container" data-aos="fade-up" data-aos-delay="300">
              <!-- Colombo -->
              <div class="col-lg-4 col-md-6 destination-item isotope-item filter-urban">
                <a href="[[~3]]" class="destination-tile">
                  <div class="tile-image">
                    <img src="assets/img/destinations/1.jpg" alt="Colombo, Sri Lanka" class="img-fluid" loading="lazy">
                    <div class="overlay-content">
                      <span class="destination-tag modern">City Life</span>
                      <div class="destination-info">
                        <h4>Colombo</h4>
                        <p>The vibrant capital, blending colonial charm, bustling markets, and modern amenities.</p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>

              <!-- Kandy -->
              <div class="col-lg-4 col-md-6 destination-item isotope-item filter-mountain filter-historical">
                <a href="[[~3]]" class="destination-tile">
                  <div class="tile-image">
                    <img src="assets/img/destinations/2.jpg" alt="Kandy, Sri Lanka" class="img-fluid" loading="lazy">
                    <div class="overlay-content">
                      <span class="destination-tag cultural">Heritage</span>
                      <div class="destination-info">
                        <h4>Kandy</h4>
                        <p>Home to the sacred Temple of the Tooth and serene hill country vistas.</p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>

              <!-- Sigiriya -->
              <div class="col-lg-4 col-md-6 destination-item isotope-item filter-historical filter-mountain">
                <a href="[[~3]]" class="destination-tile">
                  <div class="tile-image">
                    <img src="assets/img/destinations/3.jpg" alt="Sigiriya, Sri Lanka" class="img-fluid" loading="lazy">
                    <div class="overlay-content">
                      <span class="destination-tag ancient">Cultural</span>
                      <div class="destination-info">
                        <h4>Sigiriya</h4>
                        <p>The ancient rock fortress with stunning frescoes and panoramic landscapes.</p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>

              <!-- Nuwara Eliya -->
              <div class="col-lg-4 col-md-6 destination-item isotope-item filter-mountain">
                <a href="[[~3]]" class="destination-tile">
                  <div class="tile-image">
                    <img src="assets/img/destinations/4.jpg" alt="Nuwara Eliya, Sri Lanka" class="img-fluid" loading="lazy">
                    <div class="overlay-content">
                      <span class="destination-tag scenic">Hill Country</span>
                      <div class="destination-info">
                        <h4>Nuwara Eliya</h4>
                        <p>Lush tea plantations, rolling hills, and cool mountain air.</p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>

              <!-- Yala National Park -->
              <div class="col-lg-4 col-md-6 destination-item isotope-item filter-wildlife">
                <a href="[[~3]]" class="destination-tile">
                  <div class="tile-image">
                    <img src="assets/img/destinations/5.jpg" alt="Yala National Park, Sri Lanka" class="img-fluid" loading="lazy">
                    <div class="overlay-content">
                      <span class="destination-tag wildlife">Safari</span>
                      <div class="destination-info">
                        <h4>Yala National Park</h4>
                        <p>Spot leopards, elephants, and exotic wildlife on thrilling safaris.</p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>

              <!-- Galle -->
              <div class="col-lg-4 col-md-6 destination-item isotope-item filter-coastal filter-historical">
                <a href="[[~3]]" class="destination-tile">
                  <div class="tile-image">
                    <img src="assets/img/destinations/6.jpeg" alt="Galle, Sri Lanka" class="img-fluid" loading="lazy">
                    <div class="overlay-content">
                      <span class="destination-tag heritage">Coastal</span>
                      <div class="destination-info">
                        <h4>Galle</h4>
                        <p>Colonial architecture, a charming fort, and scenic beaches along the southern coast.</p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>

              <div class="col-lg-4 col-md-6 destination-item isotope-item filter-coastal filter-historical">
                <a href="[[~3]]" class="destination-tile">
                  <div class="tile-image">
                    <img src="assets/img/destinations/7.jpg" alt="Galle, Sri Lanka" class="img-fluid" loading="lazy">
                    <div class="overlay-content">
                      <span class="destination-tag heritage">Sacred City</span>
                      <div class="destination-info">
                        <h4>Anuradhapura</h4>
                        <p>Ancient stupas and royal ruins from Sri Lanka’s first kingdom.</p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>

              <div class="col-lg-4 col-md-6 destination-item isotope-item filter-coastal filter-historical">
                <a href="[[~3]]" class="destination-tile">
                  <div class="tile-image">
                    <img src="assets/img/destinations/8.jpg" alt="Galle, Sri Lanka" class="img-fluid" loading="lazy">
                    <div class="overlay-content">
                      <span class="destination-tag scenic">Beach</span>
                      <div class="destination-info">
                        <h4>Trincomalee</h4>
                        <p>Pristine beaches and vibrant marine life on the eastern coast.</p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>

              <div class="col-lg-4 col-md-6 destination-item isotope-item filter-coastal filter-historical">
                <a href="[[~3]]" class="destination-tile">
                  <div class="tile-image">
                    <img src="assets/img/destinations/9.jpg" alt="Galle, Sri Lanka" class="img-fluid" loading="lazy">
                    <div class="overlay-content">
                      <span class="destination-tag ancient">Scenic</span>
                      <div class="destination-info">
                        <h4>Ella</h4>
                        <p>Famous for the Nine Arches Bridge, tea trails, and breathtaking views.</p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <!-- End Destinations Container -->
          </div>

          <div class="row mt-3">
            <div class="col-lg-10 mx-auto text-center" data-aos="fade-up" data-aos-delay="400">
              <div class="planning-assistance">
                <div class="assistance-content">
                  <h3>Let Our Team Help Curate Your Perfect Sri Lankan Expedition</h3>
                  <p>Unsure which destination aligns with your travel dreams? Our travel experts design bespoke itineraries tailored to you.</p>
                  <div class="assistance-actions">
                    <a href="[[~5]]" class="btn btn-primary">Contact Us</a>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
    </section>
    <!-- /Travel Destinations Section -->

  </main>

</body>',
    'richtext' => 1,
    'template' => 2,
    'menuindex' => 2,
    'searchable' => 1,
    'cacheable' => 1,
    'createdby' => 1,
    'createdon' => 1762928116,
    'editedby' => 1,
    'editedon' => 1763033403,
    'deleted' => 0,
    'deletedon' => 0,
    'deletedby' => 0,
    'publishedon' => 1762928100,
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
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Tour
  * Template URL: https://bootstrapmade.com/tour-bootstrap-travel-website-template/
  * Updated: Jul 01 2025 with Bootstrap v5.3.7
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
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
            <i class="fa fa-map-marker" style="color:orange;"></i> SR Transfers, Seeduwa | Sri Lanka
                &nbsp;|&nbsp;
            <i class="fa fa-phone" style="color:orange;"></i> +94 77 778 6729
                &nbsp;|&nbsp;
            <i class="fa fa-envelope" style="color:orange;"></i> info@srilankarentacar.lk
        </p>
    </div>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light" id="mainNavbar">
        <div class="container">
            <a class="navbar-brand" href="index.html">
                <img src="assets/img/logo.png" alt="Logo" style="width:120px;">
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
                                    <a href="index.php?id=3" class="btn btn-primary fleet-button">Explore Our Fleet</a>
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


<body class="destinations-page">

  <main class="main">

    <!-- Page Title -->
    <div class="page-title dark-background" data-aos="fade" style="background-image: url(assets/img/travel/showcase-8.webp);">
      <div class="container position-relative">
        <h1>Destinations</h1>
        <p>Discover top destinations and unforgettable experiences, whether for adventure, relaxation, or culture.</p>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="index.php?id=1">Home</a></li>
            <li class="current">Destinations</li>
          </ol>
        </nav>
      </div>
    </div>
    <!-- End Page Title -->

    <!-- Travel Destinations Section -->
    <section id="travel-destinations" class="travel-destinations section">
        <div class="container" data-aos="fade-up" data-aos-delay="100">
          <div class="row">
            <div class="col-lg-8 mx-auto text-center">
              <h2 style="font-weight:700; margin-bottom:16px;">Uncover Captivating Sri Lankan Experiences</h2>
              <p class="mb-5">From golden beaches to misty mountains and ancient temples, explore Sri Lanka\'s diverse beauty. Let us craft unforgettable journeys tailored to your dreams.</p>
            </div>
          </div>

          <div class="isotope-layout" data-default-filter="*" data-layout="masonry" data-sort="original-order">
            <!-- <ul class="destination-filters isotope-filters" data-aos="fade-up" data-aos-delay="200">
              <li data-filter="*" class="filter-active">All Locales</li>
              <li data-filter=".filter-coastal">Coastal</li>
              <li data-filter=".filter-mountain">Hill Country</li>
              <li data-filter=".filter-historical">Cultural</li>
              <li data-filter=".filter-wildlife">Wildlife</li>
            </ul> -->

            <div class="row gy-4 isotope-container" data-aos="fade-up" data-aos-delay="300">
              <!-- Colombo -->
              <div class="col-lg-4 col-md-6 destination-item isotope-item filter-urban">
                <a href="index.php?id=3" class="destination-tile">
                  <div class="tile-image">
                    <img src="assets/img/destinations/1.jpg" alt="Colombo, Sri Lanka" class="img-fluid" loading="lazy">
                    <div class="overlay-content">
                      <span class="destination-tag modern">City Life</span>
                      <div class="destination-info">
                        <h4>Colombo</h4>
                        <p>The vibrant capital, blending colonial charm, bustling markets, and modern amenities.</p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>

              <!-- Kandy -->
              <div class="col-lg-4 col-md-6 destination-item isotope-item filter-mountain filter-historical">
                <a href="index.php?id=3" class="destination-tile">
                  <div class="tile-image">
                    <img src="assets/img/destinations/2.jpg" alt="Kandy, Sri Lanka" class="img-fluid" loading="lazy">
                    <div class="overlay-content">
                      <span class="destination-tag cultural">Heritage</span>
                      <div class="destination-info">
                        <h4>Kandy</h4>
                        <p>Home to the sacred Temple of the Tooth and serene hill country vistas.</p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>

              <!-- Sigiriya -->
              <div class="col-lg-4 col-md-6 destination-item isotope-item filter-historical filter-mountain">
                <a href="index.php?id=3" class="destination-tile">
                  <div class="tile-image">
                    <img src="assets/img/destinations/3.jpg" alt="Sigiriya, Sri Lanka" class="img-fluid" loading="lazy">
                    <div class="overlay-content">
                      <span class="destination-tag ancient">Cultural</span>
                      <div class="destination-info">
                        <h4>Sigiriya</h4>
                        <p>The ancient rock fortress with stunning frescoes and panoramic landscapes.</p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>

              <!-- Nuwara Eliya -->
              <div class="col-lg-4 col-md-6 destination-item isotope-item filter-mountain">
                <a href="index.php?id=3" class="destination-tile">
                  <div class="tile-image">
                    <img src="assets/img/destinations/4.jpg" alt="Nuwara Eliya, Sri Lanka" class="img-fluid" loading="lazy">
                    <div class="overlay-content">
                      <span class="destination-tag scenic">Hill Country</span>
                      <div class="destination-info">
                        <h4>Nuwara Eliya</h4>
                        <p>Lush tea plantations, rolling hills, and cool mountain air.</p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>

              <!-- Yala National Park -->
              <div class="col-lg-4 col-md-6 destination-item isotope-item filter-wildlife">
                <a href="index.php?id=3" class="destination-tile">
                  <div class="tile-image">
                    <img src="assets/img/destinations/5.jpg" alt="Yala National Park, Sri Lanka" class="img-fluid" loading="lazy">
                    <div class="overlay-content">
                      <span class="destination-tag wildlife">Safari</span>
                      <div class="destination-info">
                        <h4>Yala National Park</h4>
                        <p>Spot leopards, elephants, and exotic wildlife on thrilling safaris.</p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>

              <!-- Galle -->
              <div class="col-lg-4 col-md-6 destination-item isotope-item filter-coastal filter-historical">
                <a href="index.php?id=3" class="destination-tile">
                  <div class="tile-image">
                    <img src="assets/img/destinations/6.jpeg" alt="Galle, Sri Lanka" class="img-fluid" loading="lazy">
                    <div class="overlay-content">
                      <span class="destination-tag heritage">Coastal</span>
                      <div class="destination-info">
                        <h4>Galle</h4>
                        <p>Colonial architecture, a charming fort, and scenic beaches along the southern coast.</p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>

              <div class="col-lg-4 col-md-6 destination-item isotope-item filter-coastal filter-historical">
                <a href="index.php?id=3" class="destination-tile">
                  <div class="tile-image">
                    <img src="assets/img/destinations/7.jpg" alt="Galle, Sri Lanka" class="img-fluid" loading="lazy">
                    <div class="overlay-content">
                      <span class="destination-tag heritage">Sacred City</span>
                      <div class="destination-info">
                        <h4>Anuradhapura</h4>
                        <p>Ancient stupas and royal ruins from Sri Lanka’s first kingdom.</p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>

              <div class="col-lg-4 col-md-6 destination-item isotope-item filter-coastal filter-historical">
                <a href="index.php?id=3" class="destination-tile">
                  <div class="tile-image">
                    <img src="assets/img/destinations/8.jpg" alt="Galle, Sri Lanka" class="img-fluid" loading="lazy">
                    <div class="overlay-content">
                      <span class="destination-tag scenic">Beach</span>
                      <div class="destination-info">
                        <h4>Trincomalee</h4>
                        <p>Pristine beaches and vibrant marine life on the eastern coast.</p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>

              <div class="col-lg-4 col-md-6 destination-item isotope-item filter-coastal filter-historical">
                <a href="index.php?id=3" class="destination-tile">
                  <div class="tile-image">
                    <img src="assets/img/destinations/9.jpg" alt="Galle, Sri Lanka" class="img-fluid" loading="lazy">
                    <div class="overlay-content">
                      <span class="destination-tag ancient">Scenic</span>
                      <div class="destination-info">
                        <h4>Ella</h4>
                        <p>Famous for the Nine Arches Bridge, tea trails, and breathtaking views.</p>
                      </div>
                    </div>
                  </div>
                </a>
              </div>
            </div>
            <!-- End Destinations Container -->
          </div>

          <div class="row mt-3">
            <div class="col-lg-10 mx-auto text-center" data-aos="fade-up" data-aos-delay="400">
              <div class="planning-assistance">
                <div class="assistance-content">
                  <h3>Let Our Team Help Curate Your Perfect Sri Lankan Expedition</h3>
                  <p>Unsure which destination aligns with your travel dreams? Our travel experts design bespoke itineraries tailored to you.</p>
                  <div class="assistance-actions">
                    <a href="index.php?id=5" class="btn btn-primary">Contact Us</a>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
    </section>
    <!-- /Travel Destinations Section -->

  </main>

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
      <div class="credits">
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
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
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Tour
  * Template URL: https://bootstrapmade.com/tour-bootstrap-travel-website-template/
  * Updated: Jul 01 2025 with Bootstrap v5.3.7
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
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
    '[[~3]]' => 'index.php?id=3',
    '[[~2]]' => 'index.php?id=2',
    '[[~6]]' => 'index.php?id=6',
    '[[~5]]' => 'index.php?id=5',
    '[[$navbar?]]' => '<header class="header">
    <!-- Topbar -->
    <div class="topbar text-center">
        <p class="mb-0">
            <i class="fa fa-map-marker" style="color:orange;"></i> SR Transfers, Seeduwa | Sri Lanka
                &nbsp;|&nbsp;
            <i class="fa fa-phone" style="color:orange;"></i> +94 77 778 6729
                &nbsp;|&nbsp;
            <i class="fa fa-envelope" style="color:orange;"></i> info@srilankarentacar.lk
        </p>
    </div>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light" id="mainNavbar">
        <div class="container">
            <a class="navbar-brand" href="index.html">
                <img src="assets/img/logo.png" alt="Logo" style="width:120px;">
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
                                    <a href="index.php?id=3" class="btn btn-primary fleet-button">Explore Our Fleet</a>
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
      <div class="credits">
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
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
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Tour
  * Template URL: https://bootstrapmade.com/tour-bootstrap-travel-website-template/
  * Updated: Jul 01 2025 with Bootstrap v5.3.7
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
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
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Tour
  * Template URL: https://bootstrapmade.com/tour-bootstrap-travel-website-template/
  * Updated: Jul 01 2025 with Bootstrap v5.3.7
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
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
          'web' => 
          array (
          ),
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
            <i class="fa fa-map-marker" style="color:orange;"></i> SR Transfers, Seeduwa | Sri Lanka
                &nbsp;|&nbsp;
            <i class="fa fa-phone" style="color:orange;"></i> +94 77 778 6729
                &nbsp;|&nbsp;
            <i class="fa fa-envelope" style="color:orange;"></i> info@srilankarentacar.lk
        </p>
    </div>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light" id="mainNavbar">
        <div class="container">
            <a class="navbar-brand" href="index.html">
                <img src="assets/img/logo.png" alt="Logo" style="width:120px;">
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
                                    <a href="[[~3]]" class="btn btn-primary fleet-button">Explore Our Fleet</a>
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
            <i class="fa fa-map-marker" style="color:orange;"></i> SR Transfers, Seeduwa | Sri Lanka
                &nbsp;|&nbsp;
            <i class="fa fa-phone" style="color:orange;"></i> +94 77 778 6729
                &nbsp;|&nbsp;
            <i class="fa fa-envelope" style="color:orange;"></i> info@srilankarentacar.lk
        </p>
    </div>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light" id="mainNavbar">
        <div class="container">
            <a class="navbar-brand" href="index.html">
                <img src="assets/img/logo.png" alt="Logo" style="width:120px;">
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
                                    <a href="[[~3]]" class="btn btn-primary fleet-button">Explore Our Fleet</a>
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
          'web' => 
          array (
          ),
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
      <div class="credits">
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
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
      <div class="credits">
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>

  </footer>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>',
        ),
        'policies' => 
        array (
          'web' => 
          array (
          ),
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