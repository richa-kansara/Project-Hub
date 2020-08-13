<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/MasterPage2.master" AutoEventWireup="true" CodeFile="ViewProjectInfo.aspx.cs" Inherits="Buyer_ViewProjectInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:DataList ID="DataList1" runat="server" DataKeyField="projectid" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
        <ItemTemplate>
            <table style="width: 100%;margin-right:20px">
                <tr>
                    <td colspan="2">
                        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("image1") %>' Width="224px" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 107px">project_name</td>
                    <td style="width: 61%">
                        <asp:Label ID="project_nameLabel" runat="server" Text='<%# Eval("project_name") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 107px">upload_date</td>
                    <td style="width: 61%">
                        <asp:Label ID="upload_dateLabel" runat="server" Text='<%# Eval("upload_date") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 107px">version</td>
                    <td style="width: 61%">
                        <asp:Label ID="versionLabel" runat="server" Text='<%# Eval("version") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 107px">ammount</td>
                    <td style="width: 61%">
                        <asp:Label ID="ammountLabel" runat="server" Text='<%# Eval("ammount") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 107px">categoryname</td>
                    <td style="width: 61%">
                        <asp:Label ID="categorynameLabel" runat="server" Text='<%# Eval("categoryname") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 107px">language</td>
                    <td style="width: 61%">
                        <asp:Label ID="languageLabel" runat="server" Text='<%# Eval("language") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 107px">&nbsp;</td>
                    <td style="width: 61%">
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl='<%# Eval("projectid","~/Buyer/project.aspx?projectid={0}") %>'>Detail</asp:LinkButton>
                    </td>
                </tr>
            </table>
           
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ph %>" SelectCommand="SELECT projectinfoMst.project_name, projectinfoMst.projectid, projectdetailMst.image1, projectinfoMst.upload_date, projectinfoMst.version, projectinfoMst.ammount, categoryMst.categoryname, categoryMst.language FROM projectdetailMst INNER JOIN projectinfoMst ON projectdetailMst.projectid = projectinfoMst.projectid INNER JOIN categoryMst ON projectinfoMst.categoryid = categoryMst.categoryId ORDER BY projectinfoMst.projectid"></asp:SqlDataSource>
   
</asp:Content>

