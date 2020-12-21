<%@ Page Title="DS_WIKI 密码修改" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="Scripts/jquery-3.5.1.js">
    </script>
    <script type="text/javascript">
        function test(input) {
            var img = document.getElementById("preview")
            if (input.files && input.files[0]) {
                var fildr = new FileReader();
                fildr.onload = function (e) {
                    img.src = e.target.result;
                }
                fildr.readAsDataURL(input.files[0]);
            }
        }
    </script>
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
                <asp:UpdatePanel runat="server">
            <ContentTemplate>
                                        <asp:Image ID="icon" runat="server" Width="200" Height="200" />
            </ContentTemplate>
        </asp:UpdatePanel>

        <img src="Images/icon.jpg" id="preview" height="200" width="200" />
        <asp:FileUpload ID="fileUpload" runat="server" onchange="test(this)" />
        <asp:Button runat="server" ID="save"   OnClientClick="return true;" OnClick="save_Click" Text="确定修改" />
    </div>
</asp:Content>

