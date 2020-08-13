<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage2.master" AutoEventWireup="true" CodeFile="ViewCompliant.aspx.cs" Inherits="Seller_ViewCompliant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="complaintid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="complaintid" HeaderText="Complaint Id" ReadOnly="True" SortExpression="complaintid" />
                        <asp:BoundField DataField="complaint_date" DataFormatString="{0:dd-MMM-yyyy}" HeaderText="Complaint Date" SortExpression="complaint_date" />
                        <asp:BoundField DataField="complaint_description" HeaderText="Complaint Description" SortExpression="complaint_description" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ph %>" SelectCommand="SELECT * FROM [complaintMst] WHERE ([complaint_status] IS NULL)"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="height: 63px"></td>
            <td style="height: 63px">
                <asp:Label ID="Label1" runat="server" Text="Complain Id"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" Width="136px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 50px"></td>
            <td style="height: 50px">
                <asp:Label ID="Label2" runat="server" Text="Action Taken"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

 
