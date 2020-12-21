<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Magic_item.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:FormView runat="server" ID="form" Width="100%">
        <ItemTemplate>
            <h2> <%#Eval("name") %> </h2>
            
            <hr />
          <div class="transparent">
        <img src='<%# ResolveUrl("~/Images/Magic/"+Eval("Id") + ".jpg") %>  ' runat="server" />
    </div>
            <h2>获取途径</h2>
            <p> <%#Eval("availability") %></p>
            <hr />
            <h2>效果</h2>
            <p><%#Eval("effect") %></p>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>

