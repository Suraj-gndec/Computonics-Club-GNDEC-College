<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/UserPanel/userpage.Master" CodeBehind="about.aspx.vb" Inherits="Computonic_Club.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-title dark-background" style="background-image: url(assets/img/gne_front.jpg);">
        <div class="container position-relative">
            <h1>Our Club</h1>
            <nav class="breadcrumbs">
                <ol>
                    <li><a href="Default.aspx">Home</a></li>
                    <li class="current">Club Overview</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- end page title -->
    <br />


    <section class="py-5 text-primary-emphasis">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <h2 class="text-center fw-bold mb-4">About the Compotonic Club</h2>
                    <p class="lead text-justify">
                        Welcome to the Compotonic Club, the leading technical club of the College Computer Applications Department! 
          Founded in 2023, our club is dedicated to bringing together technology enthusiasts and aspiring IT professionals 
          to explore, learn, and innovate in the ever-evolving world of technology.
                    </p>
                    <p class="lead text-justify">
                        The Compotonic Club is a vibrant community of students, faculty, and industry experts united by a shared passion 
          for technology. Our club aims to enhance members' practical skills and knowledge through a variety of engaging 
          events and activities. Whether you're keen on coding, software development, data science, or emerging tech trends, 
          Compotonic Club offers something for everyone!
                    </p>
                </div>
            </div>
        </div>
    </section>
    <br />

   <div class="container mt-4">
    <div class="row gap-4 justify-content-center">
        <asp:Repeater ID="whattodo" runat="server">
            <ItemTemplate>
                <div class="col-12 col-sm-6 col-md-4 col-lg-3 d-flex">
                    <div class="card shadow-sm w-100" style="width: 18rem;">
                        <img src='<%# ResolveUrl("~/uploadswhattodo/" & Eval("image_url")) %>' class="card-img-top" alt="Card image" style="object-fit: cover; height: 200px; border-top-left-radius: .75rem; border-top-right-radius: .75rem;">
                        <div class="card-body d-flex flex-column justify-content-between">
                            <p class="card-text text-center"><%# Eval("card_text") %></p>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
    <br />
    <div class="container-fluid py-5">
    <div class="container">
      <div class="row g-5 align-items-start">

        <!-- Our Vision -->
        <div class="col-12 col-lg-6">
          <div class="text-center text-lg-start">
            <h2 class="fw-bold text-secondary mb-4">Our Vision</h2>
            <p class="text-muted fs-5">
              At Compotonic Club, our vision is to be a beacon of innovation and professional excellence within our college community.
              We aim to cultivate a dynamic environment where creativity, collaboration, and technical skills thrive.
              Our goal is to bridge the gap between academic knowledge and real-world application, empowering members to tackle
              real challenges and drive technological advancements.
            </p>
            <p class="text-muted fs-5">
              We are dedicated to promoting diversity and inclusion, supporting career development, and fostering leadership.
              By inspiring growth and building lasting connections, we strive to prepare our members to excel and make
              a significant impact in the tech industry.
            </p>
          </div>
        </div>

        <!-- Join Us -->
        <div class="col-12 col-lg-6">
          <div class="text-center text-lg-start">
            <h2 class="fw-bold text-secondary mb-4">Join Us</h2>
            <p class="text-muted fs-5">
              Becoming a part of Compotonic Club opens doors to a world of opportunities and experiences.
              Whether you’re passionate about technology, eager to develop your skills, or looking to connect
              with like-minded individuals, our club offers something for everyone.
            </p>
            <p class="text-muted fs-5">
              Join us to participate in hands-on workshops, exciting hackathons, and engaging tech talks.
              Benefit from networking with industry professionals, collaborating on innovative projects,
              and accessing career development resources.
            </p>
            <p class="text-muted fs-5">
              If you’re ready to enhance your skills, contribute to groundbreaking projects, and be part of a vibrant tech community,
              we’d love to have you on board. Contact us at
              <a href="mailto:computonics2023@gmail.com" class="link-primary text-break">computonics2023@gmail.com</a>.
              Let’s innovate, collaborate, and grow together!
            </p>
          </div>
        </div>

      </div>
    </div>
  </div>
    <br />
</asp:Content>
