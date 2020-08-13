<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/MasterPage2.master" AutoEventWireup="true" CodeFile="viewvideo.aspx.cs" Inherits="Buyer_viewvideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <script type="text/javascript">
       window.onload = function () {
           var video = document.getElementById('video');
           var lable = document.getElementById('ContentPlaceHolder1_Label1').textContent;


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
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                 
            <video  id="video" width="400" controls>
            <source src="" type="video/mp4">
 
  Your browser does not support HTML5 video.
</video>



</asp:Content>

