<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/MasterPage2.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Buyer_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
        <table style="width: 100%">
            <tr>
                <td style="width: 85px">
                    <asp:Image ID="Image2" runat="server" Height="125px" ImageUrl='<%# Eval("img") %>' Width="125px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 85px">Id</td>
                <td>
                    <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                </td>
            </tr>
            <tr>
                <td style="width: 85px">Name</td>
                <td>
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                </td>
            </tr>
            <tr>
                <td style="width: 85px">Address</td>
                <td>
                    <asp:Label ID="addressline1Label" runat="server" Text='<%# Eval("addressline1") %>' />
                    <asp:Label ID="addressline2Label" runat="server" Text='<%# Eval("addressline2") %>' />
                    <asp:Label ID="pincodeLabel" runat="server" Text='<%# Eval("pincode") %>' />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 85px">Contact No</td>
                <td>
                    <asp:Label ID="contactnoLabel" runat="server" Text='<%# Eval("contactno") %>' />
                </td>
            </tr>
            <tr>
                <td style="width: 85px">E-mail Id</td>
                <td>
                    <asp:Label ID="Email_idLabel" runat="server" Text='<%# Eval("Email_id") %>' />
                </td>
            </tr>
        </table>
        <br />
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ph %>" SelectCommand="SELECT userMst.user_id, userMst.name, userMst.addressline1, userMst.addressline2, StateMst.StateNme, cityMst.cityname, userMst.pincode, userMst.contactno, userMst.Email_id, userMst.img FROM userMst INNER JOIN StateMst ON userMst.stateid = StateMst.StateId INNER JOIN cityMst ON userMst.cityid = cityMst.cityid WHERE (userMst.username = @Param1)">
    <SelectParameters>
        <asp:SessionParameter Name="Param1" SessionField="buyer" />
    </SelectParameters>
</asp:SqlDataSource>
<br />
</asp:Content>

