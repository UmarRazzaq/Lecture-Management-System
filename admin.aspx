<%@ Page Title="" Language="C#" MasterPageFile="~/accounts.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Accounts.admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-4"></div>
            <div class="col-12 col-lg-4">
                <div class="title">
                    <label style="border-bottom: 1px solid rgba(0,0,0,.2);">Enter <strong>ZoomUni</strong> Subject</label>
                </div>
                <div class="form-group">
                    <label class="lbl-form">Title:</label>
                    <asp:TextBox runat="server" ID="txttitle" CssClass="form-control form-bg" placeholder="Enter Subject Title"></asp:TextBox> 
                    <label class="lbl-form">Description:</label>
                    <textarea runat="server" id="txtdesc" rows="7" class="form-control form-bg" placeholder="Enter Subject Description"></textarea>
                    <label class="lbl-form">Subject:</label>
                    <asp:DropDownList runat="server" ID="ddlsubjectname" CssClass="form-control form-bg"></asp:DropDownList>
                    <asp:Button runat="server" ID="btn_upload" Text="Upload" CssClass="button" OnClick="btn_upload_Click" />
                </div>
            </div>
            <div class="col-lg-4 mt-lg-5">
                <asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
