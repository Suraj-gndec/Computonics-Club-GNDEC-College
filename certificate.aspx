<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/UserPanel/userpage.Master" CodeBehind="certificate.aspx.vb" Inherits="Computonic_Club.certificate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-title dark-background" style="background-image: url(assets/img/gne_front.jpg);">
        <div class="container position-relative">
            <h1>Track Certificate</h1>
            <nav class="breadcrumbs">
                <ol>
                    <li><a href="Default.aspx">Home</a></li>
                    <li class="current">Track Certificate</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- end page title -->
    <br />
                <div class="container">
         <div class="row">
             <div class="col-md-6 mx-auto">
                 <div class="card">
                     <div class="card-body">
                         <div class="row">
                             <div class="col">
                                 <center>
                                     <h3>Download Certificate</h3>
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

                         <!-- Name -->
                         <div class="row">
                             <div class="col">
                                 <asp:Label ID="LabelName" runat="server" Text="Name:"></asp:Label>
                                 <asp:TextBox ID="sttxtName" runat="server" CssClass="form-control" />
                             </div>
                         </div>
                         <br />

                         <!-- Class -->
                         <div class="row">
                             <div class="col">
                                 <asp:Label ID="LabelClass" runat="server" Text="Branch:"></asp:Label>
                                 <asp:TextBox ID="sttxtClass" runat="server" CssClass="form-control" />
                             </div>
                         </div>
                         <br />

                         <!-- Roll Number -->
                         <div class="row">
                             <div class="col">
                                 <asp:Label ID="LabelRoll" runat="server" Text="CRN:"></asp:Label>
                                 <asp:TextBox ID="sttxtRoll" runat="server" CssClass="form-control" />
                             </div>
                         </div>
                         <br />

                         <!-- Date -->
                         <div class="row">
                             <div class="col">
                                 <asp:Label ID="LabelDate" runat="server" Text="Date:"></asp:Label>
                                 <asp:TextBox ID="sttxtDate" runat="server" CssClass="form-control" TextMode="Date" />
                             </div>
                         </div>
                         <br />

                      
                         <br />

                         <!-- Upload Button -->
                         <div class="row">
                             <div class="d-grid gap-2">
                                 <asp:Button ID="btndownload" runat="server" Text="Download" CssClass="btn btn-warning" OnClientClick="clearForm();"/>
                                  
                             </div>
                         </div>
                         <br />

                       
                         
                     </div>
                 </div>
             </div>
         </div>
     </div>          


     <br />           



               
 <script type="text/javascript">
    function clearForm() {
        // Delay form clear to allow download to trigger
        setTimeout(function () {
            document.getElementById('<%= sttxtName.ClientID %>').value = '';
            document.getElementById('<%= sttxtClass.ClientID %>').value = '';
            document.getElementById('<%= sttxtRoll.ClientID %>').value = '';
            document.getElementById('<%= sttxtDate.ClientID %>').value = '';
        }, 1000); // Wait a bit before clearing
    }
 </script>
 
</asp:Content>
