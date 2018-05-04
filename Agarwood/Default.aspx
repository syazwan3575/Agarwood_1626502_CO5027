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
    <form id="form1" runat="server">
        <div class="main-content">
    <h2 class="homepage">Incense Bakhoor/Oud</h2>

 <div class="row">
     <br />
    
<div class="column">
      <a href="ProductView.aspx?Id=6" runat="server">
    <img src="Product/Sultan.jpg" style="width:100%" alt="Sultan" class="hover-shadow cursor"></a> <p>Bakhour Adeni</p> <p>$35</p> 
  </div>
  
      <div class="column">
      <a href="ProductView.aspx?Id=8" runat="server">
    <img src="Product/ADENI.jpg" style="width:100%" alt="Adeni" class="hover-shadow cursor"></a> <p>Bakhour Adeni</p> <p>$35</p> 
  </div>                       
       
      <div class="column">
      <a href="ProductView.aspx?Id=1" runat="server">
    <img src="Product/ARAB.jpg" style="width:100%" alt="Arab" class="hover-shadow cursor"></a> <p>Bakhour Al Arab</p> <p>$35</p> 
  </div>
           <div class="column">
      <a href="ProductView.aspx?Id=3" runat="server">
    <img src="Product/Farhah.jpg" style="width:100%" alt="Farhah" class="hover-shadow cursor"></a> <p>Bakhour Farhah</p> <p>$35</p> 
  </div>
            </div>
        </div>
       
    </form>
</asp:Content>

