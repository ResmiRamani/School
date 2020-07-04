<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CourseUpdate.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div>
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
            <asp:TableRow>
                
                <asp:TableCell runat="server">
                     <asp:Label ID="lblID" runat="server" Text="Course ID" Enabled="False"></asp:Label>
                </asp:TableCell>
                <asp:TableCell runat="server">
                      <asp:TextBox ID="TxtID" runat="server"></asp:TextBox>
                </asp:TableCell>
                
            </asp:TableRow>


            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                   <asp:Label ID="lblName" runat="server" Text="Course Name"></asp:Label>
                </asp:TableCell>
                <asp:TableCell runat="server"> 
                    <asp:TextBox ID="TxtCourseName" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="*" BackColor="Yellow" ControlToValidate="TxtCourseName"> 

                    </asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                     <asp:Label ID="lblDes" runat="server" Text="Description"></asp:Label>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TxtDescription" runat="server">

                    </asp:TextBox> 
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="*" BackColor="Yellow" ControlToValidate="TxtDescription"/> 
                </asp:TableCell></asp:TableRow></asp:Table></div><div>
        </div><div align="center" >
                 <asp:Button runat="server" Text="Update"   OnClick="btnUpdate_Click" ID="btnUpdate"/>
         </div>
</asp:Content>

