<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="men.aspx.cs" Inherits="ecom.men1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        <asp:Menu class=" hover:text-gray-900 border border-gray-300 px-4 rounded-lg" ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick" >
            <DynamicMenuItemStyle Font-Size="Large" BackColor="White" />
            <Items>
                <asp:MenuItem Text="About Us" Value="About Us" NavigateUrl="~/aboutus.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Products" Value="Products">
                    <asp:MenuItem Text="Men" Value="male">
                        <asp:MenuItem Text="Top" Value="mtop"></asp:MenuItem>
                        <asp:MenuItem Text="Bottom" Value="mbottom"></asp:MenuItem>
                        <asp:MenuItem Text="Shoes" Value="Shoes"></asp:MenuItem>
                        <asp:MenuItem Text="Accessories" Value="Accessories"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Women" Value="female">
                        <asp:MenuItem Text="Top" Value="ftop"></asp:MenuItem>
                        <asp:MenuItem Text="Bottom" Value="fbottom"></asp:MenuItem>
                        <asp:MenuItem Text="Shoes" Value="Shoes"></asp:MenuItem>
                        <asp:MenuItem Text="Accessories" Value="Accessories"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Kids" Value="kids"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Contact Us" Value="Contact Us" NavigateUrl="~/contact.aspx"></asp:MenuItem>
                <asp:MenuItem Text="My Cart" Value="cart" NavigateUrl="~/usercart.aspx"></asp:MenuItem>
            </Items>
            <StaticMenuItemStyle Font-Bold="False" Font-Italic="False" Font-Names="Century" Font-Overline="False" Font-Size="X-Large" ItemSpacing="50px" Width="175px" />
            <StaticMenuStyle HorizontalPadding="20px" VerticalPadding="15px" />
        </asp:Menu>
        <asp:TextBox class="bg-white rounded border border-gray-400 focus:outline-none focus:border-indigo-500 text-base px-4 py-2 mb-4" ID="TextBox1" runat="server" Text="Search For"></asp:TextBox>
        <asp:ImageButton class="bg-white rounded border border-gray-400 text-base px-4 py-2 mb-4" ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/download.png" Width="53px" />
      

        <br />
        <br />
      

    </nav>
    </div>

    </header>
    




        <div class="text-center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="text-left">
    


<section class="text-gray-700 body-font">
  <div class="container px-5 py-24 mx-auto">
    <div class="text-center">

        <asp:DataList ID="DataList1" runat="server" CellPadding="40" CellSpacing="40" DataKeyField="id" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" Width="80%" OnItemCommand="DataList1_ItemCommand">
            <ItemStyle BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" />
            <ItemTemplate>
                image:
                <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
                <br />
                <br />
                id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                desc:
                <asp:Label ID="descLabel" runat="server" Text='<%# Eval("desc") %>' />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
                <br />
                <asp:Button class="flex mx-auto mt-6 text-white bg-indigo-500 border-0 py-2 px-5 focus:outline-none hover:bg-indigo-600 rounded"  ID="Button14" runat="server" Text="Buy Now" CommandName="buy_now"  OnClick="Button14_Click" CommandArgument='<%# Eval("id") %>' />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button class="flex mx-auto mt-6 text-white bg-indigo-500 border-0 py-2 px-5 focus:outline-none hover:bg-indigo-600 rounded" ID="Button15" runat="server" Text="Add to Cart" CommandName="add_to_cart" OnClick="Button15_Click1" CommandArgument='<%# Eval("id") %>' />
                <br />
                <br />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
            <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ecartConnectionString %>" SelectCommand="SELECT [id], [name], [desc], [price], [image] FROM [master_data] WHERE ([cat] = @cat)">
                        <SelectParameters>
                            <asp:SessionParameter Name="cat" SessionField="category" Type="String" />
                        </SelectParameters>
        </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ecartConnectionString %>" SelectCommand="SELECT [id], [name], [desc], [price], [image] FROM [master_data] WHERE ([gender] = @gender)">
                        <SelectParameters>
                            <asp:SessionParameter Name="gender" SessionField="category" Type="String" />
                        </SelectParameters>
        </asp:SqlDataSource>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </div>
    
    </div>
  </div>
</section>


<section class="text-gray-700 body-font">
  <div class="container px-5 py-24 mx-auto">
    <div class="flex flex-wrap -m-4">
    
    
    </div>
  </div>
</section>





                <div class="text-left">
                    <br />
                    <br />
    




                <br />
                <br />
    




                </div>
    


</form>

</body>
</html>
