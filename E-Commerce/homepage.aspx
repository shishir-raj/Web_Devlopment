<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="ecom.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E-Cart</title>
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
  <header class="text-gray-700 body-font">
  <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
    <a class="flex title-font font-medium items-center text-gray-900 mb-4 md:mb-0">
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-indigo-500 rounded-full" viewBox="0 0 24 24">
        <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
      </svg>
      <span class="ml-3 text-xl">My Shop</span>
    </a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="lg:w-2/5 inline-flex lg:justify-end ml-5 lg:ml-0">
      
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
            &nbsp;<asp:Button class="inline-flex items-center bg-gray-200 border-0 py-1 px-3 focus:outline-none hover:bg-gray-300 rounded text-base mt-4 md:mt-0" ID="Button13" runat="server" Text="Signout" Enabled="False" OnClick="Button13_Click" Visible="False" />
            &nbsp;
      
        <asp:Button  class="inline-flex items-center bg-gray-200 border-0 py-1 px-3 focus:outline-none hover:bg-gray-300 rounded text-base mt-4 md:mt-0" ID="Button4" runat="server" Text="Login" OnClick="Button4_Click1" />
        <asp:Button  class="inline-flex items-center bg-gray-200 border-0 py-1 px-3 focus:outline-none hover:bg-gray-300 rounded text-base mt-4 md:mt-0" ID="Button5" runat="server" Text="Signup" OnClick="Button5_Click" />
    
        </div>
    </div>

    <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">  

    <nav class="md:ml-auto md:mr-auto flex flex-wrap items-center text-base justify-center">
        <asp:Menu class=" hover:text-gray-900 border border-gray-300 px-4 rounded-lg" ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick1">
            <DynamicMenuItemStyle Font-Size="Large" BackColor="White" />
            <Items>
                <asp:MenuItem Text="About Us" Value="About Us" NavigateUrl="~/aboutus.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Products" Value="Products">
                    <asp:MenuItem Text="Men" Value="male">
                        <asp:MenuItem Text="Top" Value="mtop"></asp:MenuItem>
                        <asp:MenuItem Text="Bottom" Value="mbottom"></asp:MenuItem>
                        <asp:MenuItem Text="Shoes" Value="Shoe"></asp:MenuItem>
                        <asp:MenuItem Text="Accessories" Value="mwatch"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Women" Value="female">
                        <asp:MenuItem Text="Top" Value="ftop"></asp:MenuItem>
                        <asp:MenuItem Text="Bottom" Value="fbottom"></asp:MenuItem>
                        <asp:MenuItem Text="Shoes" Value="shoe"></asp:MenuItem>
                        <asp:MenuItem Text="Accessories" Value="fwatch"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Kids" Value="kids"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Contact Us" Value="Contact Us" NavigateUrl="~/contact.aspx"></asp:MenuItem>
                <asp:MenuItem Text="My Cart" Value="cart"></asp:MenuItem>
            </Items>
            <StaticMenuItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Century" Font-Overline="False" Font-Size="X-Large" ItemSpacing="50px" Width="175px" />
            <StaticMenuStyle HorizontalPadding="20px" VerticalPadding="15px" />
        </asp:Menu>
        <asp:TextBox class="bg-white rounded border border-gray-400 focus:outline-none focus:border-indigo-500 text-base px-4 py-2 mb-4" ID="TextBox1" runat="server" Text="Search For"></asp:TextBox>
        <asp:ImageButton class="bg-white rounded border border-gray-400 text-base px-4 py-2 mb-4" ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/download.png" Width="53px" OnClick="ImageButton1_Click" />
      

    </nav>
    </div>
