<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Login.ascx.cs" Inherits="Login" %>
<div style="border-style: dotted; padding: 5% 30% 5% 30%; margin-top: 0%; background-color: #FFFFFF; border-top-color: #000000;">
    <p>
    Enter Your Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1"  Style="height:20px;width:200px;margin-left:1px;margin-top:0px" runat="server"></asp:TextBox></p>
    <p>
        Enter Your Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="TextBox2" Style="height:20px;width:200px;margin-left:1px;margin-top:0px" runat="server"> </asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Log In" />
    </p>
 </div>
