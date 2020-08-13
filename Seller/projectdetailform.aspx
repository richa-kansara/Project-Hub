<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage2.master" AutoEventWireup="true" CodeFile="projectdetailform.aspx.cs" Inherits="projectdetail_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 256px;">
        <tr>
            <td style="width: 210px">
                <asp:Label ID="Label2" runat="server" Text="sellerId"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="projectid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="projectid" HeaderText="projectid" ReadOnly="True" SortExpression="projectid" />
                        <asp:BoundField DataField="project_name" HeaderText="project_name" SortExpression="project_name" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ph %>" SelectCommand="SELECT [projectid], [project_name] FROM [projectinfoMst] WHERE ([seller_id] = @seller_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label3" Name="seller_id" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblprojectid" runat="server" Text="Project Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtProjectId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lbldescription" runat="server" Text="Description"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdescription" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblimage" runat="server" Text="Project Image 1:"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="Label5" runat="server" Text="Project Image 2:"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="Label4" runat="server" Text="Project Image 3:"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload3" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="Label1" runat="server" Text="Project Image 4"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload4" runat="server" />
            </td>
        </tr>

             <tr>
            <td style="width: 210px">
                <asp:Label ID="Label8" runat="server" Text="Project Video"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload5" runat="server" />
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
    </table>
</asp:Content>

