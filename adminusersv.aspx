<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="adminusersv.aspx.cs" Inherits="adminusersv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
Users:
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="user_id" DataSourceID="SqlDataSource1" 
        Width="476px">
        <Columns>
            <asp:BoundField DataField="user_name" HeaderText="Name" 
                SortExpression="user_name" />
            <asp:BoundField DataField="address" HeaderText="Address" 
                SortExpression="address" />
            <asp:BoundField DataField="gender" HeaderText="Gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="phn_no" HeaderText="Phone no" 
                SortExpression="phn_no" />
            <asp:BoundField DataField="email_id" HeaderText="Email-id" 
                SortExpression="email_id" />
            <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:business_directoryConnectionString %>" 
        DeleteCommand="DELETE FROM [user_reg] WHERE [user_id] = @user_id" 
        InsertCommand="INSERT INTO [user_reg] ([user_name], [address], [gender], [phn_no], [email_id], [dob]) VALUES (@user_name, @address, @gender, @phn_no, @email_id, @dob)" 
        SelectCommand="SELECT * FROM [user_reg]" 
        UpdateCommand="UPDATE [user_reg] SET [user_name] = @user_name, [address] = @address, [gender] = @gender, [phn_no] = @phn_no, [email_id] = @email_id, [dob] = @dob WHERE [user_id] = @user_id">
        <DeleteParameters>
            <asp:Parameter Name="user_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_name" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="phn_no" Type="String" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="dob" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_name" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="phn_no" Type="String" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="dob" Type="String" />
            <asp:Parameter Name="user_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</asp:Content>

