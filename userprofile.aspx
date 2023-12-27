<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
Profile:
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="user_id" 
    DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <span style="background-color: #FFFFFF;color: #284775;">user_id:
            <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
            <br />
            user_name:
            <asp:Label ID="user_nameLabel" runat="server" Text='<%# Eval("user_name") %>' />
            <br />
            address:
            <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
            <br />
            gender:
            <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
            <br />
            phn_no:
            <asp:Label ID="phn_noLabel" runat="server" Text='<%# Eval("phn_no") %>' />
            <br />
            email_id:
            <asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' />
            <br />
            dob:
            <asp:Label ID="dobLabel" runat="server" Text='<%# Eval("dob") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <br />
            <br />
            </span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #999999;">user_id:
            <asp:Label ID="user_idLabel1" runat="server" Text='<%# Eval("user_id") %>' />
            <br />
            user_name:
            <asp:TextBox ID="user_nameTextBox" runat="server" 
                Text='<%# Bind("user_name") %>' />
            <br />
            address:
            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
            <br />
            gender:
            <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
            <br />
            phn_no:
            <asp:TextBox ID="phn_noTextBox" runat="server" Text='<%# Bind("phn_no") %>' />
            <br />
            email_id:
            <asp:TextBox ID="email_idTextBox" runat="server" 
                Text='<%# Bind("email_id") %>' />
            <br />
            dob:
            <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Cancel" />
            <br />
            <br />
            </span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">user_name:
            <asp:TextBox ID="user_nameTextBox" runat="server" 
                Text='<%# Bind("user_name") %>' />
            <br />
            address:
            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
            <br />
            gender:
            <asp:TextBox ID="genderTextBox" runat="server" Text='<%# Bind("gender") %>' />
            <br />
            phn_no:
            <asp:TextBox ID="phn_noTextBox" runat="server" Text='<%# Bind("phn_no") %>' />
            <br />
            email_id:
            <asp:TextBox ID="email_idTextBox" runat="server" 
                Text='<%# Bind("email_id") %>' />
            <br />
            dob:
            <asp:TextBox ID="dobTextBox" runat="server" Text='<%# Bind("dob") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Clear" />
            <br />
            <br />
            </span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="background-color: #E0FFFF;color: #333333;">user_id:
            <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
            <br />
            user_name:
            <asp:Label ID="user_nameLabel" runat="server" Text='<%# Eval("user_name") %>' />
            <br />
            address:
            <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
            <br />
            gender:
            <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
            <br />
            phn_no:
            <asp:Label ID="phn_noLabel" runat="server" Text='<%# Eval("phn_no") %>' />
            <br />
            email_id:
            <asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' />
            <br />
            dob:
            <asp:Label ID="dobLabel" runat="server" Text='<%# Eval("dob") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <br />
            <br />
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" 
                style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">user_id:
            <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
            <br />
            user_name:
            <asp:Label ID="user_nameLabel" runat="server" Text='<%# Eval("user_name") %>' />
            <br />
            address:
            <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
            <br />
            gender:
            <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
            <br />
            phn_no:
            <asp:Label ID="phn_noLabel" runat="server" Text='<%# Eval("phn_no") %>' />
            <br />
            email_id:
            <asp:Label ID="email_idLabel" runat="server" Text='<%# Eval("email_id") %>' />
            <br />
            dob:
            <asp:Label ID="dobLabel" runat="server" Text='<%# Eval("dob") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <br />
            <br />
            </span>
        </SelectedItemTemplate>
    </asp:ListView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:business_directoryConnectionString %>" 
    DeleteCommand="DELETE FROM [user_reg] WHERE [user_id] = @user_id" 
    InsertCommand="INSERT INTO [user_reg] ([user_name], [address], [gender], [phn_no], [email_id], [dob]) VALUES (@user_name, @address, @gender, @phn_no, @email_id, @dob)" 
    SelectCommand="SELECT * FROM [user_reg] WHERE ([user_name] = @user_name)" 
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
    <SelectParameters>
        <asp:SessionParameter Name="user_name" SessionField="new" Type="String" />
    </SelectParameters>
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

