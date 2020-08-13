<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage2.master" AutoEventWireup="true" CodeFile="question.aspx.cs" Inherits="question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 194px">
        <tr>
            <td style="width: 210px">&nbsp;</td>
            <td>
                <asp:Label ID="lblquestionform" runat="server" Text="Question Form"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblqid" runat="server" Text="Question Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtqid" runat="server" onkeypress="return numeric(event);"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblqde" runat="server" Text="Question Description"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtqde" runat="server" MaxLength="50" ValidationGroup="ph"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtqde" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">&nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmit_Click" ValidationGroup="ph" />
            </td>
        </tr>
        <tr>
            <td style="width: 210px">&nbsp;</td>
            <td>
                <asp:Label ID="lblerror" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

