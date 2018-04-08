<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="Agarwood.Admins.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:FileUpload ID="imagefileUploadControl" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" style="left: -1px; bottom: 1px" />
        <br />
        <br />
        <asp:Image ID="CurrentImage" runat="server" Height="200px" Width="250px" />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-bottom: 0px" Text="addlist" />
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
