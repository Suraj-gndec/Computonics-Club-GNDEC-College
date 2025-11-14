<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/UserPanel/userpage.Master" CodeBehind="team.aspx.vb" Inherits="Computonic_Club.team" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets\css\team1.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-title dark-background" style="background-image: url(assets/img/gne_front.jpg);">
        <div class="container position-relative">
            <h3>Computonics Teams</h3>
            <nav class="breadcrumbs">
                <ol>
                    <li><a href="Default.aspx">Home</a></li>
                    <li class="current">Team Member</li>
                </ol>
            </nav>
        </div>
    </div><br />

    <section id="team" class="team section">
        <div class="container">
            <div class="row gy-4">

                <asp:Repeater ID="rptTeamMembers" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
                            <div class="team-member d-flex align-items-start">
                                <div class="pic">
                                    <img src='<%# ResolveUrl("~/TeamImages/") & Eval("image_filename") %>' class="img-fluid" alt='<%# Eval("name") %>'>
                                </div>
                                <div class="member-info">
                                    <h4><%# Eval("name") %></h4>
                                    <span class="text-black"><%# Eval("designation") %></span>
                                    <p class="text-black"><%# Eval("description") %></p>
                                </div>
                            </div>
                        </div>
                        </ItemTemplate>
                </asp:Repeater>
                </div>
        </div>
    </section></asp:Content>
