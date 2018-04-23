<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Agarwood.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
        The Scent of Oud
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
        <a class:"headlogo">
        <img src="images/title.png" class="main-logo" alt="go-to-homepage" /></a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
  
    <h2>
        Register with us</h2>
  
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtRegPassword" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" />
        <br />
        <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
