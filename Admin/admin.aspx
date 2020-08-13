<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage2.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="height: 55px; width: 211px;">
                <asp:Label ID="Label8" runat="server" Text="Admin_Id"></asp:Label>
            </td>
            <td style="height: 55px">
                <asp:TextBox ID="txtadminid" runat="server" Height="20px" ></asp:TextBox>
                <br />
            </td>
            <td style="height: 55px"></td>
        </tr>
        <tr>
            <td style="height: 55px; width: 211px;">
                <asp:Label ID="Label6" runat="server" Text="Admin Name"></asp:Label>
                <br />
            </td>
            <td style="height: 55px">
                <asp:TextBox ID="txtadminname" runat="server" onkeypress="return string(event);" OnTextChanged="txtadminname_TextChanged" AutoPostBack="True"></asp:TextBox>
                <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="Already Exist"></asp:Label>
            </td>
            <td style="height: 55px"></td>
        </tr>
        <tr>
            <td style="height: 55px; width: 211px;">
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="height: 55px">
                <asp:TextBox ID="txtadinpassword" runat="server" TextMode="Password"></asp:TextBox>
                <br />
            </td>
            <td style="height: 55px"></td>
        </tr>
        <tr>
            <td style="height: 53px; width: 211px;">
                <asp:Label ID="Label4" runat="server" Text="Email Id"></asp:Label>
            </td>
            <td style="height: 53px">
                <asp:TextBox ID="txtadminemailid" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtadminemailid" ErrorMessage="Invalid Email Id" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="msu"></asp:RegularExpressionValidator>
                <br />
            </td>
            <td style="height: 53px"></td>
        </tr>
        <tr>
            <td style="height: 55px; width: 211px;">
                <asp:Label ID="Label5" runat="server" Text="Mobile No."></asp:Label>
            </td>
            <td style="height: 55px">
                <asp:TextBox ID="txtadminmob_no" runat="server" onkeypress="return numeric(event);"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtadminmob_no" ErrorMessage="10 Digits Required" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{10}" ValidationGroup="msu"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 55px"></td>
        </tr>
        <tr>
            <td style="height: 52px; width: 211px;"></td>
            <td style="height: 52px">
                <asp:Button ID="btnsub" runat="server" Text="submit" OnClick="btnsub_Click" />
                <br />
            </td>
            <td style="height: 52px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 211px;"></td>
            <td style="height: 20px">
                <asp:Label ID="lblerror" runat="server"></asp:Label>
            </td>
            <td style="height: 20px"></td>
        </tr>
    </table>
 </asp:Content>

