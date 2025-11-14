<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/UserPanel/userpage.Master" CodeBehind="login.aspx.vb" Inherits="Computonic_Club.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page Title -->
    <div class="page-title dark-background" style="background-image: url(assets/img/gne_front.jpg);">
        <div class="container position-relative">
            <h1>Login</h1>
            <nav class="breadcrumbs">
                <ol>
                    <li><a href="Default.aspx">Home</a></li>
                    <li class="current">Login</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- End Page Title -->
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150" src="assets/img/add-user-add.png"></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Login</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">

                                <div class="form-group">
                                    <label class="form-label">ID</label>
                                   <%-- <input  type="text" name="name" class="form-control" placeholder="Member ID" id="txtmemberid" required=""/>--%>
                                    <asp:TextBox ID="txtmemberid" runat="server" CssClass="form-control" placeholder="Member ID"></asp:TextBox>
                                    <label class="form-label">Password</label>
                         <%--           <input  type="password" name="name" class="form-control" placeholder="Password" id="txtpass" required=""/>--%>
                                    <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>


                                <br />



                                <div class="d-grid gap-2">
                                    <asp:Button ID="btn_login" runat="server" Text="Login" CssClass="btn btn-warning" />
                                   <%-- <button type="submit" id="" class="">Login</button>--%>
                                 
                                </div>

                            </div>
                        </div>



                    </div>

                </div>
                
                <br />
                <br />

            </div>
        </div>
    </div>
  
</asp:Content>
