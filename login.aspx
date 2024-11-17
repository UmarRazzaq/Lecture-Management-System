<%@ Page Title="" Language="C#" MasterPageFile="~/accounts.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Accounts.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-4"></div>
            <div class="col-12 col-lg-4">
                <div class="title">
                    <label style="border-bottom: 1px solid rgba(0,0,0,.1);">Sign In Your Account</label>
                </div>
                <div class="form-group">
                    <label class="lbl-form">Email Address:</label>
                    <asp:RegularExpressionValidator runat="server" ID="REV1" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="*" ErrorMessage="Enter valid Eamil Address" ForeColor="Red"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator runat="server" ID="RFV1" ControlToValidate="txtemail" Text="*" ForeColor="Red" ErrorMessage="Please Enter your Email Address"></asp:RequiredFieldValidator>
                        <asp:TextBox TextMode="Email" runat="server" CssClass="form-control form-bg" ID="txtemail" placeholder="Enter your email here"></asp:TextBox>
                    <label class="lbl-form">Password:</label>
                    <asp:RequiredFieldValidator runat="server" ID="RFV2" ControlToValidate="txtpass" Text="*" ForeColor="Red" ErrorMessage="Please Enter your Paasword"></asp:RequiredFieldValidator>
                    <asp:TextBox TextMode="Password" runat="server" CssClass="form-control form-bg" ID="txtpass" placeholder="Enter your password here"></asp:TextBox>
                    <asp:Button runat="server" ID="btn_login" Text="Sign In" CssClass="button" OnClick="btn_login_Click" />
                    <asp:Label runat="server" ID="lbl_error" ForeColor="Red"></asp:Label>
                </div>
            </div>
            <div class="col-lg-4 mt-lg-5">
                <div>
                    <asp:ValidationSummary runat="server" ID="VS1" ForeColor="Red" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
