<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Courses.aspx.cs" Inherits="Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Courses
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <asp:GridView ID="dgvCourses" runat="server" AutoGenerateColumns="false" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ItemStyle-Width ="150PX" />
            <asp:BoundField DataField="CourseName" HeaderText="CourseName" ItemStyle-Width ="200PX" />
            <asp:BoundField DataField="Description" HeaderText="Description" ItemStyle-Width ="150PX" />
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="CourseUpdate.aspx?ID={0}" Text="Update Course" />
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="CourseDelete.aspx?ID={0}" Text="Delete Course" />
            
        </Columns>

    </asp:GridView>
</asp:Content>

