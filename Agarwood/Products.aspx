<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Agarwood.ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
        The Scent of Oud
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    <a class:"headlogo">
        <img src="images/title.png" class="main-logo" alt="go-to-homepage" /></a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    <h2>View Product</h2>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mainForm">
    <form id="form1" runat="server">
        <div style="text-align: right">
        You have product in your cart:
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddtoCart.aspx">Show Cart</asp:HyperLink>
        </div>
        <asp:DataList ID="Productlist" runat="server" DataKeyField="ProductID" DataSourceID="SqlDataSource1" RepeatColumns="3" BorderColor="#DEDFDE" OnSelectedIndexChanged="Productlist_SelectedIndexChanged" OnItemCommand="Productlist_ItemCommand" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" >
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F7DE" HorizontalAlign="Center" />
            <ItemTemplate>
                <div style="text-align: center">
                    <a href="<%#Eval("ProductId","ProductView.aspx?Id={0}") %>">
                    <asp:Image ID="Image1" runat="server" Height="180px" ImageUrl='<%# Eval("ProductImage") %>' Width="189px" />
                        </a>
                    &nbsp;<br />Name:&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                    &nbsp;<br />Price:
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductPrice") %>'></asp:Label>
                    <br />
                    <br />
                    Quantity:
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
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
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="ADD TO CART" />
                    <br />
                </div>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
        </asp:DataList>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626502_co5027_asgConnectionString3 %>" SelectCommand="SELECT * FROM [view product]"></asp:SqlDataSource>
        <br />
</form>
       </div> 
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
