<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>DS_WIKI</title>
    <link rel="stylesheet" href="Styles/login_register.css" />
</head>
<body>
    <div class="bg" >
        <div class="container"  >
            <img style="margin-left:auto;margin-right:auto;display:block;top:10%;" width="800" height="150" src="Images/logo.png" />
            <div class="center" style="text-align:center; margin:20px">
                <form id="form1" runat="server" style="border:3px black;background:rgba(255,255,255,0.0);padding:50px"   >

         <asp:Panel ID="log_in_pannel" runat="server">
            <h2 style="color:red ">LOGIN</h2>
            <asp:TextBox ID="login_user" runat="server" placeholder="用户名">

            </asp:TextBox>
            <p>

            </p>
            <asp:TextBox ID="login_passwd" runat="server" placeholder="密码" type ="password"></asp:TextBox>
 
            <p>
                            <asp:Label id="login_alert" style="color:white;" runat="server"></asp:Label>
            </p>
            
            <asp:Button ID="redirect_register_btn" text="注册" OnClick="register_btn_Click1" runat="server" CssClass="button" />
            <asp:Button ID="login_btn" OnClick="login_btn_Click" text="登录" runat="server" CssClass="button" />

        </asp:Panel>

        <asp:Panel ID="register_pannel" runat="server">
            <h2 style="color:red" >REGISTER</h2>
            <asp:TextBox ID="user_textbox" runat="server" placeHolder="账号"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="user_textbox" style="text-align:right" ForeColor="Red" runat="server" ErrorMessage="*">*</asp:RequiredFieldValidator>
            <p></p>
            <asp:TextBox ID="passwd_textbox" type="password"  placehOLDER="密码" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="passwd_textbox" style="text">*</asp:RequiredFieldValidator>
            <p> 
            </p>
            <asp:TextBox ID="passwd_confirm" type="password" placeHolder="请再次输入密码" runat="server"></asp:TextBox>
            <asp:CompareValidator ControlToValidate="passwd_confirm" ControlToCompare="passwd_textbox" runat="server">*</asp:CompareValidator>
            <p></p>
            <asp:TextBox ID="name_textbox" placeholder="昵称" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="name_textbox">*</asp:RequiredFieldValidator>
            <p>                                <asp:label id="register_alert" runat="server" ></asp:label></p>

             <asp:Button ID="register_btn" Text="注册" runat="server" OnClick ="register_btn_Click" CssClass="button"/>
            <asp:Button Text="返回" runat="server" OnClick="back_Click" CausesValidation="false" CssClass="button"/>
        </asp:Panel>

    </form>
            </div>
        </div>
        
    </div>
    
</body>
</html>
