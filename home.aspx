<%@ Page Title="" Language="C#" MasterPageFile="~/accounts.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Accounts.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-12">
                <div class="titlehome">
                    <label style="border-bottom: 1px solid rgba(0,0,0,.2);">Welcome to <strong>ZoomUni</strong></label>
                </div>
                <asp:GridView runat="server" ID="GV1" AutoGenerateColumns="false" CssClass="gridview table table-borderless">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div>
                                <h1 style="color: #8d691d"><%# Eval("Title") %></h1>
                                <p style="text-align: justify;"><%# Eval("Description") %></p>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
