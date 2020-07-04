<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Students.aspx.cs" Inherits="Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Students
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
   
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
         <ContentTemplate>
        <div style="vertical-align: middle; text-align: center">
        <asp:Button ID="btnFilter" runat="server" Text="Search" OnClick="btnFilter_click" />
        <asp:TextBox ID="txtFilter" runat="server"></asp:TextBox>
    </div>
    <asp:GridView ID="dgvStudent" runat="server" AutoGenerateColumns="false" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ItemStyle-Width ="150PX" />
            <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width ="200PX" />
            <asp:BoundField DataField="Type" HeaderText="Type" ItemStyle-Width ="150PX" />
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="StudentUpdate.aspx?ID={0}" Text="Update profile" />
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="StudentDelete.aspx?ID={0}" Text="Delete profile" />
            
        </Columns>
       
    </asp:GridView>
    <div align="center">
         <asp:Button runat="server" Text="Add Student"   OnClick="btnAdd_Click" ID="Button1"/>
  
        </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

