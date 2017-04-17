<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="upr1.details" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="BookID" DataSourceID="SqlDataSource1" GridLines="Both" meta:resourcekey="FormView1Resource1">
        <EditItemTemplate>
            BookID:
            <asp:Label ID="BookIDLabel1" runat="server" Text='<%# Eval("BookID") %>' meta:resourcekey="BookIDLabel1Resource1" />
            <br />
            BookTitle:
            <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleTextBoxResource1" />
            <br />
            BookAuthor:
            <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorTextBoxResource1" />
            <br />
            BookDescription:
            <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionTextBoxResource1" />
            <br />
            BookPrice:
            <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceTextBoxResource1" />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="Update" meta:resourcekey="UpdateButtonResource1" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" meta:resourcekey="UpdateCancelButtonResource1" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            BookID:
            <asp:TextBox ID="BookIDTextBox" runat="server" Text='<%# Bind("BookID") %>' meta:resourcekey="BookIDTextBoxResource1" />
            <br />
            BookTitle:
            <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleTextBoxResource2" />
            <br />
            BookAuthor:
            <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorTextBoxResource2" />
            <br />
            BookDescription:
            <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionTextBoxResource2" />
            <br />
            BookPrice:
            <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceTextBoxResource2" />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" meta:resourcekey="InsertButtonResource1" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" meta:resourcekey="InsertCancelButtonResource1" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' Visible="False" meta:resourcekey="BookIDLabelResource1" />
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "./BookPictures/" + Eval("BookID") + ".jpg" %>' meta:resourcekey="Image1Resource1" />
            <br />
            Заглавие:
            <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleLabelResource1" />
            <br />
            Автор:
            <asp:Label ID="BookAuthorLabel" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorLabelResource1" />
            <br />
            Описание:
            <asp:Label ID="BookDescriptionLabel" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionLabelResource1" />
            <br />
            Цена:
            <asp:Label ID="BookPriceLabel" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceLabelResource1" />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Количество:" meta:resourcekey="Label10Resource1"></asp:Label>
            <asp:TextBox ID="txtQty" runat="server" meta:resourcekey="txtQtyResource1"></asp:TextBox>
            <br />
            <asp:Button ID="btnAdd" runat="server" BackColor="#990000" Height="24px" OnClick="btnAdd_Click" Text="Добавете в кошницата" Width="263px" meta:resourcekey="btnAddResource1" />
            <br />

        </ItemTemplate>
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT [BookID], [BookTitle], [BookAuthor], [BookDescription], [BookPrice] FROM [Books] WHERE ([BookID] = @BookID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="BookID" QueryStringField="BookID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" meta:resourcekey="LinkButton4Resource1">назад</asp:LinkButton>
</asp:Content>
