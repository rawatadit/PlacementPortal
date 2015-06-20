<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style="width: 197px; margin-left: 276px">Admin Login</h1>
    <div>
        <div style="height: 213px; width: 541px; margin-top:40px; margin-left: auto; margin-right: auto; margin-bottom: auto; ">
            
             <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label>

            
             <br />
             <asp:TextBox ID="user" runat="server"></asp:TextBox>
             


            
             <br />
             <br />
            
             <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>

            

            
             <br />

            

            
             <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>

            

            
             <br />
             <br />
             <asp:Button ID="Button1" runat="server" Text="Login" Width="95px" OnClick="Button1_Click" />

            

            
             <asp:Label ID="errlabel" runat="server" Text="" ForeColor="Red"></asp:Label>

            

            
             <br />
             <br />          

            
         </div>
    </div>
    </form>
</body>
</html>
