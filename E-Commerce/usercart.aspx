<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usercart.aspx.cs" Inherits="ecom.usercart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Cart</title>
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
      
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
            &nbsp;<asp:Button class="inline-flex items-center bg-gray-200 border-0 py-1 px-3 focus:outline-none hover:bg-gray-300 rounded text-base mt-4 md:mt-0" ID="Button13" runat="server" Text="Signout" Enabled="False"  />
            &nbsp;
      
        </div>
    </div>

    <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">  

    <nav class="md:ml-auto md:mr-auto flex flex-wrap items-center text-base justify-center">
        <asp:Menu class=" hover:text-gray-900 border border-gray-300 px-4 rounded-lg" ID="Menu1" runat="server" Orientation="Horizontal">
            <DynamicMenuItemStyle Font-Size="Large" BackColor="White" />
            <Items>
                <asp:MenuItem Text="About Us" Value="About Us" NavigateUrl="~/aboutus.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Products" Value="Products">
                    <asp:MenuItem Text="Men" Value="Men">
                        <asp:MenuItem Text="Top" Value="Top" NavigateUrl="~/mentop.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Bottom" Value="Bottom"></asp:MenuItem>
                        <asp:MenuItem Text="Shoes" Value="Shoes"></asp:MenuItem>
                        <asp:MenuItem Text="Accessories" Value="Accessories"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Women" Value="Women">
                        <asp:MenuItem Text="Top" Value="Top"></asp:MenuItem>
                        <asp:MenuItem Text="Bottom" Value="Bottom"></asp:MenuItem>
                        <asp:MenuItem Text="Shoes" Value="Shoes"></asp:MenuItem>
                        <asp:MenuItem Text="Accessories" Value="Accessories"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Kids" Value="Kids"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Contact Us" Value="Contact Us" NavigateUrl="~/contact.aspx"></asp:MenuItem>
                <asp:MenuItem Text="My Cart" Value="My Cart" NavigateUrl="~/usercart.aspx"></asp:MenuItem>
            </Items>
            <StaticMenuItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Century" Font-Overline="False" Font-Size="X-Large" ItemSpacing="50px" Width="175px" />
            <StaticMenuStyle HorizontalPadding="20px" VerticalPadding="15px" />
        </asp:Menu>
        <asp:TextBox class="bg-white rounded border border-gray-400 focus:outline-none focus:border-indigo-500 text-base px-4 py-2 mb-4" ID="TextBox1" runat="server" Text="Search For"></asp:TextBox>
        <asp:ImageButton class="bg-white rounded border border-gray-400 text-base px-4 py-2 mb-4" ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/download.png" Width="53px"  />
        <br />
        <br />
        <br />

        <asp:Panel ID="Panel2" runat="server">
<div class="container px-5 py-24 mx-auto border border-gray-300">
    <div class="flex flex-col text-center mb-12">     

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button class="flex mx-auto mt-16 text-white bg-indigo-500 border-0 py-2 px-8 focus:outline-none hover:bg-indigo-600 rounded text-lg" ID="Button14" runat="server" OnClick="Button14_Click" Text="Shop now" />
  </div>    
</div>
    </nav>
    </div>
           </asp:Panel>
</header>

<section class="text-gray-700 body-font">
  <div class="container px-5 py-24 mx-auto">
    <div class="flex flex-col text-center w-full mb-20">

    <asp:Panel class="flex flex-col text-center w-full mb-12" ID="Panel1" runat="server" Visible="False" Enabled="False">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
              


            <div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <div class="flex flex-col text-center w-full mb-12" >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DataList ID="DataList1" runat="server" CellPadding="40" CellSpacing="40" RepeatColumns="4" RepeatDirection="Horizontal" Width="100%">
                        <ItemStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" />
                        
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("image") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                            <br />
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("[desc]") %>'></asp:Label>
                            <br />
                            <br />
                            <asp:Button class="flex mx-auto mt-6 text-white bg-indigo-500 border-0 py-2 px-5 focus:outline-none hover:bg-indigo-600 rounded" ID="Button15" runat="server" CommandArgument='<%# Eval("id") %>' CommandName="remove_item" Text="Remove from cart" OnCommand="Button15_Click" />
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecartConnectionString %>" SelectCommand="SELECT [name], [price], [desc], [image] FROM [master_data]"></asp:SqlDataSource>
    </asp:Panel>
    </div>
 </div>
</section>
    </form>
</body>
</html>
