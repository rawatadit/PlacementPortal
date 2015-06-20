<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="add-placement-record.aspx.cs" Inherits="admin_add_placement_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="width: 333px; margin-left: 486px"> Add Placement Record</h1>
    <div style="height: 390px; width: 637px; margin-top:40px; margin-left: auto; margin-right: auto; margin-bottom: auto">
             <div style="float:left; width: 257px; height: 352px;">

                 <asp:Label ID="Label3" runat="server" Text="Name : "></asp:Label>

                 <br />
                 <br />

                 <asp:Label ID="Label4" runat="server" Text="Email ID : "></asp:Label>

                 <br />
                 <br />

                 <asp:Label ID="Label5" runat="server" Text="Mobile No."></asp:Label>

                 <br />
                 <br />

                 <br />
                 <br />

                 <asp:Label ID="Label9" runat="server" Text="Course : "></asp:Label>

                 <br />
                 <br />
                 Company :

                 <br />
                 <br />

                 <br />
                 <br />

                 <asp:Label ID="Label10" runat="server" Text="Batch"></asp:Label>

             </div>
             <div style="height: 353px; margin-left: 262px">

                 <asp:TextBox ID="tbname" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="tbname" ErrorMessage="Field cannot be blank" ForeColor="Red" />
                 <br />
                 <br />
                 <asp:TextBox ID="tbemail" runat="server" Height="16px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbemail" ErrorMessage="Field cannot be blank" ForeColor="Red" />
                 <br />
                 <asp:RegularExpressionValidator ID="regexval2" runat="server" ControlToValidate="tbemail" ValidationExpression="[A-Za-z0-9_]*[@][A-Za-z0-9]*[.][c][o][m]" ErrorMessage="Enter a valid email" ForeColor="red" />
                 <br />
                 <asp:TextBox ID="tbnumber" runat="server" Height="16px"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbnumber" ErrorMessage="Field cannot be blank" ForeColor="Red" />
                                  <br />
                                  <asp:RegularExpressionValidator ID="regexval1" runat="server" ControlToValidate="tbnumber" ValidationExpression="[0-9]{10}" ErrorMessage="Enter a valid 10 digit number" ForeColor="red"/>
                 <br />
                 <br />
                 <asp:DropDownList ID="DropDownList1" runat="server" Width="88px">
                     <asp:ListItem>BTech</asp:ListItem>
                     <asp:ListItem>MTech</asp:ListItem>
                     <asp:ListItem>BBA</asp:ListItem>
                 </asp:DropDownList>
                 <br />
                 <br />
                 <asp:TextBox ID="tbcompany" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbcompany" ErrorMessage="Field cannot be blank" ForeColor="Red" />

                 <br />

                 <br />

                 <br />
                 <asp:TextBox ID="tbbatch" runat="server" Height="16px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbbatch" ErrorMessage="Field cannot be blank" ForeColor="Red" />
                 <br />

                 <asp:RegularExpressionValidator ID="regexval3" runat="server" ControlToValidate="tbbatch" ValidationExpression="[2][0][1][6]" ErrorMessage="Not a valid batch" ForeColor="red" />

                 <br />
                 <br />
                
                 <asp:Button ID="Button1" runat="server" Text="Submit" Width="70px" OnClick="Button1_Click" />

                 <asp:Label ID="Label11" runat="server" Text=""></asp:Label>

             </div>
         </div>
</asp:Content>

