<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="newsletter-send.aspx.cs" Inherits="admin_newsletter_send" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <h1 style="width: 451px; margin-left: 453px; margin-top: 35px;">Newsletter for All Students</h1>

    <div style="height: 286px; margin-left:10em">

        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="230px" Width="896px"></asp:TextBox>

        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Send Newsletter" Width="131px" OnClick="Button1_Click" />

    </div>
</asp:Content>

