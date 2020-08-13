<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage2.master" AutoEventWireup="true" CodeFile="StateForm.aspx.cs" Inherits="StateForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table style="width: 100%; height: 250px">
        <tr>
            <td style="width: 209px">&nbsp;</td>
            <td>
                <asp:Label ID="lblstateform" runat="server" Text="State Form"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 209px">
                <asp:Label ID="lblstateid" runat="server" Text="State Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtstateid" runat="server" onkeypress="return numeric(event);"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 209px">
                <asp:Label ID="lblstatename" runat="server" Text="State Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtstatename" runat="server" onkeypress="return string(event);" AutoPostBack="True" OnTextChanged="txtstatename_TextChanged" ValidationGroup="ph"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" ForeColor="#CC0000" Text="Already Exist"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtstatename" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 39px; width: 209px"></td>
            <td style="height: 39px">
                <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmit_Click" ValidationGroup="ph" />
            </td>
            <td style="height: 39px"></td>
        </tr>
        <tr>
            <td style="width: 209px; height: 19px"></td>
            <td style="height: 19px">
                <asp:Label ID="lblerror" runat="server" Text="label"></asp:Label>
            </td>
            <td style="height: 19px"></td>
        </tr>
    </table>


</asp:Content>

