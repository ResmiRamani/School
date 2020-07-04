<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div>
        <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">
            <asp:TableRow>
                
                <asp:TableCell runat="server">
                     <asp:Label ID="lblID" runat="server" Text="Student ID" Enabled="False"></asp:Label>
                </asp:TableCell>
                <asp:TableCell runat="server">
                      <asp:TextBox ID="TxtID" runat="server"></asp:TextBox>
                </asp:TableCell>
                
            </asp:TableRow>


            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                   <asp:Label ID="lblName" runat="server" Text="Student Name"></asp:Label>
                </asp:TableCell>
                <asp:TableCell runat="server"> 
                    <asp:TextBox ID="TxtName" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="*" BackColor="Yellow" ControlToValidate="TxtName"> 
                    </asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                     <asp:Label ID="lblType" runat="server" Text="Student Type"></asp:Label>
                </asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TxtType" runat="server">

                    </asp:TextBox> 
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="*" BackColor="Yellow" ControlToValidate="TxtType"/> 
                </asp:TableCell></asp:TableRow><asp:TableRow runat="server">
                <asp:TableCell runat="server">
                     <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                </asp:TableCell><asp:TableCell runat="server">
                    <asp:TextBox ID="TxtAddress" runat="server">

                    </asp:TextBox>  
                </asp:TableCell></asp:TableRow><asp:TableRow runat="server">
                <asp:TableCell runat="server">
                     <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                </asp:TableCell><asp:TableCell runat="server">
                    <asp:TextBox ID="TxtEmail" runat="server">

                    </asp:TextBox>  
                </asp:TableCell></asp:TableRow><asp:TableRow runat="server">
                <asp:TableCell runat="server">
                     <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
                </asp:TableCell><asp:TableCell runat="server">
                <asp:TextBox ID="TxtAge" runat="server" ControlToValidate="TxtAge">
                    </asp:TextBox>  
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Invalid Range" MaximumValue="95" MinimumValue="15" ControlToValidate="TxtAge">
                    </asp:RangeValidator>
                </asp:TableCell></asp:TableRow></asp:Table></div><div>
        </div><div align="center" >
         <asp:Button runat="server" Text="Add Student"   OnClick="btnAdd_Click" ID="Button1"/>
           

   </div>
    
</asp:Content>

