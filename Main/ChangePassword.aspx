<%@ Page Title="DS_WIKI 密码修改" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="text-align:center;padding:10px;margin:10px;">
        <asp:TextBox type="password" CssClass="input" runat="server" placeholder="原密码" ID="origin_passwd" ></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="origin_passwd" ErrorMessage="*" runat="server"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox type="password" CssClass="input" runat="server" placeholder="新密码" ID="new_passwd"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="new_passwd" ErrorMessage="*" runat="server"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox type="password" CssClass="input" runat="server" placeholder="确认密码" ID="confirm_passwd"></asp:TextBox>
        <asp:CompareValidator ControlToValidate="confirm_passwd" ControlToCompare="new_passwd" ErrorMessage="*" runat="server"></asp:CompareValidator>
        <br />
        <asp:Button id="confirm" Text="确定" OnClick="confirm_Click" runat="server" />
    </div>
</asp:Content>

