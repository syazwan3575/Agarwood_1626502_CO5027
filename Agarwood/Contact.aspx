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
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <p>
            <asp:Label ID="Email" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="txtEmail_TextChanged"></asp:TextBox>
            <asp:RegularExpressionValidator ID="ValidEmail" runat="server" ErrorMessage="Email Is Not Valid" ControlToValidate="txtEmail" Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="reqEmailField" runat="server" ControlToValidate="txtEmail" Display="None" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>
            <asp:TextBox ID="txtSubject" runat="server" placeholder="Subject"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqSubjectField" runat="server" ControlToValidate="txtSubject" ErrorMessage="please enter your subject" Display="None"></asp:RequiredFieldValidator>
        </p>
        <p>
           <asp:Label ID="lblBody" runat="server" Text="Body"></asp:Label>
           <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqBodyField" runat="server" ControlToValidate="txtBody" ErrorMessage="please enter your body" Display="None"></asp:RequiredFieldValidator>
        </p>
        <p>
           <asp:Button ID="btnSendEmail" runat="server" Text="Send Email" placeholder="Your Message" OnClick="btnSendEmail_Click"/>
        </p>
        <p>
           <asp:Literal ID="litResult" runat="server"></asp:Literal>
        </p>
    </form>

</asp:Content>

      <asp:Content ID="Content5" runat="server"  ContentPlaceHolderID="GoogleMap">
          <div id="map">
    <script>

        function initMap() {
            var uluru = { lat: 4.885724, lng: 114.931654 };
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 20,
                center: uluru
            });
            var marker = new google.maps.Marker({
                position: uluru,
                map: map
            });
        }

    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCdE36938soUfZj1Q3zN1ks2Hu-l6wRSs&callback=initMap" async defer></script>  
              </div>
    </asp:Content>
