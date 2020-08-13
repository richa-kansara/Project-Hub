<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/MasterPage2.master" AutoEventWireup="true" CodeFile="buyinfoform.aspx.cs" Inherits="buyinfo_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 262px;">
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblbuyid" runat="server" Text="Buy Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbuyid" runat="server" onkeypress="return numeric(event);" AutoPostBack="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label runat="server" Text="Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblprojectname" runat="server" Text="project Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtprojectname" runat="server"></asp:TextBox>
                <br />
                <asp:TextBox ID="txtprojectid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lbluserid" runat="server" Text="User Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtseller_id" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblammount" runat="server" Text="Amount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtammount" runat="server" onkeypress="return numeric(event);" ValidationGroup="ph"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtammount" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 27px; width: 210px;">
            </td>
            <td style="height: 27px">
                <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="submit" ValidationGroup="ph" />
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblerror" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

