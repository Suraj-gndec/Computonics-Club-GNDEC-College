<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/UserPanel/userpage.Master" CodeBehind="gallery.aspx.vb" Inherits="Computonic_Club.gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Title -->
    <div class="page-title dark-background" style="background-image: url(assets/img/gne_front.jpg);">
      <div class="container position-relative">
        <h1>Gallery</h1>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="Default.aspx">Home</a></li>
            <li class="current">Gallery</li>
          </ol>
        </nav>
      </div>
    </div><!-- End Page Title -->

    <!-- Projects Section -->
    <section id="projects" class="projects section">

      <div class="container">

        <div class="isotope-layout" data-default-filter="*" data-layout="masonry" data-sort="original-order">

          <div class="row gy-4 isotope-container" data-aos="fade-up" data-aos-delay="200">
            
           
            <asp:Repeater ID="rptGallery" runat="server">
                <ItemTemplate>
                    <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-construction">
                        <div class="portfolio-content h-100">
                            <img src='<%# ResolveUrl("~/GalleryImages/") & Eval("filename") %>' 
                                 class="img-fluid" 
                                 alt='<%# Eval("caption") %>'
                                 style="width: 100%; height: 300px; object-fit: cover;">
                            <div class="portfolio-info">
                                <h4 style="font-size: 1.1rem;"><%# Eval("caption") %></h4>
                                
                               
                                <a href='<%# ResolveUrl("~/GalleryImages/") & Eval("filename") %>' 
                                   data-gallery="portfolio-gallery-product" 
                                   class="glightbox preview-link" 
                                   title='<%# Eval("caption") %>'>
                                    <i class="bi bi-zoom-in"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
           

           
            
          </div>

        </div>
      </div>
    </section>
</asp:Content>
