<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage2.master" AutoEventWireup="true" CodeFile="cityform.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="JScript.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 262px">
        <tr>
            <td style="width: 210px">&nbsp;</td>
            <td>
                <asp:Label ID="lblcityform" runat="server" Text="City Form"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblcityid" runat="server" Text="City Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcityid" runat="server" onkeypress="return numeric(event);" ValidationGroup="ph"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcityid" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblcityname" runat="server" Text="City Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcityname" runat="server" onkeypress="return string(event);" AutoPostBack="True" OnTextChanged="txtcityname_TextChanged" ValidationGroup="ph"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Already Exist"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcityname" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="ph"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblstatename" runat="server" Text="State Name"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="StateNme" DataValueField="StateId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ph %>" SelectCommand="SELECT [StateId], [StateNme] FROM [StateMst]"></asp:SqlDataSource>
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

