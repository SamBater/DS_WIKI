<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Magic.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView runat="server" DataSourceID="ldsUser" AutoGenerateColumns="false" HorizontalAlign="Center" CellPadding="10" >
        <Columns>
            <asp:TemplateField ControlStyle-Width="150px" ControlStyle-Height="160px">
                <ItemTemplate>
                    <a href='Magic_item.aspx?Id=<%# Eval("Id") %>'>
                        <img style="width:150px;height:160px;" src='<%# ResolveUrl("~/Images/Magic/"+Eval("Id") + ".jpg") %>  ' />
                    </a>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField  DataField="name" HeaderText="名称" />
            <asp:BoundField DataField="effect" HeaderText="效果" />
            <asp:BoundField DataField="slot" HeaderText="插槽" />
        </Columns>
    </asp:GridView>

<asp:LinqDataSource ID="ldsUser" EnableDelete="true"   EnableUpdate="true" runat="server" ContextTypeName="DataClassesDataContext" TableName="Magic" >
        
    </asp:LinqDataSource>
</asp:Content>

