<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="Agarwood.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Scent of Oud
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Products.aspx">Continue Shopping</asp:HyperLink>
    <hr />
<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/User/ShoppingCart.aspx">Show Cart</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        
    <h2>Product added to the cart</h2>
        
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
