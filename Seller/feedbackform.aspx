<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage2.master" AutoEventWireup="true" CodeFile="feedbackform.aspx.cs" Inherits="feedbackform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="height: 55px; width: 210px;">
                <asp:Label ID="Label1" runat="server" Text="Feedback Id"></asp:Label>
            </td>
            <td style="height: 55px">
                <asp:TextBox ID="txtfeedbackid" runat="server" onkeypress="return numeric(event);"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 55px; width: 210px;">
                <asp:Label ID="Label2" runat="server" Text="Feedback Date"></asp:Label>
            </td>
            <td style="height: 55px">
                <asp:TextBox ID="txtfeedbackdate" runat="server" onkeypress="return date(event);" OnTextChanged="txtfeedbackdate_TextChanged" ValidationGroup="ph"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfeedbackdate" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 55px; width: 210px;">
                <asp:Label ID="Label3" runat="server" Text="User Id"></asp:Label>
            </td>
            <td style="height: 55px">
                <asp:TextBox ID="txtuserid" runat="server" ValidationGroup="ph"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtuserid" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 57px; width: 210px;">
                <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label>
            </td>
            <td style="height: 57px">
                <asp:TextBox ID="txtdecsciption" runat="server" ValidationGroup="ph"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdecsciption" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 55px; width: 210px;"></td>
            <td style="height: 55px">
                <asp:Button ID="btnsub" runat="server" Text="submit" OnClick="btnsub_Click" ValidationGroup="ph" />
            </td>
        </tr>
        <tr>
            <td style="height: 55px; width: 210px;"></td>
            <td style="height: 55px">
                <asp:Label ID="lblerror" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

