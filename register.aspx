<%@ Page Title="" Language="C#" MasterPageFile="~/accounts.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Accounts.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <label>
                    <asp:RegularExpressionValidator runat="server" ID="RE" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ErrorMessage="Please enter your correct email"></asp:RegularExpressionValidator>
                </label>
                <label>
                    <asp:CompareValidator runat="server" ID="CV" ControlToValidate="txtcpass" ControlToCompare="txtpass" ForeColor="Red" ErrorMessage="Please enter same passwords"></asp:CompareValidator>
                </label>
                <asp:Label runat="server" ID="lbl_msg"></asp:Label>
            </div>
            <div class="col-12 col-lg-4">
                <div class="title">
                    <label style="border-bottom: 1px solid rgba(0,0,0,.1);">Create Your Account</label>
                </div>
                <div class="form-group">
                    <label class="lbl-form">First Name:</label>
                    <asp:RequiredFieldValidator runat="server" ID="RFV2" ControlToValidate="txtfirstname" Text="*" ForeColor="Red" ErrorMessage="Please Enter your First Name"></asp:RequiredFieldValidator>
                    <asp:TextBox runat="server" CssClass="form-control form-bg" ID="txtfirstname" placeholder="Enter your firstname here"></asp:TextBox>
                    <label class="lbl-form">Last Name:</label>
                    <asp:RequiredFieldValidator runat="server" ID="RFV3" ControlToValidate="txtlastname" Text="*" ForeColor="Red" ErrorMessage="Please Enter your Last Name"></asp:RequiredFieldValidator>
                    <asp:TextBox runat="server" CssClass="form-control form-bg" ID="txtlastname" placeholder="Enter your lastname here"></asp:TextBox>
                    <label class="lbl-form">Email Address:</label>
                    <asp:RegularExpressionValidator runat="server" ID="REV2" ForeColor="Red" Text="*" ErrorMessage="Please enter valid Email Address" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator runat="server" ID="RFV4" ControlToValidate="txtemail" Text="*" ForeColor="Red" ErrorMessage="Please Enter your Email Address"></asp:RequiredFieldValidator>
                    <asp:TextBox TextMode="Email" runat="server" CssClass="form-control form-bg" ID="txtemail" placeholder="Enter your email here"></asp:TextBox>
                    <label class="lbl-form">Password:</label>
                    <asp:RequiredFieldValidator runat="server" ID="RFV5" ControlToValidate="txtpass" Text="*" ForeColor="Red" ErrorMessage="Please Enter your Password"></asp:RequiredFieldValidator>
                    <asp:TextBox TextMode="Password" runat="server" CssClass="form-control form-bg" ID="txtpass" placeholder="Enter your password here"></asp:TextBox>
                    <label class="lbl-form">Confirm Password:</label>
                    <asp:CompareValidator runat="server" ID="CV1" ForeColor="Red" ControlToValidate="txtcpass" ControlToCompare="txtpass" Text="*" ErrorMessage="Your password did not match"></asp:CompareValidator>
                    <asp:RequiredFieldValidator runat="server" ID="RFV6" ControlToValidate="txtcpass" Text="*" ForeColor="Red" ErrorMessage="Please Confirm your Password"></asp:RequiredFieldValidator>
                    <asp:TextBox TextMode="Password" runat="server" CssClass="form-control form-bg" ID="txtcpass" placeholder="Confirm your password here"></asp:TextBox>
                    <asp:Button runat="server" ID="btn_signup" Text="Sign Up" CssClass="button" OnClick="btn_signup_Click"/>
                </div>
            </div>
            <div class="col-lg-4 mt-lg-5">
                <asp:ValidationSummary runat="server" ID="VS2" ForeColor="Red" />
            </div>
        </div>
    </div>
</asp:Content>
