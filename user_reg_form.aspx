<%@ Page Language="C#" MasterPageFile="~/mainmaster.master" AutoEventWireup="true" CodeFile="user_reg_form.aspx.cs" Inherits="user_reg_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="3">
                    Registeration Details:</td>
            </tr>
            <tr>
                <td>
                    Name:</td>
                <td>
                    <asp:TextBox ID="tbname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tbname" ErrorMessage="You missed this Field*" 
                        ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Gender</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>male</asp:ListItem>
                        <asp:ListItem>female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="RadioButtonList1" ErrorMessage="You missed this Field*" 
                        ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Contact No:</td>
                <td>
                    <asp:TextBox ID="tbcontact" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="tbcontact" ErrorMessage="You missed this Field*" 
                        ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Email:</td>
                <td>
                    <asp:TextBox ID="tbmail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="tbmail" ErrorMessage="You missed this Field*" 
                        ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Address:</td>
                <td>
                    <asp:TextBox ID="tbadd" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="tbadd" ErrorMessage="You missed this Field*" ForeColor="Red" 
                        ValidationGroup="g1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    DOB:</td>
                <td>
                    <asp:TextBox ID="tbcity" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="tbcity" ErrorMessage="You missed this Field*" 
                        ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                        ValidationGroup="g1" />
&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
                        ValidationGroup="g1" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>

 </asp:Content>
