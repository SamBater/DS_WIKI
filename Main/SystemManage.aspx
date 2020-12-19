<%@ Page Title="DS_WIKI 用户管理" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SystemManage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 style="text-align:center">用户管理</h2>
    <hr />

    <asp:GridView ID="gvUser" AutoGenerateColumns="False" DataKeyNames="Id"
        runat="server" DataSourceID="ldsUser" Width="100%" >
        <Columns >
            <asp:BoundField ItemStyle-CssClass="gv" DataField="Id" HeaderText="Id" ReadOnly="true" SortExpression="Id" />
            <asp:BoundField ItemStyle-CssClass="gv" DataField="user" HeaderText="user" SortExpression="user"   /> 
            <asp:BoundField ItemStyle-CssClass="gv" DataField="name" HeaderText="name" SortExpression="name"   />
            <asp:CommandField   ShowDeleteButton="true" />
        </Columns>
    </asp:GridView>
    <asp:LinqDataSource ID="ldsUser" EnableDelete="true"   EnableUpdate="true" runat="server" ContextTypeName="DataClassesDataContext" TableName="Table" >
        
    </asp:LinqDataSource>
</asp:Content>

