<body class="contact-page">

    <main class="main">
        <div class="page-title dark-background" data-aos="fade" style="background-image: url(assets/img/travel/showcase-8.webp);">
            <div class="container position-relative">
                <h1>Contact</h1>
                <p>Book your ride with SR Transfers — safe, reliable, and hassle-free transport across Sri Lanka. Reach out today!</p>
                <nav class="breadcrumbs">
                    <ol>
                        <li><a href="[[~1]]">Home</a></li>
                        <li class="current">Contact</li>
                    </ol>
                </nav>
            </div>
        </div>

        <!-- Contact Section -->
        <section id="contact" class="contact section">
            <div class="container" data-aos="fade-up" data-aos-delay="100">
                <div class="row gy-4 mb-5">
                    <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="contact-info-box">
                        <div class="icon-box">
                        <i class="bi bi-geo-alt"></i>
                        </div>
                        <div class="info-content">
                        <h4>Our Office</h4>
                        <a href="https://maps.app.goo.gl/AKUi53HtWCemqH8DA" target="_blank" style="text-decoration: none; color: inherit;">
                            SR Transfers (Pvt) Ltd<br>
                            371-5,<br>
                            Negombo - Colombo Main Rd,<br>
                            Seeduwa Sri Lanka
                        </a>
                        </div>
                    </div>
                    </div>

                    <div class="col-lg-4" data-aos="fade-up" data-aos-delay="200">
                        <div class="contact-info-box">
                            <div class="icon-box">
                            <i class="bi bi-envelope"></i>
                            </div>
                            <div class="info-content">
                            <h4>Email Us</h4>
                            <a href="mailto:transfers@srilankarentacar.com">transfers@srilankarentacar.com</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4" data-aos="fade-up" data-aos-delay="200">
                        <div class="contact-info-box">
                            <div class="icon-box">
                            <i class="bi bi-phone"></i>
                            </div>
                            <div class="info-content">
                            <h4>Contact Us</h4>
                            <a href="tel:+94777780729">+94 77 778 0729</a><br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="map-section" data-aos="fade-up" data-aos-delay="200">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3958.9719503939377!2d79.87315007581863!3d7.129241115826212!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2f1b39f14eb6f%3A0x5a33982010ddd7e6!2sSR%20Transfers%20Sri%20Lanka!5e0!3m2!1sen!2slk!4v1762930732266!5m2!1sen!2slk" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" width="100%" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>

            <div class="container form-container-overlap">
                <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="300">
                    <div class="col-lg-10">
                        <div class="contact-form-wrapper">
                            <h2 class="text-center mb-4">Get in Touch</h2>
                            <div id="successMessage" class="alert alert-success text-center" style="display: none;">
                                Your message has been sent successfully!
                            </div>
                            <form id="contactForm" action="https://formspree.io/f/xpwyrpej"    method="POST">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="input-with-icon">
                                                <i class="bi bi-person"></i>
                                                <input type="text" class="form-control" name="name" placeholder="First Name" required="">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="input-with-icon">
                                                <i class="bi bi-envelope"></i>
                                                <input type="email" class="form-control" name="email" placeholder="Email Address" required="">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <div class="input-with-icon">
                                                <i class="bi bi-text-left"></i>
                                                <input type="text" class="form-control" name="subject" placeholder="Subject" required="">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <div class="form-group">
                                            <div class="input-with-icon">
                                                <i class="bi bi-chat-dots message-icon"></i>
                                                <textarea class="form-control" name="message" placeholder="Write Message..." style="height: 180px" required=""></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <input type="hidden" name="_subject" value="SR Transfers - Contact Form">

                                    <div class="col-12 text-center">
                                        <button type="submit" class="btn btn-primary btn-submit">SEND MESSAGE</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <script>
        const form = document.getElementById('contactForm');
        const successMessage = document.getElementById('successMessage');

        form.addEventListener('submit', async function(e) {
            e.preventDefault();
            const data = new FormData(form);

            try {
                const resp = await fetch(form.action, {
                    method: form.method,
                    body: data,
                    headers: {
                        'Accept': 'application/json'
                    }
                });

                if (resp.ok) {
                    // Show success message
                    successMessage.style.display = 'block';
                    form.reset();
                    successMessage.scrollIntoView({ behavior: 'smooth', block: 'nearest' });

                    setTimeout(() => {
                        successMessage.style.display = 'none';
                    }, 5000);
                } else {
                    let errText = 'Error sending message. Please try again later.';
                    try {
                        const errJson = await resp.json();
                        if (errJson && errJson.error) errText = errJson.error;
                    } catch (e) {}
                    alert(errText);
                }
            } catch (err) {
                alert('Network error — please check your connection and try again.');
                console.error(err);
            }
        });
    </script>
</body>