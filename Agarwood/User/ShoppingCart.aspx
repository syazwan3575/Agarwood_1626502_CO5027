<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Agarwood.Admins.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
    <h1>Shopping Cart</h1>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Products.aspx">Continue Shopping</asp:HyperLink>
       
        <div>
        
        <table align="center" cellpadding="10">
       <tr>
         <td>
             <asp:Button ID="Button1" runat="server" Text="&lt;&lt;" Width="60px" 
                 onclick="Button1_Click" Visible="False" />
         </td>
         <td>
             <asp:Button ID="Button2" runat="server" Text="&gt;&gt;" Width="60px" 
                 onclick="Button2_Click" Visible="False" />
         </td>
          <td>
              <asp:Label ID="Label4" runat="server"></asp:Label>
          </td>
       </tr>
     </table>

     <center style="margin-top:60px">
         <asp:Label ID="Label3" runat="server" Font-Names="Algerian" Font-Size="Large" Visible="False">No product in the Cart</asp:Label>
     </center>


     <table align="left" style="margin-top:50px;font-size:18px" cellpadding="10" runat="server" id="pd"> 
      <tr>
       <td>Product name</td>
       <td>
           <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="Blue"></asp:Label>
       </td>
      </tr>

      <tr>
       <td>Product photo</td>
       <td>
           <asp:Image ID="Image1" runat="server" Width="100px" />
       </td>
      </tr>

      <tr>
       <td>Product price</td>
       <td>
           <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Large" 
               ForeColor="Blue"></asp:Label>
       </td>
      </tr>
      </table>
    </div>
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
