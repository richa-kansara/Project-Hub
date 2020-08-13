<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/MasterPage2.master" AutoEventWireup="true" CodeFile="Project.aspx.cs" Inherits="Buyer_Project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script type="text/javascript">
        window.onload = function () {
            var video = document.getElementById('video');
            var lable = document.getElementById('ContentPlaceHolder1_Label11').textContent;


            if (lable == "") {
                video.setAttribute("style", "diplay:none;");
            }
            else {
                var fl = "../img/" + lable;
                video.setAttribute("src", fl);
            }
        }
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 362px">
        <tr>
            <td style="width: 242px">
                <asp:Label ID="Label1" runat="server" Text="Project Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                <asp:Label ID="Label2" runat="server" Text="Project Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                <asp:Label ID="Label3" runat="server" Text="Upload Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtudate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                <asp:Label ID="Label4" runat="server" Text="Version"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtversion" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                <asp:Label ID="Label5" runat="server" Text="Seller Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtsname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                <asp:Label ID="Label6" runat="server" Text="Category Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcategorynane" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                <asp:Label ID="Label10" runat="server" Text="Language"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txlang" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px">
                <asp:Label ID="Label7" runat="server" Text="Amount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtamount" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px; height: 30px">
                <asp:Label ID="Label8" runat="server" Text="Commision Rate"></asp:Label>
            </td>
            <td style="height: 30px">
                <asp:TextBox ID="txtcomrate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px; height: 48px">
                <asp:Label ID="Label9" runat="server" Text="Description"></asp:Label>
            </td>
            <td style="height: 48px">
                <asp:TextBox ID="txtdescription" runat="server" Height="17px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 242px; height: 48px">&nbsp;</td>
            <td style="height: 48px">
                
                <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image2" runat="server" Height="150px" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image3" runat="server" Height="150px" Width="150px"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image4" runat="server" Height="150px" Width="150px"/>
                
            </td>
        </tr>
        <tr>
            <td style="width: 242px; height: 48px"></td>
            <td style="height: 48px">
                
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td>
                 <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                 
            <video  id="video" width="400" controls>
            <source src="" type="video/mp4">
 
  Your browser does not support HTML5 video.
</video>

                &nbsp;<br />
            </td>
        </tr>
        <tr>
            <td style="width: 242px">&nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Text="BUY" OnClick="btnsubmit_Click" />
            </td>
        </tr>
    </table>





    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ph %>" SelectCommand="SELECT projectinfoMst.projectid, projectinfoMst.project_name, projectinfoMst.upload_date, projectinfoMst.version, userMst.name, categoryMst.categoryname, projectinfoMst.ammount, projectinfoMst.commision_rate FROM projectinfoMst INNER JOIN categoryMst ON projectinfoMst.categoryid = categoryMst.categoryId INNER JOIN userMst ON projectinfoMst.seller_id = userMst.user_id ORDER BY projectinfoMst.projectid DESC"></asp:SqlDataSource>

</asp:Content>

