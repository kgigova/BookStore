<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="upr1.WebUserControl1" %>
<asp:Panel ID="Panel1" runat="server" BackColor="#FFCC99" BorderColor="#FF3300" BorderWidth="3px" Width="215px">
    <asp:Label ID="Label1" runat="server" Text="Книга №:"></asp:Label>
    <asp:Label ID="lblBookID" runat="server"></asp:Label>
    <asp:Image ID="Image1" runat="server" Height="24px" Width="41px" />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Заглавие:"></asp:Label>
    <asp:Label ID="lblBookTitle" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Цена:"></asp:Label>
    <asp:Label ID="lblBookPrice" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Количество:"></asp:Label>
    <asp:Label ID="lblBookQuantity" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label9" runat="server" Text="Сума:"></asp:Label>
    <asp:Label ID="lblAmount" runat="server"></asp:Label>
    <br />
    <asp:CheckBox ID="CheckBox1" runat="server" Text="Отбележи за купуване" />
</asp:Panel>
<br />
<p>
    &nbsp;</p>

