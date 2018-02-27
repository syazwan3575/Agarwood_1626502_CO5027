<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Agarwood.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    The Scent of Oud
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    <a class:"headlogo">
        <img src="images/title.png" class="main-logo" alt="go-to-homepage" /></a>
       
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
     <div id="container_home">
        <div id="slider" >
<figure>
<img src="images/bakhoor al emarat.jpg">
        
<img src="images/bakhoor anfas.jpg" >
            
<img src="images/bakhoor araisy.jpg" >
               
<img src="images/dubai.jpg" >
</figure>	

</div>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <h2 >Incense Bakhoor/Oud</h2>
 <div class="row">
  <div class="column">
      <a href="BakhoorOudRose.aspx" runat="server">
    <img src="oud/bakhoor oud rose.jpg" style="width:100%"  class="hover-shadow cursor"></a> <p>bakhoor oud rose</p> <p>$20</p>
  </div>
  <div class="column">
    <img src="oud/Bakhoor Sultan Al Oud.jpg" style="width:100%"  class="hover-shadow cursor"> <p>Bakhoor Sultan Al Oud</p> <p>$20</p>
  </div>
  <div class="column">
    <img src="oud/BAKHOOR AL ARAB.jpg" style="width:100%"  class="hover-shadow cursor"> <p>BAKHOOR AL ARAB</p> <p>$20</p>
  </div>
     <div class="column">
    <img src="oud/BAKHOOR AL MAJALIS.jpg" style="width:100%"  class="hover-shadow cursor"> <p>BAKHOOR AL MAJALIS </p> <p>$20</p>
  </div>
     </div>
</asp:Content>