</header>

  <section class="text-gray-700 body-font">
  <div class="container px-5 py-24 mx-auto">
    <div class="flex flex-wrap -m-4">
      <div class="p-4 md:w-1/3">
        <div class="h-full border-2 border-gray-200 rounded-lg overflow-hidden">
          <img src="https://source.unsplash.com/721x401/?clothes" class="lg:h-48 md:h-36 w-full object-cover object-center"  alt="blog">
          <div class="p-6">
            <h2 class="tracking-widest text-xs title-font font-medium text-gray-500 mb-1">NEW</h2>
            <h1 class="title-font text-lg font-medium text-gray-900 mb-3">New Arrivals</h1>
            <p class="leading-relaxed mb-3">Grab the freshly arrived new styles</p>
            <div class="flex items-center flex-wrap ">
                <asp:Button class="flex mx-auto mt-6 text-white bg-indigo-500 border-0 py-2 px-5 focus:outline-none hover:bg-indigo-600 rounded" ID="Button2" runat="server" Text="Check It Out" OnClick="Button2_Click" />
            </div>
          </div>
        </div>
      </div>
      <div class="p-4 md:w-1/3">
        <div class="h-full border-2 border-gray-200 rounded-lg overflow-hidden">
          <img class="lg:h-48 md:h-36 w-full object-cover object-center" src="https://source.unsplash.com/721x400/?SALE" alt="blog">
          <div class="p-6">
            
            <h1 class="title-font text-lg font-medium text-gray-900 mb-3">SALE!!</h1>
            <p class="leading-relaxed mb-3">Check out these exciting deals. Sale on women wear<br />Upto 50% Off!! </p>
            <div class="flex items-center flex-wrap">
                <asp:Button class="flex mx-auto mt-6 text-white bg-indigo-500 border-0 py-2 px-5 focus:outline-none hover:bg-indigo-600 rounded" ID="Button3" runat="server" Text="See Exciting Deals" OnClick="Button3_Click" />
              
            </div>
          </div>
        </div>
      </div>
      <div class="p-4 md:w-1/3">
        <div class="h-full border-2 border-gray-200 rounded-lg overflow-hidden">
          <img class="lg:h-48 md:h-36 w-full object-cover object-center" src="https://source.unsplash.com/721x400/?wallets,sunglasses" alt="blog">
          <div class="p-6">"
            
            <h1 class="title-font text-lg font-medium text-gray-900 mb-3">Accessories</h1>
            <p class="leading-relaxed mb-3">Check out these cool accessories</p>
            <div class="flex items-center flex-wrap ">
                <asp:Button class="flex mx-auto mt-6 text-white bg-indigo-500 border-0 py-2 px-5 focus:outline-none hover:bg-indigo-600 rounded" ID="Button1" runat="server" Text="Check it out " OnClick="Button1_Click" />
              <span class="text-gray-600 mr-3 inline-flex items-center lg:ml-auto md:ml-0 ml-auto leading-none text-sm pr-3 py-1 border-r-2 border-gray-300">
                
              </span>
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="text-gray-700 body-font border border-gray-300 p-6 rounded-lg">
  <div class="container w-full px-0 py-10 mx-auto flex flex-col">
    <div class="lg:w-full mx-auto w-full">
      <div class="rounded-lg h-64 overflow-hidden w-full">

          <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>
                  <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
                  </asp:Timer>
<br />
                  <asp:Image ID="Image1" runat="server" Width="100%" />
              </ContentTemplate>
          </asp:UpdatePanel>
      </div>
    </div>
   </div>
</section>


