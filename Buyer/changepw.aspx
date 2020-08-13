<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/MasterPage2.master" AutoEventWireup="true" CodeFile="changepw.aspx.cs" Inherits="changepw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 336px">
        <tr>
            <td style="width: 434px; height: 54px;">
                <asp:Label ID="lbluserid" runat="server" Text="User Id"></asp:Label>
            </td>
            <td style="height: 54px">
                <asp:TextBox ID="txtuserid" runat="server" Width="191px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 434px">
                <asp:Label ID="lbloldpassword" runat="server" Text="Old Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtoldpassword" runat="server" TextMode="Password" Width="188px" ValidationGroup="ph"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtoldpassword" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 434px">
                <asp:Label ID="lblnewpassword" runat="server" Text="New Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnewpassword" runat="server" TextMode="Password" Width="190px" ValidationGroup="ph"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnewpassword" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 434px">
                <asp:Label ID="lblreenternewpassword" runat="server" Text="Re-Enter New Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtreenterpassword" runat="server" TextMode="Password" Width="191px" ValidationGroup="ph"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtreenterpassword" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 434px">&nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" ValidationGroup="ph" />
            </td>
        </tr>
        <tr>
            <td style="width: 434px">&nbsp;</td>
            <td>
                <asp:Label ID="lblerror" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

