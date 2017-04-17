<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Basket.aspx.cs" Inherits="upr1.Basket" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FF9933" meta:resourcekey="Panel1Resource1">
    &nbsp;<asp:Label ID="Label1" runat="server" Text="Във вашата кошница има:" Font-Bold="True" Font-Italic="True" ForeColor="#990033" meta:resourcekey="Label1Resource1"></asp:Label>
</asp:Panel>
    <asp:DataList ID="DataList1" runat="server" BackColor="#FFCC66" BorderColor="#990000" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="3" GridLines="Both" DataSourceID="SqlDataSource1" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" meta:resourcekey="DataList1Resource1" RepeatColumns="3">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
            Книга№:
            <asp:Label ID="BookTitleLabel" runat="server" meta:resourcekey="BookTitleLabelResource1" Text='<%# Eval("BookTitle") %>' />
            <asp:Image ID="Image2" runat="server" ImageUrl='<%# "./BookPictures/" + Eval("BookID") + ".jpg" %>' meta:resourcekey="Image2Resource1" />
            <asp:Label ID="BookIDLabel" runat="server" meta:resourcekey="BookIDLabelResource1" Text='<%# Eval("BookID") %>' Visible="False" />
            <br />
            Цена:
            <asp:Label ID="PriceLabel" runat="server" meta:resourcekey="PriceLabelResource1" Text='<%# Eval("Price") %>' />
            <br />
            Количество:
            <asp:Label ID="QuantityLabel" runat="server" meta:resourcekey="QuantityLabelResource1" Text='<%# Eval("Quantity") %>' />
            <br />
            Сума:
            <asp:Label ID="SumaLabel" runat="server" meta:resourcekey="SumaLabelResource1" Text='<%# Eval("Suma") %>' />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" meta:resourcekey="CheckBox1Resource1" Text="Отбележете за премахване" />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT BookTitle, BookID, Price, SUM(Qty) AS Quantity, SUM(Price * Qty) 
AS Suma 
FROM ShopCart 
GROUP BY BookTitle, BookID, Price"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="select sum(Qty*Price) as Suma from ShopCart"></asp:SqlDataSource>
<asp:Panel ID="Panel2" runat="server" BackColor="#FF9933" BorderColor="#990000" meta:resourcekey="Panel2Resource1">
    <asp:Label ID="Label2" runat="server" Text="Общо:" Font-Bold="True" Font-Italic="True" ForeColor="#990000" meta:resourcekey="Label2Resource1"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource2" meta:resourcekey="GridView1Resource1" ShowHeader="False">
        <Columns>
            <asp:BoundField DataField="Suma" HeaderText="Suma" meta:resourcekey="BoundFieldResource1" ReadOnly="True" SortExpression="Suma" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:Button ID="btnDelete" runat="server" BackColor="#990000" ForeColor="#FF9933" meta:resourcekey="btnDeleteResource1" OnClick="btnDelete_Click" Text="Изтриване на маркираните книги" />
</asp:Panel>
</asp:Content>
