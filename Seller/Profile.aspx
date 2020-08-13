<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage2.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Buyer_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
        <table style="width: 100%">
            <tr>
                <td colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="125px" ImageUrl='<%# Eval("img") %>' />
                </td>
            </tr>
            <tr>
                <td>user_id</td>
                <td>
                    <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                </td>
            </tr>
            <tr>
                <td>name</td>
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
            </tr>
            <tr>
                <td>addressline1</td>
                <td>
                    <asp:Label ID="addressline1Label" runat="server" Text='<%# Eval("addressline1") %>' />
                </td>
            </tr>
            <tr>
                <td>addressline2</td>
                <td>
                    <asp:Label ID="addressline2Label" runat="server" Text='<%# Eval("addressline2") %>' />
                </td>
            </tr>
            <tr>
                <td>StateNme</td>
                <td>
                    <asp:Label ID="StateNmeLabel" runat="server" Text='<%# Eval("StateNme") %>' />
                </td>
            </tr>
            <tr>
                <td>cityname</td>
                <td>
                    <asp:Label ID="citynameLabel" runat="server" Text='<%# Eval("cityname") %>' />
                </td>
            </tr>
            <tr>
                <td>pincode</td>
                <td>
                    <asp:Label ID="pincodeLabel" runat="server" Text='<%# Eval("pincode") %>' />
                </td>
            </tr>
            <tr>
                <td>contactno</td>
                <td>
                    <asp:Label ID="contactnoLabel" runat="server" Text='<%# Eval("contactno") %>' />
                </td>
            </tr>
            <tr>
                <td>Email_id</td>
                <td>
                    <asp:Label ID="Email_idLabel" runat="server" Text='<%# Eval("Email_id") %>' />
                </td>
            </tr>
        </table>
<br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ph %>" SelectCommand="SELECT userMst.user_id, userMst.name, userMst.addressline1, userMst.addressline2, StateMst.StateNme, cityMst.cityname, userMst.pincode, userMst.contactno, userMst.Email_id, userMst.img FROM userMst INNER JOIN StateMst ON userMst.stateid = StateMst.StateId INNER JOIN cityMst ON userMst.cityid = cityMst.cityid WHERE (userMst.username = @Param1)">
    <SelectParameters>
        <asp:SessionParameter Name="Param1" SessionField="seller" />
    </SelectParameters>
</asp:SqlDataSource>
<br />
</asp:Content>

