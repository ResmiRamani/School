<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>
<%@ Register TagPrefix ="UC" TagName="UCLOGIN" Src="~/Login.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Index </title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
     <img src="images%20(4).jpg" style="width: 100%;height: 300px;"/>
    
    <form id="form1" runat="server">
        <div>
            <uc:UCLOGIN ID="idLogin" runat="server" />
        </div>
    </form>
    <div id ="copyright">
            <h4>Copyright © Resmi 2019  All Rights Reserved </h4>
    </div>
</body>
</html>
