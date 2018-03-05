<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Agarwood.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
        The Scent of Oud
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
        <a class:"headlogo">
        <img src="images/title.png" class="main-logo" alt="go-to-homepage" /></a>
       
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    <h1>The story behind Agarwood</h1>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
        <h1>Our Location</h1>
<div id="map" style="text-align: center">
    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d254421.30240668537!2d114.95193053203126!3d4.883811047169224!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbn!4v1520211389420" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>
</asp:Content>
