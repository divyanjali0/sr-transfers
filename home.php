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

        <div class="container position-relative">
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
                <img src="assets/img/flash-deal.jpg" alt="Airport Transfer Flash Deal" class="hero-image" loading="lazy">
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
            <script type="application/json" class="swiper-config">
              {
                "loop": true,
                "speed": 800,
                "autoplay": {
                  "delay": 4000
                },
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
                  "320": {
                    "slidesPerView": 1,
                    "spaceBetween": 10
                  },
                  "768": {
                    "slidesPerView": 2,
                    "spaceBetween": 20
                  },
                  "1024": {
                    "slidesPerView": 3,
                    "spaceBetween": 30
                  }
                }
              }
            </script>
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img">
                    <a class="glightbox" data-gallery="images-gallery" href="assets/img/vehicles/1.png">
                      <img src="assets/img/vehicles/1.png" class="img-fluid" alt="">
                      <div class="gallery-overlay">
                        <i class="bi bi-plus-circle"></i>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img">
                    <a class="glightbox" data-gallery="images-gallery" href="assets/img/vehicles/2.png">
                      <img src="assets/img/vehicles/2.png" class="img-fluid" alt="">
                      <div class="gallery-overlay">
                        <i class="bi bi-plus-circle"></i>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img">
                    <a class="glightbox" data-gallery="images-gallery" href="assets/img/vehicles/3.png">
                      <img src="assets/img/vehicles/3.png" class="img-fluid" alt="">
                      <div class="gallery-overlay">
                        <i class="bi bi-plus-circle"></i>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img">
                    <a class="glightbox" data-gallery="images-gallery" href="assets/img/vehicles/4.png">
                      <img src="assets/img/vehicles/4.png" class="img-fluid" alt="">
                      <div class="gallery-overlay">
                        <i class="bi bi-plus-circle"></i>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img">
                    <a class="glightbox" data-gallery="images-gallery" href="assets/img/vehicles/5.png">
                      <img src="assets/img/vehicles/5.png" class="img-fluid" alt="">
                      <div class="gallery-overlay">
                        <i class="bi bi-plus-circle"></i>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img">
                    <a class="glightbox" data-gallery="images-gallery" href="assets/img/vehicles/6.png">
                      <img src="assets/img/vehicles/6.png" class="img-fluid" alt="">
                      <div class="gallery-overlay">
                        <i class="bi bi-plus-circle"></i>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
              <div class="swiper-slide">
                <div class="gallery-item">
                  <div class="gallery-img">
                    <a class="glightbox" data-gallery="images-gallery" href="assets/img/vehicles/7.png">
                      <img src="assets/img/vehicles/7.png" class="img-fluid" alt="">
                      <div class="gallery-overlay">
                        <i class="bi bi-plus-circle"></i>
                      </div>
                    </a>
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
    <!-- /Gallery Slider Section -->


    <!-- Featured Destinations Section -->
    <section id="featured-destinations" class="featured-destinations section pt-3">
      <div class="container section-title" data-aos="fade-up">
        <h2>Featured Destinations</h2>
        <div><span>Most Popular</span> <span class="description-title">Destinations</span></div>
      </div>

      <div class="container" data-aos="fade-up">
        <div class="row">
          <div class="col-lg-6" data-aos="zoom-in" data-aos-delay="200">
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

    <!-- Featured Tours Section -->
    <!-- <section id="featured-tours" class="featured-tours section">
      <div class="container section-title" data-aos="fade-up">
        <h2>Featured Tours</h2>
        <div><span>Check Our</span> <span class="description-title">Featured Tours</span></div>
      </div>

      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <div class="row gy-4">
          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="200">
            <div class="tour-card">
              <div class="tour-image">
                <img src="assets/img/travel/tour-1.webp" alt="Serene Beach Retreat" class="img-fluid" loading="lazy">
                <div class="tour-badge">Top Rated</div>
                <div class="tour-price">$2,150</div>
              </div>
              <div class="tour-content">
                <h4>Serene Beach Retreat</h4>
                <div class="tour-meta">
                  <span class="duration"><i class="bi bi-clock"></i> 8 Days</span>
                  <span class="group-size"><i class="bi bi-people"></i> Max 6</span>
                </div>
                <p>Mauris ipsum neque, cursus ac ipsum at, iaculis facilisis ligula. Suspendisse non sapien vel enim cursus semper.</p>
                <div class="tour-highlights">
                  <span>Maldives</span>
                  <span>Seychelles</span>
                  <span>Bora Bora</span>
                </div>
                <div class="tour-action">
                  <a href="booking.html" class="btn-book">Book Now</a>
                  <div class="tour-rating">
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-half"></i>
                    <span>4.8 (95)</span>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="300">
            <div class="tour-card">
              <div class="tour-image">
                <img src="assets/img/travel/tour-2.webp" alt="Arctic Expedition" class="img-fluid" loading="lazy">
                <div class="tour-badge limited">Only 3 Spots!</div>
                <div class="tour-price">$5,700</div>
              </div>
              <div class="tour-content">
                <h4>Arctic Wilderness Expedition</h4>
                <div class="tour-meta">
                  <span class="duration"><i class="bi bi-clock"></i> 10 Days</span>
                  <span class="group-size"><i class="bi bi-people"></i> Max 8</span>
                </div>
                <p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec dictum non massa nec fermentum.</p>
                <div class="tour-highlights">
                  <span>Greenland</span>
                  <span>Iceland</span>
                  <span>Norway</span>
                </div>
                <div class="tour-action">
                  <a href="booking.html" class="btn-book">Book Now</a>
                  <div class="tour-rating">
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star"></i>
                    <span>4.6 (55)</span>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="400">
            <div class="tour-card">
              <div class="tour-image">
                <img src="assets/img/travel/tour-4.webp" alt="Desert Safari" class="img-fluid" loading="lazy">
                <div class="tour-badge new">Newly Added</div>
                <div class="tour-price">$1,400</div>
              </div>
              <div class="tour-content">
                <h4>Sahara Desert Discovery</h4>
                <div class="tour-meta">
                  <span class="duration"><i class="bi bi-clock"></i> 5 Days</span>
                  <span class="group-size"><i class="bi bi-people"></i> Max 10</span>
                </div>
                <p>Pellentesque euismod tincidunt turpis ac tristique. Phasellus vitae lacus in enim mollis facilisis vel quis ex. In hac habitasse platea dictumst.</p>
                <div class="tour-highlights">
                  <span>Morocco</span>
                  <span>Egypt</span>
                  <span>Dubai</span>
                </div>
                <div class="tour-action">
                  <a href="booking.html" class="btn-book">Book Now</a>
                  <div class="tour-rating">
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <span>4.9 (72)</span>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="200">
            <div class="tour-card">
              <div class="tour-image">
                <img src="assets/img/travel/tour-5.webp" alt="Coastal Explorer" class="img-fluid" loading="lazy">
                <div class="tour-badge">Popular Choice</div>
                <div class="tour-price">$1,980</div>
              </div>
              <div class="tour-content">
                <h4>Mediterranean Coastal Cruise</h4>
                <div class="tour-meta">
                  <span class="duration"><i class="bi bi-clock"></i> 9 Days</span>
                  <span class="group-size"><i class="bi bi-people"></i> Max 15</span>
                </div>
                <p>Nullam lacinia justo eget ex sodales, vel finibus orci aliquet. Donec auctor, elit ut molestie gravida, magna mi molestie nisi.</p>
                <div class="tour-highlights">
                  <span>Greece</span>
                  <span>Croatia</span>
                  <span>Italy</span>
                </div>
                <div class="tour-action">
                  <a href="booking.html" class="btn-book">Book Now</a>
                  <div class="tour-rating">
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-half"></i>
                    <span>4.7 (110)</span>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="300">
            <div class="tour-card">
              <div class="tour-image">
                <img src="assets/img/travel/tour-6.webp" alt="Rainforest Trek" class="img-fluid" loading="lazy">
                <div class="tour-badge cultural">Eco-Friendly</div>
                <div class="tour-price">$2,650</div>
              </div>
              <div class="tour-content">
                <h4>Amazon Rainforest Trek</h4>
                <div class="tour-meta">
                  <span class="duration"><i class="bi bi-clock"></i> 12 Days</span>
                  <span class="group-size"><i class="bi bi-people"></i> Max 10</span>
                </div>
                <p>Quisque dictum felis eu tortor mollis, quis tincidunt arcu pharetra. A pellentesque sit amet, consectetur adipiscing elit.</p>
                <div class="tour-highlights">
                  <span>Brazil</span>
                  <span>Ecuador</span>
                  <span>Peru</span>
                </div>
                <div class="tour-action">
                  <a href="booking.html" class="btn-book">Book Now</a>
                  <div class="tour-rating">
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star"></i>
                    <span>4.5 (88)</span>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="400">
            <div class="tour-card">
              <div class="tour-image">
                <img src="assets/img/travel/tour-8.webp" alt="Patagonian Peaks" class="img-fluid" loading="lazy">
                <div class="tour-badge adventure">Adventure Seekers</div>
                <div class="tour-price">$3,950</div>
              </div>
              <div class="tour-content">
                <h4>Patagonian Peaks &amp; Glaciers</h4>
                <div class="tour-meta">
                  <span class="duration"><i class="bi bi-clock"></i> 14 Days</span>
                  <span class="group-size"><i class="bi bi-people"></i> Max 10</span>
                </div>
                <p>Vivamus eget semper neque. Ut porttitor mi at odio egestas, non vestibulum est malesuada. Nunc facilisis in felis eget efficitur.</p>
                <div class="tour-highlights">
                  <span>Argentina</span>
                  <span>Chile</span>
                  <span>Ushuaia</span>
                </div>
                <div class="tour-action">
                  <a href="booking.html" class="btn-book">Book Now</a>
                  <div class="tour-rating">
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <i class="bi bi-star-fill"></i>
                    <span>4.9 (60)</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="text-center mt-5" data-aos="fade-up" data-aos-delay="500">
          <a href="tours.html" class="btn-view-all">View All Tours</a>
        </div>
      </div>
    </section> -->
    <!-- /Featured Tours Section -->

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
