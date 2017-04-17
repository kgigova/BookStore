<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ConnectionWithUs.aspx.cs" Inherits="upr1.ConnectionWithUs" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #Body {
        }
    </style>
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <asp:Label ID="Label1" runat="server" Text="До:" Width="90px" meta:resourcekey="Label1Resource1"></asp:Label>
    <asp:TextBox ID="MailFrom" runat="server" Width="220px" meta:resourcekey="MailFromResource1"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="От:" Width="90px" meta:resourcekey="Label2Resource1"></asp:Label>
    <asp:TextBox ID="MailTo" runat="server" Width="220px" meta:resourcekey="MailToResource1"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Относно:" Width="90px" meta:resourcekey="Label3Resource1"></asp:Label>
    <asp:TextBox ID="Subject" runat="server" Width="220px" meta:resourcekey="SubjectResource1"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Запитване:" Width="90px" meta:resourcekey="Label4Resource1"></asp:Label>
    <asp:TextBox ID="Body" runat="server" Height="92px" TextMode="MultiLine" Width="218px" meta:resourcekey="BodyResource1"></asp:TextBox>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" BackColor="#990000" ForeColor="White" OnClick="Button1_Click" Text="Изпрати:" Width="86px" meta:resourcekey="Button1Resource1" />
    <br />
    <asp:Label ID="MailMsg" runat="server" meta:resourcekey="MailMsgResource1"></asp:Label>
    <br />
</asp:Content>

