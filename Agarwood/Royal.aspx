<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="BakhoorOudRose.aspx.cs" Inherits="Agarwood.BakhoorOudRose" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    The Scent of Oud
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
        <a class:"headlogo">
        <img src="images/title.png" class="main-logo" alt="go-to-homepage" /></a>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
        <h1>"ROYAL BAKHOUR"</h1>
    <a href="Product.aspx" runat="server">
    <p>Back</p></a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
       <form id="form1" runat="server">
            <div class="main-product">
    <div class="row">
    <div class="column">
    <img src="oud/ROYAL BAKHOUR.jpg" style="width:100%"  class="hover-shadow cursor"> 
  </div>
   <table>
  
  <tr>
    <td style="height: 50px">
        <asp:Label ID="lblCapacity" runat="server" Text="Capacity"></asp:Label>
      </td>
    <td style="height: 50px">
        <asp:Label ID="Label4" runat="server" Text="35 Gram"></asp:Label>
      </td>
    
  </tr>
  <tr>
    <td style="height: 49px">
        <asp:Label ID="Label1" runat="server" Text="Rates"></asp:Label>
      </td>
    <td>
        <div class="rating">
<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
</div>
    </td>
    
  </tr>
  <tr>
    <td>
        <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
      </td>
    <td>
        <asp:Label ID="Label5" runat="server" Text="$55"></asp:Label>
      </td>
    
  </tr>
         <tr>
    <td>
        <asp:Label ID="Label6" runat="server" Text="Item"></asp:Label>
             </td>
    <td>                    <asp:DropDownList ID="ProductItem" runat="server">
                        <asp:ListItem Text="--Select--" Selected="True" Value="none"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ProductItem" ErrorMessage="*Please select the item"></asp:RequiredFieldValidator>
             </td>
    
  </tr>
       <tr>
           <td>

               <asp:Label ID="Label7" runat="server" Text="Shipping"></asp:Label>

           </td>
           <td>

               &nbsp;</td>
       </tr>
</table>
        </div>

            </div>
        </form>
</asp:Content>