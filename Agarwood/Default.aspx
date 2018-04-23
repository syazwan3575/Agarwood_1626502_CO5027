<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Agarwood.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    The Scent of Oud
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    <a class:"headlogo">
        <img src="images/title.png" class="main-logo" alt="go-to-homepage" /></a>
       
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
 
        <div class="slideshow-container" style="left: 0px; top: 0px; height: 50px">
<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="images/bakhoor al emarat.jpg" >
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="images/bakhoor anfas.jpg" >

</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/sabaya bakhoor.jpg" ></div>
</div>


<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
<script>
    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) { slideIndex = 1 }
        slides[slideIndex - 1].style.display = "block";
        setTimeout(showSlides, 2000); // Change image every 2 seconds
    }
</script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-content">
    <h2 class="homepage">Incense Bakhoor/Oud</h2>

 <div class="row">
  <div class="column">
      <a href="Contact.aspx" runat="server">
    <img src="images/contact.jpg" style="width:100%"  class="hover-shadow cursor"></a> <p>Feel free to contact us.</p> 
  </div>
  
  <div class="column">
      <a href="Products.aspx" runat="server">
    <img src="images/product.jpg" style="width:100%"  class="hover-shadow cursor"></a> <p>Find out more!</p>
  </div>
    
  <div class="column">
      <a href="Register.aspx" runat="server">
    <img src="images/register.jpg" style="width:100%"  class="hover-shadow cursor"></a> <p>Be our member.</p> 
  </div>
      
     </div>
        </div>
</asp:Content>

