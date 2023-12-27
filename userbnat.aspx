<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="userbnat.aspx.cs" Inherits="userbnat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
Legal Adviser Nature:&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="b_nature" 
        DataValueField="b_nature" Width="128px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:business_directoryConnectionString %>" 
        SelectCommand="SELECT * FROM [business_details]"></asp:SqlDataSource>
    &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Check" 
        onclick="Button1_Click" />
    <br />
    <asp:Panel ID="Panel1" runat="server">
    Legal Adviser Details:
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="b_id" DataSourceID="SqlDataSource2" Width="611px">
            <Columns>
                <asp:BoundField DataField="b_name" HeaderText="Legal Adviser name" 
                    SortExpression="b_name" />
                <asp:BoundField DataField="b_address" HeaderText="Legal Adviser address" 
                    SortExpression="b_address" />
                <asp:BoundField DataField="contact_person" HeaderText="contact person" 
                    SortExpression="contact_person" />
                <asp:BoundField DataField="contact_number" HeaderText="contact number" 
                    SortExpression="contact_number" />
                <asp:BoundField DataField="b_nature" HeaderText="Specialized In" 
                    SortExpression="b_nature" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="country" HeaderText="country" 
                    SortExpression="country" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:business_directoryConnectionString %>" 
            SelectCommand="SELECT * FROM [business_details] WHERE ([b_nature] = @b_nature)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="b_nature" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    </form>
</asp:Content>

