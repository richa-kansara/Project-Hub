<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage2.master" AutoEventWireup="true" CodeFile="projectinfoform.aspx.cs" Inherits="projectinfo_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="JScript.js"></script>
    <p>
        =&#39;</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 394px;">
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblprojectid" runat="server" Text="Project Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtprojectid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblprojectname" runat="server" Text="Project Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtprojectname" runat="server" OnTextChanged="txtprojectname_TextChanged" AutoPostBack="True"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" ForeColor="#CC0000" Text="Already Exist"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lbluploaddate" runat="server" Text="Upload Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtuploaddate" runat="server" onkeypress="return numeric(event);"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="Label1" runat="server" Text="Version"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtversion" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px; height: 66px">
                <asp:Label ID="lblsellerid" runat="server" Text="Seller Id"></asp:Label>
                <br />
                <asp:Label ID="lblsellerid0" runat="server" Text="Seller Name"></asp:Label>
            </td>
            <td style="height: 66px">
                <asp:TextBox ID="txtsellerid" runat="server"></asp:TextBox>
                <br />
                <asp:TextBox ID="txtsellername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblcatid" runat="server" Text="Category Id"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="categoryname" DataValueField="categoryId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ph %>" SelectCommand="SELECT [categoryId], [categoryname] FROM [categoryMst]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblammount" runat="server" Text="Ammount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtammount" runat="server" onkeypress="return numeric(event);"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="Label2" runat="server" Text="Commison Rate"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcommisonrate" runat="server" onkeypress="return numeric(event);"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmit_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblerror" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                &nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Seller/projectdetailform.aspx">Click for Store Project Details</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

