<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Agarwood.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
        The Scent of Oud
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    <a class:"headlogo">
        <img src="images/title.png" class="main-logo" alt="go-to-homepage" /></a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    <h2>Login Form</h2>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <section class="container">
    <div class="login">
      <h1 class="login-head">Please Login</h1>
      <form method="post" action="#">
        <p class="user-p"><input type="text" name="login" value="" placeholder="Username"></p>
        <p class="user-p" ><input type="password" name="password" value="" placeholder="Password"></p>
        <p class="remember_me">
          <label>
            <input type="checkbox" name="remember_me" id="remember_me">
            Remember me
          </label>
        </p>
        <p class="submit"><input type="submit" name="commit" value="Login"></p>
      </form>
    </div>

    <div class="login-help">
      <p class="user-p">Forgot your password? <a href="#">Click here to reset it</a>.</p>
    </div>
  </section>
</asp:Content>
