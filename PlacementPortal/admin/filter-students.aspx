<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="filter-students.aspx.cs" Inherits="admin_filter_students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h1 style="margin-top:30px; width: 293px; margin-left: 40%">Filter Students</h1>

    <div style="height:300px">
        <div style="float:left">
            <asp:Label ID="Label1" runat="server" Text="Select Course : "></asp:Label>
            
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>BTech</asp:ListItem>
                <asp:ListItem>MTech</asp:ListItem>
                <asp:ListItem>BBA</asp:ListItem>
            </asp:DropDownList>
            
        </div>
        <div style="margin-left: 313px; height: 56px;">
            <asp:Label ID="Label2" runat="server" Text="Passout Year : "></asp:Label>
            <asp:TextBox ID="tbyear" runat="server" ValidationGroup="fields"></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="tbyear" ValidationGroup="fields" ErrorMessage="All fields are required" ForeColor="red"/>
            <br />
            <asp:RegularExpressionValidator ID="regexval" runat="server" ControlToValidate="tbyear" ValidationExpression="[0-9]*" ErrorMessage="Enter a number only" ForeColor="Red">
           
            </asp:RegularExpressionValidator>
        </div>

        <h3>Set Criteria (Enter 0 if no criteria)</h3>

        <div style="float:left; height: 57px;">
            <asp:Label ID="Label3" runat="server" Text="10th : "></asp:Label>
            <asp:TextBox ID="tbtenth" runat="server" ValidationGroup="fields">0</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbtenth" ValidationGroup="fields" ErrorMessage="All fields are required" ForeColor="red" />
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbtenth" ValidationExpression="[0-9]*" ErrorMessage="Enter a number only" ForeColor="Red"/>
        </div>
        <div style="float:left; margin-left:3em; width: 404px; height: 58px;">
            <asp:Label ID="Label4" runat="server" Text="12th"></asp:Label>
            <asp:TextBox ID="tbtwelve" runat="server" ValidationGroup="fields">0</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbtwelve" ValidationGroup="fields" ErrorMessage="All fields are required" ForeColor="red"/>
            
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbtwelve" ValidationExpression="[0-9]*" ErrorMessage="Enter a number only" ForeColor="Red"/>
        </div>
        <div style="float:left; margin-left:0; width: 465px; height: 60px;">
            <asp:Label ID="Label5" runat="server" Text="Graduation : "></asp:Label>
            <asp:TextBox ID="tbgrad" runat="server" ValidationGroup="fields">0</asp:TextBox>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbgrad" ValidationGroup="fields" ErrorMessage="All fields are required" ForeColor="red"/>

           
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tbgrad" ValidationExpression="[0-9]*" ErrorMessage="Enter a number only" ForeColor="Red"/>
           
        </div>
        <div style="margin-top:4em; height: 65px">
            <asp:Button ID="Button1" runat="server" Text="Filter Students" Width="131px" OnClick="Button1_Click" />

           
            <asp:Label ID="yearErr" runat="server" Text="" ForeColor="Red" />

           
        </div>       
       
        
       
        <asp:ValidationSummary ID="vs1" runat="server" ShowMessageBox="true" HeaderText="Errors : " DisplayMode="BulletList" Height="92px" />
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" ReadOnly="true" />
                <asp:BoundField DataField="regno" HeaderText="Roll No" SortExpression="regno" ReadOnly="true"/>
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" ReadOnly="true"/>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [regno], [email] FROM [Students]"></asp:SqlDataSource>
            <asp:Button ID="excelExport" runat="server" Text="Download in Excel" OnClick="excelExport_Click" ValidationGroup="filter" />
        </div>
    </div>
</asp:Content>

