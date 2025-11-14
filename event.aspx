<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/UserPanel/userpage.Master" CodeBehind="events.aspx.vb" Inherits="Computonic_Club.events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Page Title -->
 <div class="page-title dark-background" style="background-image: url(assets/img/gne_front.jpg);">
   <div class="container position-relative">
     <h1>Past Events</h1>
     <nav class="breadcrumbs">
       <ol>
         <li><a href="Default.aspx">Home</a></li>
         <li class="current">Past Events</li>
       </ol>
     </nav>
   </div>
 </div><!-- End Page Title -->

    <div class="container mt-4">
    <div class="row gap-4 justify-content-center">
        <asp:Repeater ID="pasteventrepeat" runat="server">
            <ItemTemplate>
                <div class="col-12 col-sm-6 col-md-4 col-lg-3 d-flex">
                    <div class="card shadow-sm w-100" style="width: 18rem;">
                    <img src='<%# ResolveUrl("~/pasteventspic/" & Eval("event_pic")) %>' class="card-img-top" alt="Card image" style="object-fit: cover; height: 200px; border-top-left-radius: .75rem; border-top-right-radius: .75rem;">
                    <div class="card-body d-flex flex-column justify-content-between">
                          <p class="card-text text-center"><%# Eval("event_title") %></p>
                          <p class="card-text text-center"><%# Eval("event_date") %></p>
                    </div>
                        </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
        <br />
</div>

</asp:Content>
