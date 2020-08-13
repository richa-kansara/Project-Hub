<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 221px">
        <tr>
            <td style="width: 210px">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Login Form"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">&nbsp;</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Seller</asp:ListItem>
                    <asp:ListItem>Buyer</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtuserid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px; height: 41px"></td>
            <td style="height: 41px">
                <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Login" />
            </td>
        </tr>
        <tr>
            <td style="width: 210px; height: 34px"></td>
            <td style="height: 34px">
                <asp:Label ID="lblerror" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">&nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/forgotpass.aspx">Forgot Password</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">&nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/userform.aspx">User Registration</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

