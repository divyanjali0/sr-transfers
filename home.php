<body class="index-page">

  <main class="main">

    <!-- Travel Hero Section -->
    <section id="travel-hero" class="travel-hero section dark-background">
        <div class="hero-background">
            <video autoplay="" muted="" loop="">
                <source src="assets/video/preview.mp4" type="video/mp4">
            </video>
            <div class="hero-overlay"></div>
        </div>

        <div class="container position-relative" style="bottom: 26%;">
            <div class="row">
                <div class="col-lg-7 col-xl-5">
                    <div class="booking-form-wrapper" data-aos="fade-left" data-aos-delay="200">
                        <div class="booking-form">
                            <h3 class="form-title">Schedule Your Ride</h3>
                            <form action="[[~7]]" method="post">
                                <!-- Pickup / Drop-off Row -->
                                <div class="row g-2 align-items-center">
                                    <div class="col-md-6">
                                    <div class="form-group mb-3">
                                        <input type="text" name="pickupLocation" id="pickupLocation" class="form-control" placeholder="Arrival airport" required>
                                    </div>
                                    </div>

                                    <div class="col-md-6">
                                    <div class="form-group mb-3">
                                        <input type="text" name="dropoffLocation" id="dropoffLocation" class="form-control" placeholder="Going to" required>
                                    </div>
                                    </div>
                                </div>

                                <!-- Departure Date & Roundtrip Checkbox -->
                                <div class="row g-2 align-items-center mb-3">
                                    <div class="col-md-6">
                                    <div class="form-group mb-3">
                                        <input type="datetime-local" name="date" id="date" class="form-control" required>
                                    </div>
                                    </div>
                                    <div class="col-md-6 d-flex align-items-center justify-content-center">
                                    <div class="form-check">
                                        <input type="checkbox" class="form-check-input" id="roundtripCheck">
                                        <label class="form-check-label" for="roundtripCheck">Roundtrip</label>
                                    </div>
                                    </div>
                                </div>

                                <!-- Return Trip Fields (hidden by default) -->
                                <div id="returnDetails" style="display:none;">
                                    <div class="row g-2 align-items-center">
                                        <div class="col-md-6">
                                            <div class="form-group mb-3">
                                            <input type="text" name="returnPickup" id="returnPickup" class="form-control" placeholder="Return Pickup Location">
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group mb-3">
                                            <input type="text" name="returnDropoff" id="returnDropoff" class="form-control" placeholder="Return Drop-off Location">
                                            </div>
                                        </div>
                                    </div>

                                        <div class="form-group mb-3">
                                        <input type="datetime-local" name="returnDate" id="returnDate" class="form-control">
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-primary w-100">Find Your Transfer</button>
                            </form>

                            <!-- Google Maps Autocomplete + Roundtrip -->
                            <script>
                            const pickupInput = document.getElementById('pickupLocation');
                            const dropoffInput = document.getElementById('dropoffLocation');
                            const returnPickup = document.getElementById('returnPickup');
                            const returnDropoff = document.getElementById('returnDropoff');
                            const roundtripCheck = document.getElementById('roundtripCheck');
                            const returnDetails = document.getElementById('returnDetails');

                            // Show/hide return details
                            roundtripCheck.addEventListener('change', () => {
                                returnDetails.style.display = roundtripCheck.checked ? 'block' : 'none';
                            });

                            function initAutocomplete() {
                                const options = { componentRestrictions: { country: 'lk' } };
                                new google.maps.places.Autocomplete(pickupInput, options);
                                new google.maps.places.Autocomplete(dropoffInput, options);

                                if(returnPickup) new google.maps.places.Autocomplete(returnPickup, options);
                                if(returnDropoff) new google.maps.places.Autocomplete(returnDropoff, options);
                            }

                            window.initAutocomplete = initAutocomplete;
                            </script>

                            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAHmbwBrk0OKY0Nhp9FrR_zn8HKLGZ54OU&libraries=places&callback=initAutocomplete" async defer></script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Travel Hero Section -->


    <!-- Why Us Section -->
    <section id="why-us" class="why-us section">
      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <!-- About Us Content -->
        <div id="contentImageSlider" class="carousel slide" data-bs-ride="carousel">

          <div class="carousel-inner">

            <!-- SLIDE 1 -->
            <div class="carousel-item active">
              <div class="row align-items-center mb-5">
                
                <!-- CONTENT -->
                <div class="col-lg-6" data-aos="fade-right" data-aos-delay="200">
                  <div class="content">
                    <h3>Explore the World with Confidence</h3>
                    <p class="mb-0">Enjoy hassle-free airport transfers with reliable, comfortable, and punctual service every time.</p>
                    <p>Whether you're arriving or departing, we ensure a smooth, safe, and stress-free journey to your destination.</p>
                    <ul class="list-unstyled custom-list">
                      <li><i class="bi bi-check-circle-fill"></i> Professional and Experienced Drivers</li>
                      <li><i class="bi bi-check-circle-fill"></i> Wide Range of Well-Maintained Vehicles</li>
                      <li><i class="bi bi-check-circle-fill"></i> 24/7 Customer Support</li>
                    </ul>
                  </div>
                </div>

                <!-- IMAGE -->
                <div class="col-lg-6" data-aos="fade-left" data-aos-delay="300">
                  <div class="about-image position-relative">
                    <img class="intro" src="assets/img/intro/1.jpg"  alt="">
                    <div class="experience-badge">
                      <div class="experience-number">15+</div>
                      <div class="experience-text">Years of Excellence</div>
                    </div>
                  </div>
                </div>

              </div>
            </div>
            <!-- END SLIDE 1 -->


            <!-- SLIDE 2 -->
            <div class="carousel-item">
              <div class="row align-items-center mb-5">

                <div class="col-lg-6">
                  <div class="content">
                    <h3>Seamless Travel Solutions</h3>
                    <p>Experience smooth and stress-free airport transfers with timely pickups, comfortable vehicles, and friendly service from start to finish.</p>
                    <ul class="list-unstyled custom-list">
                      <li><i class="bi bi-check-circle-fill"></i> Reliable Service</li>
                      <li><i class="bi bi-check-circle-fill"></i> Affordable Prices</li>
                      <li><i class="bi bi-check-circle-fill"></i> Islandwide Support</li>
                    </ul>
                  </div>
                </div>

                <div class="col-lg-6">
                  <div class="about-image position-relative">
                    <img class="intro" src="assets/img/intro/2.jpg"  alt="">
                  </div>
                </div>

              </div>
            </div>
            <!-- END SLIDE 2 -->


            <!-- SLIDE 3 -->
            <div class="carousel-item">
              <div class="row align-items-center mb-5">

                <div class="col-lg-6">
                  <div class="content">
                    <h3>Your Journey, Our Priority</h3>
                    <p>We ensure every ride is safe, comfortable, and perfectly timed to match your travel needs.</p>
                    <ul class="list-unstyled custom-list">
                      <li><i class="bi bi-check-circle-fill"></i> On-time Airport Pickups & Drop-offs</li>
                      <li><i class="bi bi-check-circle-fill"></i> Clean, Comfortable Vehicles</li>
                      <li><i class="bi bi-check-circle-fill"></i> Friendly & Professional Drivers</li>
                    </ul>
                  </div>
                </div>

                <div class="col-lg-6">
                  <img class="intro" src="assets/img/intro/3.jpg"  alt="">
                </div>
              </div>
            </div>
          </div>

          <!-- CONTROLS -->
          <button class="carousel-control-prev" type="button" data-bs-target="#contentImageSlider" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
          </button>

          <button class="carousel-control-next" type="button" data-bs-target="#contentImageSlider" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
          </button>
        </div>
        <!-- End About Us Content -->

        <div id="call-to-action" class="call-to-action section light-background" style="padding: 30px 0;">
          <div class="container" data-aos="fade-up" data-aos-delay="100">
            <div class="hero-content" data-aos="zoom-in" data-aos-delay="200">
               <div class="visual-element">
                <img src="assets/img/flash-deal.jpg" alt="Airport Transfer Flash Deal" class="hero-image d-none d-md-block" loading="lazy">
                <img src="assets/img/flash-deal-sm.jpg" alt="Airport Transfer Flash Deal" class="hero-image d-block d-md-none" loading="lazy">
                <!-- <div class="image-overlay">
                  <div class="stat-item">
                    <span class="stat-number">25%</span>
                    <span class="stat-label">Off This Week</span>
                  </div>
                  <div class="stat-item">
                    <span class="stat-number">24/7</span>
                    <span class="stat-label">Service Available</span>
                  </div>
                </div> -->
              </div>
              <div class="content-wrapper">
                <div class="badge-wrapper">
                  
                 
                  <span class="promo-badge">Limited Time Offer</span>
                </div>

                <h4>Save Big on Airport Transfers!</h4>
                <p>
                  Book your ride now and enjoy exclusive discounts on airport and city transfers across Sri Lanka. 
                  Fast, reliable, and affordable — your next trip starts with savings!
                </p>

               <!-- <div class="action-section">
                  <div class="main-actions">
                     <a href="deals.html" class="btn btn-deals">
                      <i class="bi bi-percent"></i>
                      View Flash Deals
                    </a> 
                    <a href="[[~2]]" class="btn btn-explore">
                      <i class="bi bi-calendar-check"></i>
                      Book Now
                    </a>
                  </div>

                  <div class="quick-contact">
                    <span class="contact-label">Need assistance?</span>
                    <a href="tel:+94777786729" class="contact-link">
                      <i class="bi bi-telephone"></i>
                      Call +94 77 778 6729
                    </a>
                  </div>
                </div>-->
              </div>

             
            </div>
          </div>
        </div>

        <!-- Why Choose Us -->
        <div class="why-choose-section">
            <div class="row justify-content-center">
                <div class="col-lg-8 text-center mb-4" data-aos="fade-up" data-aos-delay="100">
                    <h3>Why Choose Us</h3>
                    <p>We pride ourselves on delivering reliable, comfortable, and affordable transfers across Sri Lanka. With professional drivers, well-maintained vehicles, and 24/7 customer support, we ensure your journey is smooth from start to finish.</p>
                </div>
            </div>

            <div class="row g-4">
              <div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="200">
                <div class="feature-card">
                  <div class="feature-icon">
                        <img src="assets/img/who_we/1.png" alt="Safe & Reliable" class="ss">
                    </div>
                    <h4>Safe & Reliable</h4>
                    <p>Your safety is our top priority with experienced, professional chauffeurs</p>
                  </div>
                </div>

                <div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="250">
                  <div class="feature-card">
                    <div class="feature-icon">
                        <img src="assets/img/who_we/2.png" alt="Luxury Fleet" class="ss">
                    </div>
                    <h4>Luxury Fleet</h4>
                    <p>Choose from our well-maintained, chauffeur-driven premium vehicles.</p>
                  </div>
                </div>

                <div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="300">
                  <div class="feature-card">
                    <div class="feature-icon">
                      <img src="assets/img/who_we/3.png" alt="24/7 Support" class="ss">
                    </div>
                    <h4>24/7 Support</h4>
                    <p>Our friendly team is available around the clock for any assistance.</p>
                  </div>
                </div>

                <div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="350">
                  <div class="feature-card">
                    <div class="feature-icon">
                      <img src="assets/img/who_we/4.png" alt="Meet & Greet Service" class="ss">
                    </div>
                    <h4>Meet & Greet Service</h4>
                    <p>Our chauffeurs will welcome you at the airport and escort you with care.</p>
                  </div>
                </div>
            </div>
          </div>
        </div>
    </section>
    <!-- /Why Us Section -->

    <!-- Gallery Slider Section -->
    <section id="gallery-slider" class="gallery-slider section pt-0">
      <div class="container section-title pb-3" data-aos="fade-up">
        <h2>Our Fleet</h2>
        <div><span>Comfortable</span> <span class="description-title">Airport Transfer Rides</span></div>
      </div>

      <div class="container" data-aos="fade-up" data-aos-delay="100">
        <div class="gallery-container py-0">
          <div class="swiper init-swiper">

            <!-- Swiper Configuration -->
            <script type="application/json" class="swiper-config">
              {
                "loop": true,
                "speed": 800,
                "autoplay": { "delay": 4000 },
                "effect": "coverflow",
                "grabCursor": true,
                "centeredSlides": true,
                "slidesPerView": "auto",
                "coverflowEffect": {
                  "rotate": 50,
                  "stretch": 0,
                  "depth": 100,
                  "modifier": 1,
                  "slideShadows": true
                },
                "pagination": {
                  "el": ".swiper-pagination",
                  "type": "bullets",
                  "clickable": true
                },
                "navigation": {
                  "nextEl": ".swiper-button-next",
                  "prevEl": ".swiper-button-prev"
                },
                "breakpoints": {
                  "320": { "slidesPerView": 1, "spaceBetween": 10 },
                  "768": { "slidesPerView": 2, "spaceBetween": 20 },
                  "1024": { "slidesPerView": 3, "spaceBetween": 30 }
                }
              }
            </script>


            <!-- ========== SWIPER SLIDES ========== -->
            <div class="swiper-wrapper">

              <!-- Vehicle 1 -->
              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Luxury</div>
                    <img src="assets/img/vehicles/1.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                            <div class="info-item">
                                <i class="fa fa-suitcase" style="color:#0f3f2f; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                            </div>

                            <div class="info-item">
                                <i class="fa fa-users" style="color:#0f3f2f; margin-right:6px;"></i>Passengers : 3
                            </div>

                            <div class="info-item">
                                <i class="fa fa-check-circle" style="color:#0f3f2f; margin-right:6px;"></i>Free Cancellation
                            </div>
                        </div>

                        <button class="vehicle-overlay-btn"
                            data-vehicle='{
                                "title":"Luxury",
                                "img":"assets/img/vehicles/1.png",
                                "desc":"Perfect for business travelers and couples seeking premium comfort.",
                                "features":["Leather Seats","USB Charging","Complimentary Water","Climate Control"],
                                "capacity":"1–3 passengers"
                                }'>
                            View Details
                        </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Standard</div>
                    <img src="assets/img/vehicles/2.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#0f3f2f; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#0f3f2f; margin-right:6px;"></i>Passengers : 3
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#0f3f2f; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle='{
                          "title":"Standard",
                          "img":"assets/img/vehicles/2.png",
                          "desc":"Ideal for families and groups needing space and luxury.",
                          "features":["Premium Leather","Rear AC","Spacious Seats","All-Terrain Safety"],
                          "capacity":"1–3 passengers"
                        }'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Super Luxury Coach</div>
                    <img src="assets/img/vehicles/3.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#0f3f2f; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#0f3f2f; margin-right:6px;"></i>Passengers : 45
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#0f3f2f; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle='{
                          "title":"Super Luxury Coach",
                          "img":"assets/img/vehicles/3.png",
                          "desc":"Perfect for corporate travel with extra luggage capacity.",
                          "features":["Conference Seating","Tinted Windows","USB Ports","Large Trunk"],
                          "capacity":"45 passengers"
                        }'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Executive</div>
                    <img src="assets/img/vehicles/4.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#0f3f2f; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#0f3f2f; margin-right:6px;"></i>Passengers : 2
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#0f3f2f; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle='{
                          "title":"Executive",
                          "img":"assets/img/vehicles/4.png",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"1–2 passengers"
                        }'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">People Carrier</div>
                    <img src="assets/img/vehicles/5.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#0f3f2f; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#0f3f2f; margin-right:6px;"></i>Passengers : 6
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#0f3f2f; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle='{
                          "title":"People Carrier",
                          "img":"assets/img/vehicles/5.png",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"1–2 passengers"
                        }'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Large People Carrier</div>
                    <img src="assets/img/vehicles/6.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#0f3f2f; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#0f3f2f; margin-right:6px;"></i>Passengers : 6
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#0f3f2f; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle='{
                          "title":"Large People Carrier",
                          "img":"assets/img/vehicles/6.png",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"1-6 passengers"
                        }'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img gallery-img-overlay">
                    <div class="vehicle-name">Mini Bus</div>
                    <img src="assets/img/vehicles/7.png" class="img-fluid" alt="">
                    <div class="vehicle-overlay">
                        <div class="vehicle-info">
                          <div class="info-item">
                            <i class="fa fa-suitcase" style="color:#0f3f2f; margin-right:6px;"></i>Pax : 1 Large | 2 Medium
                          </div>
                          <div class="info-item">
                            <i class="fa fa-users" style="color:#0f3f2f; margin-right:6px;"></i>Passengers : 12
                          </div>
                          <div class="info-item">
                            <i class="fa fa-check-circle" style="color:#0f3f2f; margin-right:6px;"></i>Free Cancellation
                          </div>
                        </div>                      
                        <button class="vehicle-overlay-btn"
                        data-vehicle='{
                          "title":"Mini Bus",
                          "img":"assets/img/vehicles/7.png",
                          "desc":"A reliable and comfortable option for group airport transfers.",
                          "features":["High Roof","AC","Large Seats","Smooth Ride"],
                          "capacity":"1-12 passengers"
                        }'>
                        View Details
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-pagination"></div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
          </div>
        </div>
      </div>
    </section>

    <style>
        .vehicle-name {
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            background: rgb(241 241 241 / 88%);
            color: #fff;
            padding: 6px 15px;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 600;
            opacity: 0;
            transition: 0.3s ease-in-out;
            z-index: 4;
            width: 100%;
            color: #000080;
            text-align: center;
        }

        .gallery-img-overlay:hover .vehicle-name {
            opacity: 1;
            transform: translate(-50%, 0);
        }

      .vehicle-info {
        position: absolute;
        background: rgb(241 241 241 / 88%);
        padding: 12px 18px;
        border-radius: 10px;
        width: 100%;
        text-align: left;
        color: #fff;
        opacity: 0;
        transform: translateY(10px);
        transition: 0.35s ease;
        display: flex;
        flex-direction: column;
        gap: 6px;
        font-size: 14px;
        z-index: 3;
      }

      .gallery-img-overlay:hover .vehicle-info {
        opacity: 1;
        transform: translateY(0px);
      }

      .info-item {
        display: flex;
        align-items: center;
        gap: 6px;
        font-weight: 700;
        color: #000080;
      }

      .gallery-img-overlay:hover img {
        transform: scale(1.05);
        opacity: 1;
      }

      .gallery-img-overlay:hover .vehicle-overlay-btn {
        transform: translateY(-100px);
      }

      .passenger-count, .cancellation, .suitcases {
        position: absolute;
        bottom: 0;
        background: rgba(0, 0, 0, 1);
        color: #fff;
        padding: 6px 14px;
        border-radius: 6px;
        font-size: 14px;
        font-weight: 600;
        opacity: 0;
        transform: translateY(10px);
        transition: 0.3s ease;
      }

      .gallery-img-overlay:hover .passenger-count, .cancellation, .suitcases {
        opacity: 1;
        transform: translateY(0px);
      }

      .vehicle-overlay-btn {
        padding: 10px 22px;
        background: #ffffff38;
        color: #fff;
        border: none;
        font-size: 16px;
        border-radius: 8px;
        font-weight: 600;
        cursor: pointer;
        box-shadow: 0 4px 15px rgba(0,0,0,0.3);
        transition: 0.3s ease;
        width: 100%;
        position: relative;
        z-index: 2;
      }

      .vehicle-overlay {
        position: absolute;
        inset: 0;
        display: flex;
        flex-direction: column;
        justify-content: end;
        align-items: center;
      }
    </style>

    <div class="modal fade" id="vehicleModal" tabindex="-1">
      <div class="modal-dialog modal-lg modal-dialog-centered">
        <div class="modal-content">

          <div class="modal-header">
            <h5 class="modal-title" id="vehicleTitle"></h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
          </div>

          <div class="modal-body">
            <img id="vehicleImg" class="modal-vehicle-img mb-3">
            <p id="vehicleDesc"></p>

            <h6 class="mt-3">Features:</h6>
            <ul id="vehicleFeatures"></ul>

            <p class="mt-2 mb-0"><strong>Capacity: </strong><span id="vehicleCapacity"></span></p>
          </div>

          <div class="modal-footer">
            <button class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <a href="[[~7]]" class="btn btn-primary">Book Now</a>
          </div>
        </div>
      </div>
    </div>

    <script>
      document.querySelectorAll(".vehicle-overlay-btn").forEach(btn => {
        btn.addEventListener("click", () => {
          const v = JSON.parse(btn.getAttribute("data-vehicle"));

          document.getElementById("vehicleTitle").innerText = v.title;
          document.getElementById("vehicleImg").src = v.img;
          document.getElementById("vehicleDesc").innerText = v.desc;

          const list = document.getElementById("vehicleFeatures");
          list.innerHTML = "";
          v.features.forEach(f => {
            list.innerHTML += `<li class="vehicle-feature">${f}</li>`;
          });

          document.getElementById("vehicleCapacity").innerText = v.capacity;

          new bootstrap.Modal(document.getElementById("vehicleModal")).show();
        });
      });
    </script>
    <!-- /Gallery Slider Section -->


    <!-- Featured Destinations Section -->
    <section id="featured-destinations" class="featured-destinations section pt-3">
      <div class="container section-title">
        <h2>Featured Destinations</h2>
        <div><span>Most Popular</span> <span class="description-title">Destinations</span></div>
      </div>

      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="featured-destination">
              <div class="destination-overlay">
                <img src="assets/img/travel/destination-3.jpg" alt="Tropical Paradise" class="img-fluid">
                <div class="destination-info">
                  <a href="[[~3]]" class="explore-btn">
                    <span>Explore Now</span>
                    <i class="bi bi-arrow-right"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6">
              <div class="row g-3">
                <div class="col-12" data-aos="fade-left">
                  <div class="compact-destination">
                    <div class="destination-image">
                      <img src="assets/img/travel/destination-7.jpg" alt="Mountain Adventure" class="img-fluid">
                      <div class="badge-offer">Most Visited</div>
                    </div>
                    <div class="destination-details">
                        <h4>Kandy</h4>
                        <p class="location"><i class="bi bi-geo-alt"></i> Sri Lanka</p>
                        <p class="brief">Nestled in lush hills, Kandy enchants visitors with its sacred Temple of the Tooth, serene lakes, and timeless cultural heritage.</p>
                        <a href="[[~3]]" class="quick-link">View Details <i class="bi bi-chevron-right"></i></a>
                    </div>
                  </div>
                </div>

                <div class="col-12" data-aos="fade-left">
                  <div class="compact-destination">
                    <div class="destination-image">
                      <img src="assets/img/travel/destination-11.jpg" alt="Cultural Heritage" class="img-fluid">
                    </div>
                    <div class="destination-details">
                      <h4>Sigiriya</h4>
                      <p class="location"><i class="bi bi-geo-alt"></i> Sri Lanka</p>
                      <p class="brief">Climb the majestic Lion Rock and explore ancient frescoes, royal gardens, and the breathtaking legacy of a lost kingdom.</p>
                      <a href="[[~3]]" class="quick-link">View Details <i class="bi bi-chevron-right"></i></a>
                    </div>
                  </div>
                </div>

                <div class="col-12" data-aos="fade-left">
                  <div class="compact-destination">
                    <div class="destination-image">
                      <img src="assets/img/travel/destination-16.jpg" alt="Safari Experience" class="img-fluid">
                      <div class="badge-offer limited">Scenic</div>
                    </div>
                    <div class="destination-details">
                      <h4>Nuwara Eliya</h4>
                      <p class="location"><i class="bi bi-geo-alt"></i> Sri Lanka</p>
                      <p class="brief">Wander through lush tea plantations, misty hills, and charming colonial cottages in Sri Lanka’s “Little England.”</p>
                      <a href="[[~3]]" class="quick-link">View Details <i class="bi bi-chevron-right"></i></a>
                    </div>
                  </div>
                </div>
              </div>
          </div>
        </div>
      </div>
    </section>
    <!-- /Featured Destinations Section -->


    <!-- Testimonials Home Section -->
    <section id="testimonials-home" class="testimonials-home section">
      <div class="container section-title" data-aos="fade-up">
        <h2>Testimonials</h2>
        <div><span>What Customers</span> <span class="description-title">Say</span></div>
      </div>

      <div class="container" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper init-swiper">
            <script type="application/json" class="swiper-config">
              {
                "loop": true,
                "speed": 600,
                "autoplay": {
                  "delay": 5000
                },
                "slidesPerView": "auto",
                "pagination": {
                  "el": ".swiper-pagination",
                  "type": "bullets",
                  "clickable": true
                },
                "breakpoints": {
                  "320": {
                    "slidesPerView": 1,
                    "spaceBetween": 40
                  },
                  "1200": {
                    "slidesPerView": 3,
                    "spaceBetween": 1
                  }
                }
              }
            </script>

            <div class="swiper-wrapper">
              [[!GoogleReviews]]
            </div>
            <div class="swiper-pagination"></div>
          </div>
      </div>
    </section>
    <!-- /Testimonials Home Section -->
     
  </main>

</body>
