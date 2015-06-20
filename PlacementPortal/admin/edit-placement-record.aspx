<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="edit-placement-record.aspx.cs" Inherits="admin_edit_placement_record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 300px">
        <h1 style="width: 322px; margin-left: 496px">Edit Placement Record</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="sno" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" style="margin-left: 177px" Width="933px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="sno" HeaderText="sno" ReadOnly="True" SortExpression="sno" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" />
                <asp:BoundField DataField="session" HeaderText="session" SortExpression="session" />
                <asp:BoundField DataField="company" HeaderText="company" SortExpression="company" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Placement] WHERE [sno] = @sno" InsertCommand="INSERT INTO [Placement] ([sno], [name], [course], [session], [company], [email], [mobile]) VALUES (@sno, @name, @course, @session, @company, @email, @mobile)" SelectCommand="SELECT [sno], [name], [course], [session], [company], [email], [mobile] FROM [Placement]" UpdateCommand="UPDATE [Placement] SET [name] = @name, [course] = @course, [session] = @session, [company] = @company, [email] = @email, [mobile] = @mobile WHERE [sno] = @sno">
            <DeleteParameters>
                <asp:Parameter Name="sno" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="sno" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="course" Type="String" />
                <asp:Parameter Name="session" Type="String" />
                <asp:Parameter Name="company" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="course" Type="String" />
                <asp:Parameter Name="session" Type="String" />
                <asp:Parameter Name="company" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="sno" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    
</asp:Content>

