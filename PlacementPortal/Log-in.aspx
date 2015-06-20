<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Log-in.aspx.cs" Inherits="Log_in" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="height: 400px">
         <div style="height: 44px; width: 241px; margin-top:30px; margin-left: 532px; margin-right: auto; margin-bottom: auto;">       

             <asp:Label ID="Label2" runat="server" Text="Log-In Panel" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

         </div>
         <div style="height: 213px; width: 541px; margin-top:40px; margin-left: auto; margin-right: auto; margin-bottom: auto; ">
            
             <asp:Label ID="Label3" runat="server" Text="E-Mail ID"></asp:Label>            
             <br />
             <asp:TextBox ID="email" runat="server"></asp:TextBox>         
             <br />
             <br />            
             <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>            
             <br />           
             <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>            
             <br />
             <br />
             <asp:Button ID="Button1" runat="server" Text="Login" Width="95px" OnClick="Button1_Click" />           
             <asp:Label ID="lblerror" runat="server" Text=""></asp:Label>
             <br />
             <br />
             <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="true" ForeColor="LightBlue" NavigateUrl="~/Registration.aspx">New Student Registration</asp:HyperLink>
         </div>
     </div>
</asp:Content>

