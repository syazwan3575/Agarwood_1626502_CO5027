<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Agarwood.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
            The Scent of Oud
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
        <a class:"headlogo">
        <img src="images/title.png" class="main-logo" alt="go-to-homepage" /></a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    <h1>Account Form</h1> 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    
    <section id="first_content">
        <h2>Log in your account</h2>
        <form id="form2" runat="server" style="height: 221px">
    <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtLoginPassword" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
    <br />
    <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
        </form>
 </section>

    <section id="second_content">
        <h2>Be our member?</h2>
            <form id="form1" runat="server">
        <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtRegPassword" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <br />
                <asp:Button ID="btnReg" runat="server" OnClick="btnReg_Click1" Text="Register" />
        <br />
        <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
    </form>
    </section>
    
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
