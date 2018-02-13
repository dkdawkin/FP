<%@ Page Language="C#" Inherits="FP.Default" %>
<!DOCTYPE html>
<html>
   <link rel="Stylesheet" href="FPStyle.css" type="text/css" />
   <head runat="server">
      <title>FP</title>
   </head>
   <body>
      <form id="loginForm" class="loginForm" runat="server">
         <div  runat="server" class="loginDiv" id="loginDiv">
         <h1 class="loginTitle">Sign in</h1>       
                  <asp:Label runat="server" id="userNameLbl"></asp:Label>
                  <asp:TextBox runat="server" id="userNameTbox"></asp:TextBox><br>
                  <asp:Label runat="server" id="passwordLbl"></asp:Label>
                  <asp:TextBox runat="server" id="passwordTbox"></asp:TextBox><br>
                  <asp:Label runat="server" CssClass="hide" id="alertLabel"/>
                  <asp:Button CssClass = "center" id="loginBtn" runat="server" Text="Login" OnClick="button1Clicked" /><br>
                  <asp:LinkButton CssClass="link" id="registerLink" OnClick="registrationBtnClicked" runat="server">Register</asp:LinkButton>
                  <asp:LinkButton CssClass="link" id="forgotPasswordLink" OnClick="forgotPasswordLink_Click" runat="server">Forgot Password?</asp:LinkButton>
        </div>
            
            <div class="registrationDiv" runat="server" id="registrationDiv">
                 <h1 class="registrationTitle" >New User</h1>
                 <asp:Label runat="server" id="firstNameLbl"></asp:Label>
                 <asp:TextBox runat="server" id="firstNameTbox"></asp:TextBox><br>
                 <asp:Label runat="server" id="lastNameLbl"></asp:Label>
                 <asp:TextBox runat="server" id="lasttNameTbox"></asp:TextBox><br>
                 <asp:Label runat="server" id="emailLbl"></asp:Label>
                 <asp:TextBox runat="server" id="emailTbox"></asp:TextBox><br>
                 <asp:Label runat="server" id="PhoneNumLbl"></asp:Label>
                 <asp:TextBox runat="server" id="PhoneNumTbox"></asp:TextBox><br>
                 <asp:Label runat="server" id="regPasswordLbl"></asp:Label>
                 <asp:TextBox runat="server" id="regPasswordTbox"></asp:TextBox><br>
                 <asp:Label runat="server" id="confPasswordLbl"></asp:Label>
                 <asp:TextBox runat="server" id="confPasswordTbox"></asp:TextBox><br>
                 <asp:Label runat="server" CssClass="hide" id="registrationAlertLabel"/>
                <asp:LinkButton CssClass="link" runat="server" OnClick="addUser" id="registrationLink">Register</asp:LinkButton>
            </div>
            <div class="forgotPasswordDiv" runat="server" id="forgotPasswordDiv">
                <h1 class="forgotTitle">Forgot Password</h1>
                <asp:Label runat="server" id="fpEmail"></asp:Label>
                 <asp:TextBox runat="server" id="fpEmailTbox"></asp:TextBox><br>
                <asp:LinkButton CssClass="link" runat="server"  id="resetPasswordLink">Reset Password</asp:LinkButton>
            </div>
            
      </form>
   </body>
</html>