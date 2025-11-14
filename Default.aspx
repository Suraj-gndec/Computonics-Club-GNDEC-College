<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/UserPanel/userpage.Master" CodeBehind="Default.aspx.vb" Inherits="Computonic_Club._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="main">
        <!-- Hero Section -->
        <section id="hero" class="hero section dark-background">

            <div class="info d-flex align-items-center">
                <div class="container">
                    <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="100">
                        <div class="col-lg-6 text-center">
                            <h2>Welcome to Computonics Club</h2>
                            <a href="#get-started" class="btn-get-started">Get Started</a>
                        </div>
                    </div>
                </div>
            </div>

            <div id="hero-carousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">

                <asp:Repeater ID="carouselRepeater" runat="server">
                    <ItemTemplate>
                        <div class='carousel-item <%# IIf(Container.ItemIndex = 0, "active", "") %>'>
                            <img src='<%# ResolveUrl("~/eventregistration/" & Eval("events_res_pic")) %>' class="d-block w-100" />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

                <a class="carousel-control-prev" href="#hero-carousel" role="button" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon bi bi-chevron-left"></span>
                </a>

                <a class="carousel-control-next" href="#hero-carousel" role="button" data-bs-slide="next">
                    <span class="carousel-control-next-icon bi bi-chevron-right"></span>
                </a>

            </div>

        </section>

        <!-- /Hero Section -->
        <br />
        <div class="container py-5">
            <div class="row align-items-center">
                <!-- Left: Image -->
                <div class="col-md-6 mb-4 mb-md-0">
                    <img src="assets/img/19292-1-Guru-Nanak-Dev-Engineering-College.jpg" class="img-fluid rounded shadow" alt="College Building">
                </div>

                <!-- Right: Text -->
                <div class="col-md-6">
                    <h2 class="fw-bold text-secondary mb-3 text-center text-md-start">Our Computonics Club</h2>
                    <h5 class="text-muted mb-3 text-center text-md-start">Welcome to the Computonics Club</h5>
                    <p class="text-justify text-body-tertiary">
                        At Guru Nanak Dev Engineering College, Ludhiana, the Computonic Club is a dynamic community of students passionate about technology and innovation.
        Founded with the mission to foster a culture of learning and collaboration, the club organizes a variety of IT-related activities, including quizzes, workshops, lectures, and gaming events.
        We aim to provide our members with opportunities to enhance their skills, explore emerging technologies, and network with like-minded peers.
        Whether you're a coding enthusiast, a cybersecurity aficionado, or just curious about the tech world, the Computonic Club offers something for everyone.
        Join us as we explore the exciting world of technology together!
                    </p>
                </div>
            </div>
        </div>


        <br />


        <div class="container">
            <div class="card text-center">
                <div class="card-header">
                    Upcoming Events
                </div>
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="card border-primary mb-3">
                                    <div class="card-body">
                                        <h5 class="card-title">🎉 Event Details</h5>
                                        <p class="card-text">
                                            Event Name: Annual Tech Fest<br>
                                            Date: 25 Oct 2025<br>
                                            Location: Auditorium Hall
                                        </p>
                                        <a href="https://docs.google.com/forms/d/e/1FAIpQLSf1huJs7TRuukOURZjAOSXLpBLE_3vvFRVT3k894Mm6NFDgBg/viewform" class="btn btn-primary">View More</a>


                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="card border-success mb-3">
                                    <div class="card-body">
                                        <h5 class="card-title">📋 Attendance</h5>
                                        <p class="card-text">
                                            Total Students: 50<br>
                                            Present: 45<br>
                                            Absent: 5
                                        </p>
                                        <a href="#" class="btn btn-success">View Attendance</a>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer text-body-secondary">
                </div>
            </div>
        </div>
        <br />

        <div class="container py-5">
            <div class="row align-items-center">
                <!-- Left: Image -->
                <div class="col-md-6 mb-4 mb-md-0">
                    <img src="assets/img/we-re-hiring_1150-52741.jpg" alt="Join Club" class="img-fluid rounded shadow">
                </div>

                <!-- Right: Text -->
                <div class="col-md-6">
                    <h2 class="fw-bold mb-4 text-center text-md-start">How To Join Club</h2>

                    <!-- Step 1 -->
                    <div class="d-flex mb-4">
                        <div class="me-3 text-warning fs-3">
                            <i class="bi bi-clipboard-check"></i>
                        </div>
                        <div>
                            <h5 class="mb-1 text-warning fw-bold">01: <span class="text-dark">Fill the Form</span></h5>
                            <p class="mb-0 text-dark">Complete the online or physical application form with your details.</p>
                        </div>
                    </div>

                    <!-- Step 2 -->
                    <div class="d-flex mb-4">
                        <div class="me-3 text-warning fs-3">
                            <i class="bi bi-person-badge"></i>
                        </div>
                        <div>
                            <h5 class="mb-1 text-warning fw-bold">02: <span class="text-dark">Interview</span></h5>
                            <p class="mb-0 text-dark">Participate in an interview to discuss your interests and qualifications.</p>
                        </div>
                    </div>

                    <!-- Step 3 -->
                    <div class="d-flex mb-4">
                        <div class="me-3 text-warning fs-3">
                            <i class="bi bi-check2-square"></i>
                        </div>
                        <div>
                            <h5 class="mb-1 text-warning fw-bold">03: <span class="text-dark">Declare the Result</span></h5>
                            <p class="mb-0 text-dark">Wait for the announcement of the result and confirmation of your membership.</p>
                        </div>
                    </div>

                    <!-- Button -->
                    <div class="mt-4">
                        <a href="#" class="btn btn-warning px-4 py-2">Application Form <i class="bi bi-arrow-right ms-2"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>

    </main>

</asp:Content>
