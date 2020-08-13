<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/MasterPage2.master" AutoEventWireup="true" CodeFile="complaintform.aspx.cs" Inherits="complainform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="height: 52px; width: 210px;">
                <asp:Label ID="Label2" runat="server" Text="Complaint Id"></asp:Label>
            </td>
            <td style="height: 52px">
                <asp:TextBox ID="txtcomplaintid" runat="server" onkeypress="return numeric(event);"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 56px; width: 210px;">
                <asp:Label ID="Label3" runat="server" Text="Complaint Date"></asp:Label>
            </td>
            <td style="height: 56px">
                <asp:TextBox ID="txtcomplaintdate" runat="server" ValidationGroup="ph"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcomplaintdate" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 54px; width: 210px;">
                <asp:Label ID="Label4" runat="server" Text="User  Id"></asp:Label>
            </td>
            <td style="height: 54px">
                <asp:TextBox ID="txtcomplaintuserid" runat="server" ValidationGroup="ph"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcomplaintuserid" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 55px; width: 210px;">
                <asp:Label ID="Label5" runat="server" Text="Complaint Desccription"></asp:Label>
            </td>
            <td style="height: 55px">
                <asp:TextBox ID="txtcomplaintdec" runat="server" ValidationGroup="ph"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcomplaintdec" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 55px; width: 210px;">
                <asp:Label ID="Label8" runat="server" Text="Project Id"></asp:Label>
            </td>
            <td style="height: 55px">
                <asp:TextBox ID="txtprojectid" runat="server" ValidationGroup="ph"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtprojectid" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 54px; width: 210px;"></td>
            <td style="height: 54px">
                <asp:Button ID="btnsub" runat="server" Text="submit" OnClick="btnsub_Click" ValidationGroup="ph" />
            </td>
        </tr>
        <tr>
            <td style="width: 210px">&nbsp;</td>
            <td>
                <asp:Label ID="lblerror" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

