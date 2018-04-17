<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="Product2.aspx.cs" Inherits="Agarwood.Product2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate><ul></HeaderTemplate>

            <ItemTemplate>
                <li>
                <a href="<%#Eval("ProductId","ProductView.aspx?Id={0}") %>">
                    <%#Eval("ProductName") %>
                    <%#Eval("ProductPrice") %>
                    <%#Eval("ProductDetails") %>
                    <%#Eval("ProductQuantity") %>
                    <%#Eval("ProductImage") %>
                </a>
                    </li>
            </ItemTemplate>

            <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626502_co5027_asgConnectionString3 %>" SelectCommand="SELECT * FROM [view product]"></asp:SqlDataSource>
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
