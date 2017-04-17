<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="upr1.AdminPage" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="BookID" DataSourceID="SqlDataSource1" style="margin-right: 0px" meta:resourcekey="GridView1Resource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" meta:resourcekey="CommandFieldResource1" />
            <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" SortExpression="BookID" meta:resourcekey="BoundFieldResource1" />
            <asp:BoundField DataField="BookType" HeaderText="BookType" SortExpression="BookType" meta:resourcekey="BoundFieldResource2" />
            <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" SortExpression="BookTitle" meta:resourcekey="BoundFieldResource3" />
            <asp:BoundField DataField="BookAuthor" HeaderText="BookAuthor" SortExpression="BookAuthor" meta:resourcekey="BoundFieldResource4" />
            <asp:BoundField DataField="BookDescription" HeaderText="BookDescription" SortExpression="BookDescription" meta:resourcekey="BoundFieldResource5" />
            <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" meta:resourcekey="BoundFieldResource6" />
            <asp:BoundField DataField="BookQty" HeaderText="BookQty" SortExpression="BookQty" meta:resourcekey="BoundFieldResource7" />
            <asp:CheckBoxField DataField="BookSale" HeaderText="BookSale" SortExpression="BookSale" meta:resourcekey="CheckBoxFieldResource1" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" DeleteCommand="DELETE FROM [Books] WHERE [BookID] = @BookID" InsertCommand="INSERT INTO [Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (@BookID, @BookType, @BookTitle, @BookAuthor, @BookDescription, @BookPrice, @BookQty, @BookSale)" SelectCommand="SELECT * FROM [Books]" UpdateCommand="UPDATE [Books] SET [BookType] = @BookType, [BookTitle] = @BookTitle, [BookAuthor] = @BookAuthor, [BookDescription] = @BookDescription, [BookPrice] = @BookPrice, [BookQty] = @BookQty, [BookSale] = @BookSale WHERE [BookID] = @BookID">
        <DeleteParameters>
            <asp:Parameter Name="BookID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BookID" Type="String" />
            <asp:Parameter Name="BookType" Type="String" />
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="BookAuthor" Type="String" />
            <asp:Parameter Name="BookDescription" Type="String" />
            <asp:Parameter Name="BookPrice" Type="Decimal" />
            <asp:Parameter Name="BookQty" Type="Int32" />
            <asp:Parameter Name="BookSale" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="BookType" Type="String" />
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="BookAuthor" Type="String" />
            <asp:Parameter Name="BookDescription" Type="String" />
            <asp:Parameter Name="BookPrice" Type="Decimal" />
            <asp:Parameter Name="BookQty" Type="Int32" />
            <asp:Parameter Name="BookSale" Type="Boolean" />
            <asp:Parameter Name="BookID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <asp:Label ID="lblMessageText" runat="server" Text="Изберете файл: " meta:resourcekey="lblMessageTextResource1"></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" style="margin-bottom: 0px" meta:resourcekey="FileUpload1Resource1" />
    <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Качване на файл" meta:resourcekey="btnUploadResource1" />
</asp:Content>
