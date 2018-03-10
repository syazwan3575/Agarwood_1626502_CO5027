<%@ Page Title="" Language="C#" MasterPageFile="~/Sitemaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Agarwood.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    The Scent of Oud
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    <a class:"headlogo">
        <img src="images/title.png" class="main-logo" alt="go-to-homepage" /></a>
       
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Heading2" runat="server">
 
        <div class="slideshow-container">
<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="images/bakhoor al emarat.jpg" class="slider" >
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="images/bakhoor anfas.jpg" class="slider">

</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/sabaya bakhoor.jpg" class="slider"></div>
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
    <h2 >Incense Bakhoor/Oud</h2>

 <div class="row">
  <div class="column">
      <a href="BakhoorOudRose.aspx" runat="server">
    <img src="oud/bakhoor oud rose.jpg" style="width:100%"  class="hover-shadow cursor"></a> <p>bakhoor oud rose</p> <p>$20</p>
  </div>
  
  <div class="column">
      <a href="BakhoorSultan.aspx" runat="server">
    <img src="oud/Bakhoor Sultan Al Oud.jpg" style="width:100%"  class="hover-shadow cursor"></a> <p>Bakhoor Sultan Al Oud</p> <p>$20</p>
  </div>
    
  <div class="column">
      <a href="AlArab.aspx" runat="server">
    <img src="oud/BAKHOOR AL ARAB.jpg" style="width:100%"  class="hover-shadow cursor"></a> <p>BAKHOOR AL ARAB</p> <p>$20</p>
  </div>
      
     <div class="column">
          <a href="AlMajalis.aspx" runat="server">
    <img src="oud/BAKHOOR AL MAJALIS.jpg" style="width:100%"  class="hover-shadow cursor"></a> <p>BAKHOOR AL MAJALIS </p> <p>$20</p>
  </div>
     </div>
        </div>
</asp:Content>