<section class="text-gray-700 body-font">
  <div class="container px-5 py-24 mx-auto">
    <div class="flex flex-wrap w-full mb-20">
      <div class="lg:w-1/2 w-full mb-6 lg:mb-0">
        <h1 class="sm:text-3xl text-2xl font-medium title-font mb-2 text-gray-900">Latest Trends</h1>
        <div class="h-1 w-20 bg-indigo-500 rounded"></div>
      </div>
      <p class="lg:w-1/2 w-full leading-relaxed text-base">Check out the new collections from your favourite brands and all the trending items. We got everything covered for you. Welcome to your ine stop shoping destination!</p>
    </div>
    <div class="flex flex-wrap -m-4">
      <div class="xl:w-1/4 md:w-1/2 p-4">
        <div class="bg-gray-100 p-6 rounded-lg">
          <img class="h-40 rounded w-full object-cover object-center mb-6" src="https://source.unsplash.com/720x400/?jeans,jean,pant" alt="content">
          <h3 class="tracking-widest text-indigo-500 text-xs font-medium title-font">Jeans</h3>
          <h2 class="text-lg text-gray-900 font-medium title-font mb-4">Jeans</h2>
          <p class="leading-relaxed text-base">Take a look at the day to da jeans with more than 50 styles offered by over 20 brands! <asp:Button  class="flex mx-auto mt-6 text-white bg-indigo-500 border-0 py-2 px-5 focus:outline-none hover:bg-indigo-600 rounded" ID="Button8" runat="server" Text="Check it out" OnClick="Button8_Click" /></p>
        </div>
      </div>
      <div class="xl:w-1/4 md:w-1/2 p-4">
        <div class="bg-gray-100 p-6 rounded-lg">
          <img class="h-40 rounded w-full object-cover object-center mb-6" src="https://source.unsplash.com/721x401/?denim-jacket,leather-jacket" alt="content">
          <h3 class="tracking-widest text-indigo-500 text-xs font-medium title-font">Men and Women</h3>
          <h2 class="text-lg text-gray-900 font-medium title-font mb-4">Jackets</h2>
          <p class="leading-relaxed text-base">CLASSIC.BOLD.TRENDY<br />Upto 30% off! on Denim Jackets <asp:Button  class="flex mx-auto mt-6 text-white bg-indigo-500 border-0 py-2 px-5 focus:outline-none hover:bg-indigo-600 rounded" ID="Button9" runat="server" Text="Check out" OnClick="Button9_Click" /> </p>
        </div>
      </div>
      <div class="xl:w-1/4 md:w-1/2 p-4">
        <div class="bg-gray-100 p-6 rounded-lg">
          <img class="h-40 rounded w-full object-cover object-center mb-6" src="https://source.unsplash.com/722x402/?wristwatch" alt="content">
          <h3 class="tracking-widest text-indigo-500 text-xs font-medium title-font">Accessories</h3>
          <h2 class="text-lg text-gray-900 font-medium title-font mb-4">Watches</h2>
          <p class="leading-relaxed text-base">Your favourite brands at a heavy discounted price. <asp:Button  class="flex mx-auto mt-6 text-white bg-indigo-500 border-0 py-2 px-5 focus:outline-none hover:bg-indigo-600 rounded" ID="Button10" runat="server" Text="Check it out" OnClick="Button10_Click" /></p>
        </div>
      </div>
      <div class="xl:w-1/4 md:w-1/2 p-4">
        <div class="bg-gray-100 p-6 rounded-lg">
          <img class="h-40 rounded w-full object-cover object-center mb-6" src="https://source.unsplash.com/723x403/?handbag" alt="content">
          <h3 class="tracking-widest text-indigo-500 text-xs font-medium title-font">Accessories</h3>
          <h2 class="text-lg text-gray-900 font-medium title-font mb-4">Bags</h2>
          <p class="leading-relaxed text-base">Bags from your favourite brands. New collections out <asp:Button  class="flex mx-auto mt-6 text-white bg-indigo-500 border-0 py-2 px-5 focus:outline-none hover:bg-indigo-600 rounded" ID="Button7" runat="server" Text="check it out" OnClick="Button7_Click" style="height: 38px" /></p>
        </div>
      </div>
    </div>
  </div>
</section>

