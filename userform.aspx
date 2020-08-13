<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="userform.aspx.cs" Inherits="userform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 659px">
        <tr>
            <td style="width: 210px">&nbsp;</td>
            <td>
                <asp:Label ID="lbluserform" runat="server" Text="User Form"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblusertype" runat="server" Text="User Type"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>Buyer</asp:ListItem>
                    <asp:ListItem>Seller</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lbluserid" runat="server" Text="User Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtuid" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" onkeypress="return string(event);" ValidationGroup="Msu"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Not Null" ForeColor="#CC0000" ValidationGroup="Msu"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblad1" runat="server" Text="Address Line1"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtad1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblad2" runat="server" Text="Address Line2"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtad2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblstateid" runat="server" Text="State Id"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="StateNme" DataValueField="StateId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ph %>" SelectCommand="SELECT [StateId], [StateNme] FROM [StateMst]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblcityid" runat="server" Text="City Id"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="cityname" DataValueField="cityid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ph %>" SelectCommand="SELECT [cityid], [cityname] FROM [cityMst]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblpc" runat="server" Text="Pincode"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpc" runat="server" onkeypress="return numeric(event);" MaxLength="6"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpc" ErrorMessage="6 Digits Required" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{6}" ValidationGroup="msu"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblcn" runat="server" Text="Contact No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcn" runat="server" onkeypress="return numeric(event);" MaxLength="10" ValidationGroup="Msu"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcn" ErrorMessage="Not Null" ForeColor="#CC0000" ValidationGroup="Msu"></asp:RequiredFieldValidator>
                <b>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcn" ErrorMessage="10 Digits Required" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{10}" ValidationGroup="msu"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 210px; height: 33px;">
                <asp:Label ID="lbleid" runat="server" Text="Email Id"></asp:Label>
            </td>
            <td style="height: 33px">
                <asp:TextBox ID="txteid" runat="server" AutoPostBack="True" OnTextChanged="txteid_TextChanged" ValidationGroup="Msu"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txteid" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="Msu"></asp:RequiredFieldValidator>
                <b>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txteid" ErrorMessage="Invalid E-Mail Id" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="msu"></asp:RegularExpressionValidator>
                <asp:Label ID="Label1" runat="server" Text="Already Exist"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblqid" runat="server" Text="Question Id"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="question_description" DataValueField="questionid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ph %>" SelectCommand="SELECT * FROM [questionMst]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblanswer" runat="server" Text="Answer"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtans" runat="server" ValidationGroup="Msu"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtans" ErrorMessage="Not Null" ForeColor="#CC0000" ValidationGroup="Msu"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblun" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtun" runat="server" ValidationGroup="Msu"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtun" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="Msu"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblpw" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpw" runat="server" TextMode="Password" ValidationGroup="Msu"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpw" ErrorMessage="Not Null" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="Msu"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 210px">
                <asp:Label ID="lblimage" runat="server" Text="Image"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 210px">&nbsp;</td>
            <td>
                <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmit_Click" ValidationGroup="Msu" />
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

