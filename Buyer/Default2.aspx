<%@ Page Title="" Language="C#" MasterPageFile="~/Buyer/MasterPage2.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Buyer_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Buyer/Home.aspx">Go To Home</asp:LinkButton>
</asp:Content>

