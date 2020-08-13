<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage2.master" AutoEventWireup="true" CodeFile="receiptform.aspx.cs" Inherits="receiptform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 344px;">
        <tr>
            <td style="width: 210px">&nbsp;</td>
            <td>
                <asp:Label ID="lblreceiptinfo" runat="server" Text="Receipt Info Form"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblrid" runat="server" Text="Receipt Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtrid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px; height: 46px">
                <asp:Label ID="lblrdate" runat="server" Text="Receipt Date"></asp:Label>
            </td>
            <td style="height: 46px">
                <asp:TextBox ID="txtrdate" runat="server" onkeypress="return date(event);" ValidationGroup="ph"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtrdate" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblbuyid" runat="server" Text="Buy Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbuyid" runat="server" ValidationGroup="ph"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtbuyid" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 44px; width: 210px">
                <asp:Label ID="lblpmode" runat="server" Text="Payment Mode"></asp:Label>
            </td>
            <td style="height: 44px">
                <asp:TextBox ID="txtpmode" runat="server" ValidationGroup="ph"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpmode" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblamount" runat="server" Text="Amount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtamount" runat="server" onkeypress="return numeric(event);" ValidationGroup="ph"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtamount" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 210px; height: 43px;"></td>
            <td style="height: 43px">
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

