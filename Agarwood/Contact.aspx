<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Agarwood.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
        The Scent of Oud
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
        <a class:"headlogo">
        <img src="images/title.png" class="main-logo" alt="go-to-homepage" /></a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">
        <p>
            <asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>
            <asp:TextBox ID="txtSubject" runat="server" placeholder="Subject"></asp:TextBox>
        </p>
        <p>
           <asp:Label ID="lblBody" runat="server" Text="Body"></asp:Label>
           <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine"></asp:TextBox>
        </p>
        <p>
           <asp:Button ID="btnSendEmail" runat="server" Text="Send Email" placeholder="Your Message" OnClick="btnSendEmail_Click"/>
        </p>
        <p>
           <asp:Literal ID="litResult" runat="server"></asp:Literal>
        </p>
    </form>
    <div id="map"></div>
    <script>
        var map;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: -34.397, lng: 150.644 },
                zoom: 8
            });
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCdE36938soUfZj1Q3zN1ks2Hu-l6wRSs&callback=initMap" async defer></script>
</asp:Content>
