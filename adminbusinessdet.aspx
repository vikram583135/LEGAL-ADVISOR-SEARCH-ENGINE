<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="adminbusinessdet.aspx.cs" Inherits="adminbusinessdet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    Legal Advisor Details:
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="b_id" DataSourceID="SqlDataSource1" BackColor="White" 
        BorderColor="#787878" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        Width="839px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="b_id" HeaderText="Legal Advisor Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="b_id" />
            <asp:BoundField DataField="b_name" HeaderText="Legal Advisor name" 
                SortExpression="b_name" />
            <asp:BoundField DataField="b_address" HeaderText="Legal Advisor address" 
                SortExpression="b_address" />
            <asp:BoundField DataField="contact_person" HeaderText="contact person" 
                SortExpression="contact_person" />
            <asp:BoundField DataField="contact_number" HeaderText="contact number" 
                SortExpression="contact_number" />
            <asp:BoundField DataField="b_nature" HeaderText="Specialised In" 
                SortExpression="b_nature" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="country" HeaderText="country" 
                SortExpression="country" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#787878" Font-Bold="True" ForeColor="#CCCCFF" />
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
        DeleteCommand="DELETE FROM [business_details] WHERE [b_id] = @b_id" 
        InsertCommand="INSERT INTO [business_details] ([b_name], [b_address], [contact_person], [contact_number], [b_nature], [city], [state], [country]) VALUES (@b_name, @b_address, @contact_person, @contact_number, @b_nature, @city, @state, @country)" 
        SelectCommand="SELECT * FROM [business_details]" 
        UpdateCommand="UPDATE [business_details] SET [b_name] = @b_name, [b_address] = @b_address, [contact_person] = @contact_person, [contact_number] = @contact_number, [b_nature] = @b_nature, [city] = @city, [state] = @state, [country] = @country WHERE [b_id] = @b_id">
        <DeleteParameters>
            <asp:Parameter Name="b_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="b_name" Type="String" />
            <asp:Parameter Name="b_address" Type="String" />
            <asp:Parameter Name="contact_person" Type="String" />
            <asp:Parameter Name="contact_number" Type="String" />
            <asp:Parameter Name="b_nature" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="country" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="b_name" Type="String" />
            <asp:Parameter Name="b_address" Type="String" />
            <asp:Parameter Name="contact_person" Type="String" />
            <asp:Parameter Name="contact_number" Type="String" />
            <asp:Parameter Name="b_nature" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="b_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/Business_det_form.aspx">Add new+</asp:HyperLink>
    </form>
</asp:Content>

