﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="Agarwood.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626502_co5027_asgConnectionString3 %>" SelectCommand="SELECT * FROM [view product] WHERE ([ProductID] = @ProductID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />



        <!--<asp:Button ID="btnAdd" runat="server"  Text="Add to Cart" />-->


        <asp:FormView ID="FormView2" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Height="283px" Width="628px">
            <EditItemTemplate>
                ProductImage:
                <asp:TextBox ID="ProductImageTextBox" runat="server" Text='<%# Bind("ProductImage") %>' />
                <br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductID:
                <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                ProductDetails:
                <asp:TextBox ID="ProductDetailsTextBox" runat="server" Text='<%# Bind("ProductDetails") %>' />
                <br />
                ProductQuantity:
                <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                <br />
                ProductPrice:
                <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ProductImage:
                <asp:TextBox ID="ProductImageTextBox" runat="server" Text='<%# Bind("ProductImage") %>' />
                <br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ProductID:
                <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                <br />
                ProductDetails:
                <asp:TextBox ID="ProductDetailsTextBox" runat="server" Text='<%# Bind("ProductDetails") %>' />
                <br />
                ProductQuantity:
                <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
                <br />
                ProductPrice:
                <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table >
                    <tr>
                        <td rowspan="5">
                            <asp:Image ID="Image2" runat="server" Height="151px" ImageUrl='<%# Eval("ProductImage") %>' Width="135px" />
                        </td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="ID"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Price"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="Quantity"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("ProductQuantity") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label15" runat="server" Text="Type"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label14" runat="server" Text='<%# Eval("ProductDetails") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
        <asp:Button ID="btnPurchase" runat="server" Text="Buy Now" OnClick="btnPurchase_Click" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View More" />

        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True">1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
        </asp:DropDownList>

        <br />

        <h3>If you want to add this product on the shopping cart, please select your product name on the dropdown list and click the button cart below.</h3>
    <table align="left" style="margin-top :40px; font-size :18px;" cellpadding="10">
 <tr>
 <td>
 Select Product
 </td>
 <td>  
     
     &nbsp;</td>
 </tr>

 <tr>
 <td >
     
     <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
         <asp:ListItem>SELECT</asp:ListItem>
         <asp:ListItem>BAKHOOR AL ARAB</asp:ListItem>
         <asp:ListItem>BAKHOOR AL MAJALIS</asp:ListItem>
         <asp:ListItem>Bakhoor Farhah</asp:ListItem>
         <asp:ListItem>BAKHOOR MAJOON AL REHAB</asp:ListItem>
         <asp:ListItem>bakhoor oud rose</asp:ListItem>
         <asp:ListItem>Bakhoor Sultan Al Oud</asp:ListItem>
         <asp:ListItem>BAKHOUR ADENI</asp:ListItem>
         <asp:ListItem>ROYAL BAKHOUR</asp:ListItem>
     </asp:DropDownList>
     
 </td> 
 </tr>
 <tr>
 <td>
     <asp:Image ID="Item" runat="server" Width="150px" />
     <asp:Label ID="Name" runat="server"  Font-Bold ="True"></asp:Label>
 </td>
  </tr>
 <tr>
  <td colspan="2" align="center">
      <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="ADD TO CART" />
 </td>
 </tr>
 </table>
    
        </form>


        
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
