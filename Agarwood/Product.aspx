<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Agarwood.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Products
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <section id="container">
        <ul id="stage" style="height: 1480px;">
            <li>
                <img src="product oud/Bakhoor Sultan Al Oud.jpg" alt="Bakhoor Oud Rose"/>
            
                <div>
                    <h4>Bakhoor Sultan Al Oud</h4>
                </div>
            </li>
            <li>
                <a href="BakhoorOudRose.aspx">
                <img src="product oud/bakhoor oud rose.jpg" alt="Bakhoor Oud Rose"/>
            </a>
                <div>
                    <h4>Bakhoor Oud Rose</h4>
                </div>
            </li>
        </ul>
    </section>
</asp:Content>
