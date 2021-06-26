<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="ecom.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">

</head>
<body>
<form id="form1" runat="server">

<section class="text-gray-700 body-font relative">
  <div class="container px-5 py-24 mx-auto flex sm:flex-no-wrap flex-wrap">
    <div class="lg:w-2/3 md:w-1/2 bg-gray-300 rounded-lg overflow-hidden sm:mr-10 p-10 flex items-end justify-start relative">
      <iframe width="100%" height="100%" class="absolute inset-0" frameborder="0" title="map" marginheight="0" marginwidth="0" scrolling="no" src="https://www.google.com/maps/place/Industrial+Area,+Andheri+West,+Mumbai,+Maharashtra+400047/@19.1338625,72.8323834,17z/data=!3m1!4b1!4m5!3m4!1s0x3be7b624120ad0d3:0xc62901e936383923!8m2!3d19.1334147!4d72.834562" style="filter: grayscale(1) contrast(1.2) opacity(0.4);"></iframe>
      <div class="bg-white relative flex flex-wrap py-6">
        <div class="lg:w-1/2 px-6">
          <h2 class="title-font font-medium text-gray-900 tracking-widest text-sm">REACH US AT</h2>
          <p class="leading-relaxed">Myshop pvt ltd, 45/321 Industry park,Mumbai</p>
        </div>
        <div class="lg:w-1/2 px-6 mt-4 lg:mt-0">
          <h2 class="title-font font-medium text-gray-900 tracking-widest text-sm">EMAIL US AT</h2>
          <a class="text-indigo-500 leading-relaxed">customercare@myshop.com</a>
          <h2 class="title-font font-medium text-gray-900 tracking-widest text-sm mt-4">PHONE</h2>
          <p class="leading-relaxed">1800-231-900</p>
        </div>
      </div>
    </div>
    <div class="lg:w-1/3 md:w-1/2 bg-white flex flex-col md:ml-auto w-full md:py-8 mt-8 md:mt-0">
      <h2 class="text-gray-900 text-lg mb-1 font-medium title-font">Feedback</h2>
      <p class="leading-relaxed mb-5 text-gray-600">Eager to hear from you......get in touch</p>
        <asp:TextBox class="bg-white rounded border border-gray-400 focus:outline-none focus:border-indigo-500 text-base px-4 py-2 mb-4"  ID="TextBox1" runat="server">Name</asp:TextBox>
        <asp:TextBox class="bg-white rounded border border-gray-400 focus:outline-none focus:border-indigo-500 text-base px-4 py-2 mb-4"  ID="TextBox2" runat="server" TextMode="Email">Email</asp:TextBox>
        <asp:TextBox class="bg-white rounded border border-gray-400 focus:outline-none h-32 focus:border-indigo-500 text-base px-4 py-2 mb-4 resize-none" ID="TextBox3" runat="server" TextMode="MultiLine">Message</asp:TextBox>
        <asp:Button class="text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded text-lg" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <asp:Button class="text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded text-lg" ID="Button2" runat="server" Text="HOME" OnClick="Button2_Click" />
        <asp:Label class="text-xs text-gray-500 mt-3" ID="Label1" runat="server" Text=""></asp:Label>
    </div>
  </div>
</section>
      
</form>
</body>
</html>