<section class="hover:text-gray-900 border border-gray-300 px-4 rounded-lg text-gray-700 body-font">
  <div class="container px-5 py-24 mx-auto flex flex-wrap">
    <div class="lg:w-2/3 mx-auto">
      <div class="flex flex-wrap w-full bg-gray-100 py-32 px-10 relative mb-4">
        <img alt="gallery" class="w-full object-cover h-full object-center block opacity-25 absolute inset-0" src="https://source.unsplash.com/820x340/?kids">
        <div class="text-center relative z-10 w-full">
          <h2 class="text-2xl text-gray-900 font-large title-font mb-2">Kids Wear</h2>
          <p class="leading-relaxed">Comfortable.light.tough<br />just like your little ones</p>
            <asp:Button class="flex mx-auto mt-6 text-white bg-indigo-500 border-0 py-2 px-5 focus:outline-none hover:bg-indigo-600 rounded" ID="Button6" runat="server" Text="Shop Now" OnClick="Button6_Click" />
        </div>
      </div>
      <div class="flex flex-wrap -mx-2">
        <div class="px-2 w-1/2">
          <div class="flex flex-wrap w-full bg-gray-100 sm:py-24 py-16 sm:px-10 px-6 relative">
            <img alt="gallery" class="w-full object-cover h-full object-center block opacity-25 absolute inset-0" src="https://source.unsplash.com/542x460/?cap,hat">
            <div class="text-center relative z-10 w-full">
              <h2 class="text-xl text-gray-900 font-medium title-font mb-2">caps and hats collection</h2>
              <p class="leading-relaxed">Beat the cold with the new caps and hats collection designed specially to beat the frost. <asp:Button  class="flex mx-auto mt-6 text-white bg-indigo-500 border-0 py-2 px-5 focus:outline-none hover:bg-indigo-600 rounded" ID="Button11" runat="server" Text="Check out" /></p>
              
            </div>
          </div>
        </div>
        <div class="px-2 w-1/2">
          <div class="flex flex-wrap w-full bg-gray-100 sm:py-24 py-16 sm:px-10 px-6 relative">
            <img alt="gallery" class="w-full object-cover h-full object-center block opacity-25 absolute inset-0" src="https://source.unsplash.com/542x420/?bedsheet,sheets">
            <div class="text-center relative z-10 w-full">
              <h2 class="text-xl text-gray-900 font-medium title-font mb-2">New Collection</h2>
              <p class="leading-relaxed">Brand new bedsheets for your loved ones. <asp:Button  class="flex mx-auto mt-6 text-white bg-indigo-500 border-0 py-2 px-5 focus:outline-none hover:bg-indigo-600 rounded" ID="Button12" runat="server" Text="Check out" /></p>
             
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>






<footer class="text-gray-700 body-font">
  <div class="container px-5 py-8 mx-auto flex items-center sm:flex-row flex-col">
    <a class="flex title-font font-medium items-center md:justify-start justify-center text-gray-900">
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-10 h-10 text-white p-2 bg-indigo-500 rounded-full" viewBox="0 0 24 24">
        <path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"></path>
      </svg>
      <span class="ml-3 text-xl">MyShop</span>
    </a>
    <span class="inline-flex sm:ml-auto sm:mt-0 mt-4 justify-center sm:justify-start">
    
      <a class="ml-3 text-gray-500">
        <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
          <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
        </svg>
      </a>
      <a class="ml-3 text-gray-500">
        <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
          <rect width="20" height="20" x="2" y="2" rx="5" ry="5"></rect>
          <path d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37zm1.5-4.87h.01"></path>
        </svg>
      </a>
      <a class="ml-3 text-gray-500">
        <svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="0" class="w-5 h-5" viewBox="0 0 24 24">
          <path stroke="none" d="M16 8a6 6 0 016 6v7h-4v-7a2 2 0 00-2-2 2 2 0 00-2 2v7h-4v-7a6 6 0 016-6zM2 9h4v12H2z"></path>
          <circle cx="4" cy="4" r="2" stroke="none"></circle>
        </svg>
      </a>
    </span>
  </div>
</footer>
    </form>
</body>
</html>
