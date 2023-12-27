<%@ Page MasterPageFile="~/adminmaster.master" Language="C#" AutoEventWireup="true" CodeFile="Business_det_form.aspx.cs" Inherits="Business_det_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="3">
                    <strong>Doctor Details:</strong></td>
            </tr>
            <tr>
                <td>
                    Adviser Name:</td>
                <td>
                    <asp:TextBox ID="tbname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tbname" ErrorMessage="You missed this Field." 
                        ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Adviser Address:</td>
                <td>
                    <asp:TextBox ID="tbadd" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="tbadd" ErrorMessage="You missed this Field." ForeColor="Red" 
                        ValidationGroup="g1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Contact Person:</td>
                <td>
                    <asp:TextBox ID="tbcperson" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="tbcperson" ErrorMessage="You missed this Field." 
                        ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Contact Number:</td>
                <td>
                    <asp:TextBox ID="tbcno" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="tbcno" ErrorMessage="You missed this Field." ForeColor="Red" 
                        ValidationGroup="g1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Specialized In:</td>
                <td>
                    <asp:TextBox ID="tbbnature" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="tbbnature" ErrorMessage="You missed this Field." 
                        ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    City:</td>
                <td>
                    <asp:TextBox ID="tbcity" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="tbcity" ErrorMessage="You missed this Field." 
                        ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    State:</td>
                <td>
                    <asp:TextBox ID="tbstate" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="tbstate" ErrorMessage="You missed this Field." 
                        ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Country:</td>
                <td>
                    <asp:TextBox ID="tbcountry" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="tbcountry" ErrorMessage="You missed this Field." 
                        ForeColor="Red" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                        ValidationGroup="g1" />
                &nbsp;
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
                        ValidationGroup="g1" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</asp:content>
