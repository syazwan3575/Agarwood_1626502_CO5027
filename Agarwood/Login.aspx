<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Agarwood.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <div class="login">
    <form id="form1" runat="server">
        <asp:Label ID="Username" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtLoginPassword" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Button" />
        <br />
        <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
    </form>
        </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
