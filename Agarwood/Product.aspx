<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Agarwood.Product" %>
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
        <div class="main-product" style="height: 1467px">
    <h2>Incense Bakhoor/Oud</h2>
<div class="row">
  <div class="column">
      <a href="BakhoorOudRose.aspx" runat="server">
    <img src="oud/bakhoor oud rose.jpg" style="width:100%"  class="hover-shadow cursor" runat="server"></a> <p>bakhoor oud rose</p> <p>$20</p>
  </div>
  <div class="column">
      <a href="BakhoorSultan.aspx" runat="server">
    <img src="oud/Bakhoor Sultan Al Oud.jpg" style="width:100%"  class="hover-shadow cursor" runat="server"></a> <p>Bakhoor Sultan Al Oud</p> <p>$20</p>
  </div>
  <div class="column">
      <a href="AlArab.aspx" runat="server">
    <img src="oud/BAKHOOR AL ARAB.jpg" style="width:100%"  class="hover-shadow cursor" runat="server"></a> <p>BAKHOOR AL ARAB</p> <p>$20</p>
  </div>
  <div class="column">
      <a href="AlMajalis.aspx" runat="server">
    <img src="oud/BAKHOOR AL MAJALIS.jpg" style="width:100%"  class="hover-shadow cursor" runat="server"></a> <p>BAKHOOR AL MAJALIS </p> <p>$20</p>
  </div>
     <div class="column">
         <a href="Farhah.aspx" runat="server">
    <img src="oud/Bakhoor Farhah.jpg" style="width:100%"  class="hover-shadow cursor" runat="server"></a> <p>Bakhoor Farhah</p> <p>$20</p>
  </div>
     <div class="column">
         <a href="Majoon.aspx" runat="server">
    <img src="oud/BAKHOOR MAJOON AL REHAB.jpg" style="width:100%"  class="hover-shadow cursor" runat="server"></a> <p>BAKHOOR MAJOON AL REHAB</p> <p>$20</p>
  </div>
    <div class="column">
        <a href="Adeni.aspx" runat="server">
    <img src="oud/BAKHOUR ADENI.jpg" style="width:100%"  class="hover-shadow cursor" runat="server"></a> <p>BAKHOUR ADENI</p> <p>$20</p>
  </div>
    <div class="column">
        <a href="Royal.aspx" runat="server">
    <img src="oud/ROYAL BAKHOUR.jpg" style="width:100%"  class="hover-shadow cursor" runat="server"></a> <p>ROYAL BAKHOUR</p> <p>$20</p>
  </div>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="143px" ImageUrl='<%# Eval("ProductImage") %>' Width="194px" />
            <br />
            ProductName:
            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
            <br />
            ProductID:
            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            ProductDetails:
            <asp:Label ID="ProductDetailsLabel" runat="server" Text='<%# Eval("ProductDetails") %>' />
            <br />
            ProductQuantity:
            <asp:Label ID="ProductQuantityLabel" runat="server" Text='<%# Eval("ProductQuantity") %>' />
            <br />
            ProductPrice:
            <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Eval("ProductPrice") %>' />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" style="left: 0px; bottom: -6px; width: 146px; height: 36px" Text="View" />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626502_co5027_asgConnectionString3 %>" SelectCommand="SELECT * FROM [view product]"></asp:SqlDataSource>
    <br />
</div>
        </div>
    </form>
</asp:Content>
