<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/MasterPage2.master" AutoEventWireup="true" CodeFile="paymentform.aspx.cs" Inherits="paymentform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 314px">
        <tr>
            <td style="width: 211px">&nbsp;</td>
            <td>
                <asp:Label ID="lblpaymentinfo" runat="server" Text="Payment Info Form"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 211px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 211px">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BuyId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="BuyId" HeaderText="BuyId" ReadOnly="True" SortExpression="BuyId" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Project_id" HeaderText="Project_id" SortExpression="Project_id" />
                        <asp:BoundField DataField="User_id" HeaderText="User_id" SortExpression="User_id" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="BuyerName" HeaderText="BuyerName" SortExpression="BuyerName" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ph %>" SelectCommand="SELECT * FROM [buyinfoMst] WHERE ([BuyerName] = @BuyerName)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" Name="BuyerName" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 211px">
                <asp:Label ID="lblpid" runat="server" Text="Payment Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpid" runat="server" onkeypress="return numeric(event);"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 211px">
                <asp:Label ID="lblpdate" runat="server" Text="Payment Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpdate" runat="server" Width="117px" onkeypress="return date(event);"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 211px">
                <asp:Label ID="lblsellerid" runat="server" Text="Seller Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtsellerid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 211px">
                <asp:Label ID="lblpmode" runat="server" Text="Payment Mode"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpmode" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 211px; height: 20px">
                <asp:Label ID="lblamount" runat="server" Text="Amount"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="txtamount" runat="server" onkeypress="return numeric(event);"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 211px">&nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmit_Click" />
            </td>
        </tr>
        <tr>
            <td style="height: 17px; width: 211px"></td>
            <td style="height: 17px">
                <asp:Label ID="lblerror" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

