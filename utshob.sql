<?php /* public/index.php */ ?>
<!doctype html>
<html lang="en" data-bs-theme="dark">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Utshob — Premium Event Management</title>
    <meta name="description"
        content="Utshob: Modern event management platform — discover, plan, and host events with premium experience.">
    <link rel="icon" href="icon.jpg">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body id="top">

    <nav id="mainNav" class="navbar navbar-premium fixed-top navbar-expand-lg">
        <div class="container">
            <a href="#top" class="navbar-brand">
                <i class="bi bi-stars text-warning"></i>
                <span class="All fs-5">UTSHOB</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navContent"
                aria-controls="navContent" aria-expanded="false" aria-label="Toggle navigaton">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div id="navContent">
                <form action="" class="d-flex flex-grow-1 ms-lg-4 my-3 my-lg-0" role="search">
                    <div class="input-group search-wrap">
                        <span class="input-group-text border-0"><i class="bi bi-search"></i></span>
                        <input type="search" id="navSearch" class="form-control" aria-label="Search"
                            placeholder="search" />
                        <select class="form-select" aria-label="Category select">
                            <option selected value="">All</option>
                            <option value="tech">Tech</option>
                            <option value="society">Society</option>
                            <option value="sports">Sports</option>
                            <option value="culture">Culture</option>
                        </select>
                        <button class="btn btn-outline-warning" type="button" id="btnNavSearch">
                            Search
                        </button>
                    </div>
                </form>

                <ul class="navbar-nav mb-2 ms-lg-4 mb-lg-0 align-items-lg-center">
                    <!--li-->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#features" data-bs-toggle="dropdown">Features</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#features">Overview</a></li>
                            <li>
                                <a class="dropdown-item" href="#events">Upcoming Events</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#events" data-bs-toggle="dropdown">Events</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#events">All Events</a></li>
                            <li><a class="dropdown-item" href="#venues">Venues</a></li>
                            <li>
                                <a class="dropdown-item" href="#organizers">Organizers</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#venues" data-bs-toggle="dropdown">Venues</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#venues">Venue List</a></li>
                            <li><a class="dropdown-item" href="#faq">FAQ</a></li>
                            <li><a class="dropdown-item" href="#contact">Contact</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#organizers" data-bs-toggle="dropdown">Organizers</a>
                        <ul class="dropdown-menu">
                            <li>
                                <a class="dropdown-item" href="#organizers">Top Organizers</a>
                            </li>
                            <li><a class="dropdown-item" href="#features">Tools</a></li>
                            <li><a class="dropdown-item" href="#pricing">Plans</a></li>
                        </ul>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#more" data-bs-toggle="dropdown">More</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#contact">Contact</a></li>
                            <li><a class="dropdown-item" href="#faq">Help Center</a></li>
                            <li><a class="dropdown-item" href="#bottom">Footer</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <header class="hero" id="home">
        <div class="glow"></div>
        <div class="container position-relative">
            <div class="row align-items-center g-4">
                <div class="col-lg-6">
                    <div class="hero-card p-4 p-md-5">
                        <span class="badge badge-soft mb-2"><i class="bi bi-lightning-charge me-1"></i>Launch your next
                            experience</span>
                        <h1 class="display-5 fw-bold mt-2">
                            Host, Discover & Elevate Events with
                            <span class="text-gradient">Utshob</span>
                        </h1>
                        <p class="lead text-secondary mt-3">
                            Modern tools for tickets, venues, attendees, schedules and
                            seamless check‑in — all in one elegant platform.
                        </p>
                        <div class="d-flex gap-3 mt-3">
                            <a href="#events" class="btn btn-warning btn-lg"><i
                                    class="bi bi-calendar-event me-2"></i>Explore Events</a>
                            <a href="#features" class="btn btn-outline-light btn-lg"><i class="bi bi-stars me-2"></i>See
                                Features</a>
                        </div>

                        <div class="mt-4">
                            <div class="p-3 search-wrap">
                                <div class="row g-2">
                                    <div class="col-md-6">
                                        <input id="heroQuery" class="form-control form-control-lg"
                                            placeholder="Try: Tech meetup in Dhaka" />
                                    </div>
                                    <div class="col-md-3">
                                        <select id="heroCategory" class="form-select form-select-lg">
                                            <option value="">All</option>
                                            <option value="tech">Tech</option>
                                            <option value="music">Music</option>
                                            <option value="sports">Sports</option>
                                            <option value="culture">Culture</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3 d-grid">
                                        <button id="btnHeroSearch" class="btn btn-lg btn-primary">
                                            <i class="bi bi-search me-2"></i>Search
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="text-center text-lg-end">
                        <img src="crowd.jpeg" class="img-fluid rounded-4 shadow" alt="Concert crowd" loading="lazy" />
                    </div>
                </div>
            </div>
        </div>
    </header>

    <main>
        <section id="features" class="section">
            <div class="container">
                <div class="row align-items-end mb-4">
                    <div class="col-md-8">
                        <h2 class="section-title">
                            Powerful features for creators & communities
                        </h2>
                        <p class="text-secondary">
                            Ticketing, analytics, check‑in and more — designed with a
                            premium, modern UI.
                        </p>
                    </div>
                    <div class="col-md-4 text-md-end">
                        <a href="#pricing" class="btn btn-outline-warning"><i class="bi bi-gem me-2"></i>See Plans</a>
                    </div>
                </div>

                <div class="row g-4">
                    <div class="col-sm-6 col-lg-3">
                        <div class="card card-premium h-100 p-4">
                            <div class="fs-3 mb-2">
                                <i class="bi bi-ticket-perforated"></i>
                            </div>
                            <h5>Smart Booking</h5>
                            <p class="text-secondary small">
                                Book rooms, set limits, manage early accessing.
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="card card-premium h-100 p-4">
                            <div class="fs-3 mb-2"><i class="bi bi-qr-code-scan"></i></div>
                            <h5>Instant Check‑in</h5>
                            <p class="text-secondary small">
                                Scan QR codes, track attendance live and prevent duplicate
                                entries.
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="card card-premium h-100 p-4">
                            <div class="fs-3 mb-2">
                                <i class="bi bi-graph-up-arrow"></i>
                            </div>
                            <h5>Sales Analytics</h5>
                            <p class="text-secondary small">
                                Monitor conversions, channels and revenue with elegant
                                dashboards.
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="card card-premium h-100 p-4">
                            <div class="fs-3 mb-2"><i class="bi bi-shield-lock"></i></div>
                            <h5>Secure Payments</h5>
                            <p class="text-secondary small">
                                PCI‑compliant flows and safe checkout built on modern
                                standards.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="events" class="section">
            <div class="container">
                <div class="d-flex align-items-center justify-content-between mb-3">
                    <h2 class="section-title mb-0">Upcoming events</h2>
                    <div>
                        <span class="text-secondary me-2">Filter:</span>
                        <div class="btn-group" role="group" aria-label="Filter group">
                            <button class="btn btn-outline-light btn-sm filter-btn" data-filter="">
                                All
                            </button>
                            <button class="btn btn-outline-light btn-sm filter-btn" data-filter="tech">
                                Tech
                            </button>
                            <button class="btn btn-outline-light btn-sm filter-btn" data-filter="music">
                                Music
                            </button>
                            <button class="btn btn-outline-light btn-sm filter-btn" data-filter="sports">
                                Sports
                            </button>
                            <button class="btn btn-outline-light btn-sm filter-btn" data-filter="culture">
                                Culture
                            </button>
                        </div>
                    </div>
                </div>

                <div id="eventGrid" class="row g-4">
                    <!-- Event card template repeated -->
                    <div class="col-12 col-sm-6 col-lg-4" data-category="tech" data-title="Dhaka JS Summit">
                        <div class="card card-premium h-100">
                            <img class="card-img-top" src="thumbnail.png" alt="Tech event" />
                            <div class="card-body">
                                <span class="badge text-bg-primary mb-2">Tech</span>
                                <h5 class="card-title">Programming Hero</h5>
                                <p class="card-text text-secondary">
                                    Talks, workshops and live coding with top engineers.
                                </p>
                                <div class="d-flex align-items-center justify-content-between">
                                    <small class="text-secondary"><i class="bi bi-geo-alt me-1"></i>CSE Conference
                                        Room</small>
                                    <small class="text-secondary"><i class="bi bi-calendar-event me-1"></i>Oct 12
                                        (15.30)
                                    </small>
                                </div>
                            </div>
                            <div class="card-footer bg-transparent border-0 d-flex gap-2">
                                <button class="btn btn-sm btn-warning flex-fill">
                                    <i class="bi bi-ticket-detailed me-1"></i>Register
                                </button>
                                <button class="btn btn-sm btn-outline-light">
                                    <i class="bi bi-share"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6 col-lg-4" data-category="music" data-title="Utshob Music Night">
                        <div class="card card-premium h-100">
                            <img class="card-img-top" src="bubu.jpg" alt="Music event" />
                            <div class="card-body">
                                <span class="badge text-bg-danger mb-2">Music</span>
                                <h5 class="card-title">ববিচাস সাংস্কৃতিক সন্ধ্যা</h5>
                                <p class="card-text text-secondary">
                                    Live bands, DJs and a breathtaking light show.
                                </p>
                                <div class="d-flex align-items-center justify-content-between">
                                    <small class="text-secondary"><i class="bi bi-geo-alt me-1"></i>Kitonkhola
                                        Hall</small>
                                    <small class="text-secondary"><i class="bi bi-calendar-event me-1"></i>Nov 4 (16.00)
                                    </small>
                                </div>
                            </div>
                            <div class="card-footer bg-transparent border-0 d-flex gap-2">
                                <button class="btn btn-sm btn-warning flex-fill">
                                    <i class="bi bi-ticket-detailed me-1"></i>Register
                                </button>
                                <button class="btn btn-sm btn-outline-light">
                                    <i class="bi bi-share"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6 col-lg-4" data-category="sports" data-title="Marathon 10K">
                        <div class="card card-premium h-100">
                            <img class="card-img-top" src="ouou.jpg" alt="Sports event" />
                            <div class="card-body">
                                <span class="badge text-bg-success mb-2">Sports</span>
                                <h5 class="card-title">BU Sports Day</h5>
                                <p class="card-text text-secondary">
                                    Run together for a cause with city-wide cheer squads.
                                </p>
                                <div class="d-flex align-items-center justify-content-between">
                                    <small class="text-secondary"><i class="bi bi-geo-alt me-1"></i>Central
                                        Field</small>
                                    <small class="text-secondary"><i class="bi bi-calendar-event me-1"></i>Sep 28
                                        (12.00)
                                    </small>
                                </div>
                            </div>
                            <div class="card-footer bg-transparent border-0 d-flex gap-2">
                                <button class="btn btn-sm btn-warning flex-fill">
                                    <i class="bi bi-ticket-detailed me-1"></i>Register
                                </button>
                                <button class="btn btn-sm btn-outline-light">
                                    <i class="bi bi-share"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6 col-lg-4" data-category="culture" data-title="Pohela Boishakh Fair">
                        <div class="card card-premium h-100">
                            <img class="card-img-top" src="pohela.webp" alt="Culture event" />
                            <div class="card-body">
                                <span class="badge text-bg-info mb-2">Culture</span>
                                <h5 class="card-title">Pohela Boishakh Fair</h5>
                                <p class="card-text text-secondary">
                                    Traditional art, food stalls and cultural performances.
                                </p>
                                <div class="d-flex align-items-center justify-content-between">
                                    <small class="text-secondary"><i class="bi bi-geo-alt me-1"></i>Mukto Mocho</small>
                                    <small class="text-secondary"><i class="bi bi-calendar-event me-1"></i>Apr 14
                                        (18.00)
                                    </small>
                                </div>
                            </div>
                            <div class="card-footer bg-transparent border-0 d-flex gap-2">
                                <button class="btn btn-sm btn-warning flex-fill">
                                    <i class="bi bi-ticket-detailed me-1"></i>Register
                                </button>
                                <button class="btn btn-sm btn-outline-light">
                                    <i class="bi bi-share"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="venues" class="section">
            <div class="container">
                <div class="row align-items-center mb-4">
                    <div class="col-md-8">
                        <h2 class="section-title">Venues you’ll love</h2>
                        <p class="text-secondary">
                            Premium spaces with capacity, amenities and great accessibility.
                        </p>
                    </div>
                    <div class="col-md-4 text-md-end">
                        <a href="#contact" class="btn btn-outline-light"><i class="bi bi-building me-2"></i>List your
                            venue</a>
                    </div>
                </div>

                <div class="row g-4">
                    <div class="col-md-4">
                        <div class="card card-premium h-100 p-4">
                            <div class="d-flex align-items-start gap-3">
                                <i class="bi bi-buildings fs-2"></i>
                                <div>
                                    <h5>Jibonanondo Dash Conferrence Room</h5>
                                    <p class="text-secondary small mb-2">
                                        Capacity 200 · Fully Operative Room
                                    </p>
                                    <span class="badge text-bg-secondary"><i
                                            class="bi bi-geo-alt me-1"></i>Adminstrative Building
                                        2 . 5th Floor</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card card-premium h-100 p-4">
                            <div class="d-flex align-items-start gap-3">
                                <i class="bi bi-door-open fs-2"></i>
                                <div>
                                    <h5>Kirtonkhola Hall</h5>
                                    <p class="text-secondary small mb-2">
                                        Capacity 600 · Single Sitter · Big Digital Display
                                    </p>
                                    <span class="badge text-bg-secondary"><i class="bi bi-geo-alt me-1"></i>Academic
                                        Building 1 .
                                        5th Floor</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card card-premium h-100 p-4">
                            <div class="d-flex align-items-start gap-3">
                                <i class="bi bi-shop fs-2"></i>
                                <div>
                                    <h5>CSE Conference Room</h5>
                                    <p class="text-secondary small mb-2">
                                        Capacity 100 · AV equipment · Advanced Tech Room
                                    </p>
                                    <span class="badge text-bg-secondary"><i
                                            class="bi bi-geo-alt me-1"></i>Adminstrative Building
                                        1 . 4th Floor</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="organizers" class="section">
            <div class="container">
                <div class="row mb-4">
                    <div class="col">
                        <h2 class="section-title">Top organizers</h2>
                        <p class="text-secondary">
                            Trusted hosts making magic on Utshob.
                        </p>
                    </div>
                </div>

                <div class="row g-4">
                    <div class="col-sm-6 col-lg-3">
                        <div class="card card-premium p-4 h-100 text-center">
                            <i class="bi bi-patch-check fs-2 mb-2 text-warning"></i>
                            <h6>BUITS</h6>
                            <p class="text-secondary small mb-0">Research & Study</p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="card card-premium p-4 h-100 text-center">
                            <i class="bi bi-patch-check fs-2 mb-2 text-warning"></i>
                            <h6>Programming Hero</h6>
                            <p class="text-secondary small mb-0">Tech & Startups</p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="card card-premium p-4 h-100 text-center">
                            <i class="bi bi-patch-check fs-2 mb-2 text-warning"></i>
                            <h6>ববিচাস</h6>
                            <p class="text-secondary small mb-0">
                                Cultural & Entertainment
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="card card-premium p-4 h-100 text-center">
                            <i class="bi bi-patch-check fs-2 mb-2 text-warning"></i>
                            <h6>BDApps</h6>
                            <p class="text-secondary small mb-0">Network & Creativity</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="faq" class="section">
            <div class="container">
                <div class="row mb-4">
                    <div class="col">
                        <h2 class="section-title">Frequently asked questions</h2>
                    </div>
                </div>
                <div class="accordion" id="faqAcc">
                    <div class="accordion-item bg-transparent border rounded-3 border-secondary-subtle">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#fq1">
                                How does I book a room?
                            </button>
                        </h2>
                        <div id="fq1" class="accordion-collapse collapse" data-bs-parent="#faqAcc">
                            <div class="accordion-body text-secondary">
                                Set up tiers, availability windows and per‑user limits.
                                Attendees receive secure QR codes for check‑in.
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item bg-transparent border rounded-3 border-secondary-subtle mt-2">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#fq2">
                                Do you email us?
                            </button>
                        </h2>
                        <div id="fq2" class="accordion-collapse collapse" data-bs-parent="#faqAcc">
                            <div class="accordion-body text-secondary">
                                Yes, organizers will sent email to everyone.
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item bg-transparent border rounded-3 border-secondary-subtle mt-2">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#fq3">
                                Is there an organizer mobile app?
                            </button>
                        </h2>
                        <div id="fq3" class="accordion-collapse collapse" data-bs-parent="#faqAcc">
                            <div class="accordion-body text-secondary">
                                A mobile companion app for check‑in and live stats is coming
                                soon.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="contact" class="section">
            <div class="container">
                <div class="row g-4">
                    <div class="col-lg-6">
                        <h2 class="section-title">Let’s build your next experience</h2>
                        <p class="text-secondary">
                            Send a message and our team will get back in a flash.
                        </p>
                        <form class="card card-premium p-4" id="contactForm">
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <label class="form-label">Name</label><input class="form-control" required />
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label">Email</label><input type="email" class="form-control"
                                        required />
                                </div>
                                <div class="col-12">
                                    <label class="form-label">Message</label><textarea class="form-control" rows="4"
                                        required></textarea>
                                </div>
                                <div class="col-12 d-grid d-md-flex gap-3">
                                    <button class="btn btn-warning" type="submit">
                                        <i class="bi bi-send me-2"></i>Send
                                    </button>
                                    <button class="btn btn-outline-light" type="reset">
                                        Clear
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-6">
                        <div class="card card-premium p-4 h-100">
                            <h5 class="mb-3"><i class="bi bi-headset me-2"></i>Support</h5>
                            <p class="text-secondary">
                                We’re available 7 days a week to help with onboarding, venue
                                setup, and ticketing strategy.
                            </p>
                            <ul class="list-unstyled">
                                <li class="mb-2">
                                    <i class="bi bi-envelope me-2"></i>mehjabin_lija@utshob.app
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-telephone me-2"></i>+880 1977987420
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-telephone me-2"></i>+880 1829494993
                                </li>
                                <li class="mb-2">
                                    <i class="bi bi-geo-alt me-2"></i>Dhaka, Bangladesh
                                </li>
                            </ul>
                            <div class="mt-auto">
                                <div class="d-flex gap-2">
                                    <a class="btn btn-outline-light" href="#"><i class="bi bi-facebook"></i></a>
                                    <a class="btn btn-outline-light" href="#"><i class="bi bi-instagram"></i></a>
                                    <a class="btn btn-outline-light" href="#"><i class="bi bi-twitter-x"></i></a>
                                    <a class="btn btn-outline-light" href="#"><i class="bi bi-linkedin"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer id="bottom" class="pt-5 pb-4">
        <div class="container">
            <div class="row g-4">
                <div class="col-sm-6 col-lg-3">
                    <div class="d-flex align-items-center gap-2 mb-2">
                        <i class="bi bi-stars text-warning fs-4"></i>
                        <strong class="fs-5">Utshob</strong>
                    </div>
                    <p class="text-secondary">
                        Premium platform for events across Bangladesh and beyond.
                    </p>
                    <div class="d-flex gap-2">
                        <a class="btn btn-outline-light btn-sm" href="#"><i class="bi bi-apple"></i></a>
                        <a class="btn btn-outline-light btn-sm" href="#"><i class="bi bi-google-play"></i></a>
                    </div>
                </div>
                <div class="col-6 col-lg-2">
                    <h6 class="mb-3">Product</h6>
                    <ul class="list-unstyled">
                        <li><a class="footer-link" href="#features">Features</a></li>
                        <li><a class="footer-link" href="#pricing">Pricing</a></li>
                        <li><a class="footer-link" href="#events">Events</a></li>
                        <li><a class="footer-link" href="#venues">Venues</a></li>
                    </ul>
                </div>
                <div class="col-6 col-lg-2">
                    <h6 class="mb-3">Company</h6>
                    <ul class="list-unstyled">
                        <li><a class="footer-link" href="#contact">Contact</a></li>
                        <li><a class="footer-link" href="#faq">Help Center</a></li>
                        <li><a class="footer-link" href="#">Careers</a></li>
                        <li><a class="footer-link" href="#">Press</a></li>
                    </ul>
                </div>
                <div class="col-lg-5">
                    <h6 class="mb-3">Stay in the loop</h6>
                    <form class="row g-2">
                        <div class="col-8 col-md-9">
                            <input type="email" class="form-control" placeholder="Email address" />
                        </div>
                        <div class="col-4 col-md-3 d-grid">
                            <button class="btn btn-warning" type="button">Subscribe</button>
                        </div>
                    </form>
                    <small class="d-block mt-2 text-secondary">By subscribing, you agree to our
                        <a href="#" class="footer-link">Terms</a> and
                        <a href="#" class="footer-link">Privacy</a>.</small>
                </div>
            </div>
            <hr class="border-secondary-subtle my-4 bg-dark" />
            <div class="d-flex flex-column flex-md-row justify-content-between align-items-center gap-2">
                <small class="text-secondary">© <span id="y"></span> Utshob. All rights reserved. Developed by
                    NEXZEN Studios.</small>
                <div class="d-flex gap-3 small">
                    <a class="footer-link" href="#">Terms</a>
                    <a class="footer-link" href="#">Privacy</a>
                    <a class="footer-link" href="#top">Back to top</a>
                </div>
            </div>
        </div>
    </footer>





    <!-- Floating Action Buttons (Meet, Calendar, Login) -->
    <div class="fab-group">
        <button class="btn fab" type="button" data-bs-toggle="tooltip" data-bs-title="Schedule a meet" id="btnMeet"><i
                class="bi bi-camera-video-fill fs-5"></i></button>
        <button class="btn fab" type="button" data-bs-toggle="tooltip" data-bs-title="Open room schedules"
            id="btnCalendar"><i class="bi bi-calendar2-event fs-5"></i></button>
        <button class="btn fab" type="button" data-bs-toggle="tooltip" data-bs-title="Login / Register" id="btnLogin"><i
                class="bi bi-person-circle fs-5"></i></button>
    </div>

    <!-- Scroll top/bottom (unchanged) -->
    <div class="scroll-stack">
        <button class="btn scroll-btn" id="toTop" aria-label="Back to top"><i class="bi bi-chevron-up"></i></button>
        <button class="btn scroll-btn" id="toBottom" aria-label="Jump to bottom"><i
                class="bi bi-chevron-down"></i></button>
    </div>

    <!-- Meet Modal -->
    <div class="modal fade" id="meetModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content bg-dark border-secondary-subtle">
                <div class="modal-header">
                    <h5 class="modal-title"><i class="bi bi-camera-video me-2"></i>Schedule a Meet</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form id="meetForm">
                    <div class="modal-body">
                        <div class="row g-3">
                            <div class="col-md-6"><label class="form-label">Topic <span
                                        class="text-warning">*</span></label><input class="form-control" id="meetTopic"
                                    required></div>
                            <div class="col-md-6">
                                <label class="form-label">Department <span class="text-warning">*</span></label>
                                <select class="form-select" id="meetDept" required>
                                    <option value="">Select department</option>
                                    <option>CSE</option>
                                    <option>EEE</option>
                                    <option>Business Studies</option>
                                    <option>English</option>
                                    <option>Mathematics</option>
                                </select>
                            </div>
                            <div class="col-md-4"><label class="form-label">Date <span
                                        class="text-warning">*</span></label><input type="date" class="form-control"
                                    id="meetDate" required></div>
                            <div class="col-md-4"><label class="form-label">Start Time <span
                                        class="text-warning">*</span></label><input type="time" class="form-control"
                                    id="meetTimeStart" required></div>
                            <div class="col-md-4"><label class="form-label">End Time <span
                                        class="text-warning">*</span></label><input type="time" class="form-control"
                                    id="meetTimeEnd" required></div>
                            <div class="col-12">
                                <label class="form-label">Select a Venue (University of Barishal) <span
                                        class="text-warning">*</span></label>
                                <div id="roomGrid" class="room-grid">
                                    <div class="room-card" data-room-id="1">
                                        <div class="title">Auditorium A</div>
                                        <div class="meta"><i class="bi bi-people me-1"></i>Capacity 400 · Projector ·
                                            Stage</div>
                                    </div>
                                    <div class="room-card" data-room-id="2">
                                        <div class="title">Seminar Hall B</div>
                                        <div class="meta"><i class="bi bi-people me-1"></i>Capacity 150 · Sound system
                                        </div>
                                    </div>
                                    <div class="room-card" data-room-id="3">
                                        <div class="title">Conference Room C</div>
                                        <div class="meta"><i class="bi bi-people me-1"></i>Capacity 40 · Meeting table
                                        </div>
                                    </div>
                                </div>
                                <small class="text-secondary">Approved bookings will block the room during the selected
                                    time.</small>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-outline-danger me-auto" type="button" id="btnCancelMeeting">Cancel
                            Meeting</button>
                        <button class="btn btn-outline-info" type="button" id="btnUpdateTime">Update Time</button>
                        <button class="btn btn-outline-light" type="button" data-bs-dismiss="modal">Close</button>
                        <button class="btn btn-warning" type="submit">Request / Book</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Toast -->
    <div class="position-fixed bottom-0 start-50 translate-middle-x p-3" style="z-index: 1080">
        <div id="mainToast" class="toast align-items-center text-bg-success border-0" role="alert" aria-live="assertive"
            aria-atomic="true">
            <div class="d-flex">
                <div class="toast-body"><i class="bi bi-check2-circle me-2"></i><span id="toastMsg">Action
                        completed.</span></div>
                <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast"
                    aria-label="Close"></button>
            </div>
        </div>
    </div>






    <!-- Top-right floating buttons -->
    <div class="top-right-stack">
        <button class="btn btn-float" id="btnMeetTop"><i class="bi bi-camera-video me-1"></i>Meet</button>
        <button class="btn btn-float" id="btnCalendarTop"><i class="bi bi-calendar2-event me-1"></i>Room</button>
        <button class="btn btn-float" id="btnEventsTop"><i class="bi bi-calendar2-week me-1"></i>Events</button>
        <button class="btn btn-float" id="btnLoginTop"><i class="bi bi-person-circle me-1"></i>Login</button>
    </div>

    <!-- Your navbar + hero + sections (unchanged). In event cards, use: -->
    <!-- <a class="btn btn-sm btn-warning flex-fill" href="event-register.php"><i class="bi bi-person-plus me-1"></i>Register</a> -->

    <!-- Meet Modal (works!) -->
    <div class="modal fade" id="meetModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content bg-dark border-secondary-subtle">
                <div class="modal-header">
                    <h5 class="modal-title"><i class="bi bi-camera-video me-2"></i>Schedule a Meet</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <form id="meetForm">
                    <div class="modal-body">
                        <div class="row g-3">
                            <div class="col-md-6"><label class="form-label">Topic</label><input class="form-control"
                                    id="meetTopic" required></div>
                            <div class="col-md-6"><label class="form-label">Department</label><input
                                    class="form-control" id="meetDept" required></div>
                            <div class="col-md-4"><label class="form-label">Date</label><input type="date"
                                    class="form-control" id="meetDate" required></div>
                            <div class="col-md-4"><label class="form-label">Start</label><input type="time"
                                    class="form-control" id="meetTimeStart" required></div>
                            <div class="col-md-4"><label class="form-label">End</label><input type="time"
                                    class="form-control" id="meetTimeEnd" required></div>
                            <div class="col-12">
                                <label class="form-label">Select a Venue (BU)</label>
                                <div id="roomGrid" class="room-grid">
                                    <div class="room-card" data-room-id="1">
                                        <div class="title">Auditorium A</div>
                                        <div class="meta">Capacity 400 · Projector · Stage</div>
                                    </div>
                                    <div class="room-card" data-room-id="2">
                                        <div class="title">Seminar Hall B</div>
                                        <div class="meta">Capacity 150 · Sound system</div>
                                    </div>
                                    <div class="room-card" data-room-id="3">
                                        <div class="title">Conference Room C</div>
                                        <div class="meta">Capacity 40 · Meeting table</div>
                                    </div>
                                </div>
                                <input type="hidden" id="meetRoomId" required>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-outline-light" type="button" data-bs-dismiss="modal">Close</button>
                        <button class="btn btn-warning" type="submit">Request</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="assets/js/app.js"></script>
    <script>
    // Room select UI
    document.addEventListener('click', (e) => {
        const card = e.target.closest('.room-card');
        if (!card) return;
        document.querySelectorAll('.room-card').forEach(c => c.classList.remove('selected'));
        card.classList.add('selected');
        document.getElementById('meetRoomId').value = card.dataset.roomId;
    });

    // Submit meet request
    const meetForm = document.getElementById('meetForm');
    if (meetForm) meetForm.addEventListener('submit', async (e) => {
        e.preventDefault();
        const me = await fetch('../api/auth.php?action=me', {
            credentials: 'include'
        }).then(r => r.json());
        if (!me.ok) {
            await Swal.fire({
                icon: 'info',
                title: 'Please login'
            });
            location.href = 'login.php';
            return;
        }

        const fd = new FormData();
        fd.append('action', 'create');
        fd.append('room_id', document.getElementById('meetRoomId').value);
        fd.append('topic', document.getElementById('meetTopic').value.trim());
        fd.append('department', document.getElementById('meetDept').value.trim());
        fd.append('date', document.getElementById('meetDate').value);
        fd.append('start_time', document.getElementById('meetTimeStart').value);
        fd.append('end_time', document.getElementById('meetTimeEnd').value);

        const res = await fetch('../api/bookings.php', {
            method: 'POST',
            body: fd,
            credentials: 'include'
        });
        const j = await res.json();
        if (j.ok) {
            const msg = (me.user.role === 'admin') ? 'Meeting booked (approved).' :
                'Request sent to admin.';
            await Swal.fire({
                icon: 'success',
                title: msg,
                timer: 1400,
                showConfirmButton: false
            });
            bootstrap.Modal.getInstance(document.getElementById('meetModal')).hide();
            meetForm.reset();
            document.querySelectorAll('.room-card').forEach(c => c.classList.remove('selected'));
        } else {
            Swal.fire({
                icon: 'error',
                title: 'Failed',
                text: j.message || 'Could not submit'
            });
        }
    });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/app.js" defer></script>
    <script src="assets/js/meet.js" defer></script>
</body>

</html>