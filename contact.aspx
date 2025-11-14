<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/UserPanel/userpage.Master" CodeBehind="contact.aspx.vb" Inherits="Computonic_Club.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Contact Section -->
     <!-- Page Title -->
    <div class="page-title dark-background" style="background-image: url(assets/img/gne_front.jpg);">
      <div class="container position-relative">
        <h1>Contact</h1>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="Default.aspx">Home</a></li>
            <li class="current">Contact</li>
          </ol>
        </nav>
      </div>
    </div><!-- End Page Title -->
    <section id="contact" class="contact section">

      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <div class="row gy-4">

          <div class="col-lg-6">
            <div class="info-item d-flex flex-column justify-content-center align-items-center" data-aos="fade-up" data-aos-delay="200">
              <i class="bi bi-geo-alt"></i>
              <h3>Address</h3>
              <p  class="text-black">First Floor, Block-3,

                Guru Nanak Dev Engineering College, Ludhiana-141006</p>
            </div>
          </div><!-- End Info Item -->

          <div class="col-lg-3 col-md-6">
            <div class="info-item d-flex flex-column justify-content-center align-items-center" data-aos="fade-up" data-aos-delay="300">
              <i class="bi bi-telephone"></i>
              <h3>Call Us</h3>
              <p  class="text-black">+1 5589 55488 55</p>
            </div>
          </div><!-- End Info Item -->

          <div class="col-lg-3 col-md-6">
            <div class="info-item d-flex flex-column justify-content-center align-items-center" data-aos="fade-up" data-aos-delay="400">
              <i class="bi bi-envelope"></i>
              <h3>Email Us</h3>
              <p  class="text-black">computonics2023@gmail.com</p>
            </div>
          </div><!-- End Info Item -->

        </div>

        <div class="row gy-4 mt-1">
          <div class="col-lg-6" data-aos="fade-up" data-aos-delay="300">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3424.927671078705!2d75.85699157509309!3d30.86069997943776!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391a828f09011b15%3A0xbf3f5b51dcc81b12!2sGuru%20Nanak%20Dev%20Engineering%20College!5e0!3m2!1sen!2sin!4v1739340959761!5m2!1sen!2sin" frameborder="0" style="border:0; width: 100%; height: 400px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div><!-- End Google Maps -->

          <div class="col-lg-6">
            <div  data-aos="fade-up" data-aos-delay="400">
              <div class="row gy-4">

                <div class="col-md-6">
                    <asp:TextBox ID="username" runat="server" name="name" CssClass="form-control" placeholder="Your Name"></asp:TextBox>
                    
                </div>
                 
                <div class="col-md-6 ">
                     <asp:TextBox ID="usergmail" runat="server" name="gmail" CssClass="form-control" placeholder="Email"></asp:TextBox>
                </div>

                <div class="col-md-12">
                    <asp:TextBox ID="usersubject" runat="server" name="subject" CssClass="form-control" placeholder="Subject"></asp:TextBox>
                </div>

                <div class="col-md-12">

                    <asp:TextBox ID="msg" runat="server" name="message" CssClass="form-control" placeholder="Message" rows="6" TextMode="MultiLine" Columns="50"></asp:TextBox>
                </div>

                <div class="col-md-12 text-center">
            
                  
                    <asp:Button ID="msg_sent" runat="server" Text="Send Message" CssClass="btn btn-outline-warning" />
                 
                </div>

              </div>
            </div>
          </div><!-- End Contact Form -->

        </div>

      </div>

    </section><!-- /Contact Section -->
</asp:Content>
