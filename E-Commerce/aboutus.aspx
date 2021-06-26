﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="ecom.aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MyShop</title>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">

</head>
<body>
    <form id="form1" runat="server">
<section class="text-gray-700 body-font relative">
  <div class="absolute inset-0 bg-gray-300">
    <iframe width="100%" height="100%" frameborder="0" marginheight="0" marginwidth="0" title="map" scrolling="no" src="https://maps.google.com/maps?width=100%&height=600&hl=en&q=%C4%B0zmir+(My%20Business%20Name)&ie=UTF8&t=&z=14&iwloc=B&output=embed" style="filter: grayscale(1) contrast(1.2) opacity(0.4);"></iframe>
  </div>
  <div class="container px-5 py-24 mx-50 ">
    <div class="lg:w-1/3 md:w-1/2 bg-white rounded-lg p-8 flex flex-col md:ml-auto w-full mt-10 md:mt-0 relative z-10">
      <h2 class="text-gray-900 text-lg mb-1 font-medium title-font">From The CEO's Desk</h2>
      <p class="leading-relaxed mb-5 text-gray-600">CEO WRITES SOME TEXT HERE AND THERE AND A LOT OF TEXT COMES HERE CAUSE ITS A boring artivle written by a ceo that nobody really wants to read except some international investors</p>
       <asp:Button class="text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded text-lg"  ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" />
      
    </div>
  </div>
</section>


    </form>
</body>
</html>
