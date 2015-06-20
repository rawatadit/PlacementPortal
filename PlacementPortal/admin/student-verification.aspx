<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="student-verification.aspx.cs" Inherits="admin_student_verification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div style="height: 300px">
        <h1 style="margin-top:30px; width: 293px; margin-left: 40%">Student Verification</h1>
            
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="927px" style="margin-left: 204px">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" ReadOnly ="true" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="regno" HeaderText="regno" SortExpression="regno" ReadOnly="true" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" ReadOnly="true" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="batch" HeaderText="batch" SortExpression="batch" ReadOnly="true" ItemStyle-HorizontalAlign="Center"/>
                <asp:CheckBoxField DataField="emailverification" HeaderText="emailverification" SortExpression="emailverification" ItemStyle-HorizontalAlign="Center"/>
                <asp:CheckBoxField DataField="verification" HeaderText="verification" SortExpression="verification" ItemStyle-HorizontalAlign="Center"/>
            </Columns>
            
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
            
        </asp:GridView >
       
        
            
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Students] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Students] ([Id], [name], [regno], [course], [batch], [emailverification], [verification]) VALUES (@Id, @name, @regno, @course, @batch, @emailverification, @verification)" SelectCommand="SELECT [Id], [name], [regno], [course], [batch], [emailverification], [verification] FROM [Students]" UpdateCommand="UPDATE [Students] SET [emailverification] = @emailverification, [verification] = @verification WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="regno" Type="String" />
                <asp:Parameter Name="course" Type="String" />
                <asp:Parameter Name="batch" Type="String" />
                <asp:Parameter Name="emailverification" Type="Boolean" />
                <asp:Parameter Name="verification" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="regno" Type="String" />
                <asp:Parameter Name="course" Type="String" />
                <asp:Parameter Name="batch" Type="String" />
                <asp:Parameter Name="emailverification" Type="Boolean" />
                <asp:Parameter Name="verification" Type="Boolean" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
       
     </div>
</asp:Content>

