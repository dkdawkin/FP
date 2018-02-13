using System;
using System.Web;
using System.Web.UI;

namespace FP
{

    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(Object sender,EventArgs e)
        {
            userNameLbl.Text = "Username:";
            passwordLbl.Text = "Password:";
            alertLabel.Text = "Incorrect username or password";
            firstNameLbl.Text = "First Name: ";
            lastNameLbl.Text = "Last Name:";
            emailLbl.Text = "Email:";
            PhoneNumLbl.Text = "Phone Number:";
            registrationAlertLabel.Text = "Please fill in all fields";
            regPasswordLbl.Text = "Password:";
            confPasswordLbl.Text = "Confirm Password:";
            fpEmail.Text = "Email: ";

        }

        public void button1Clicked(object sender, EventArgs args)
        {
            //loginBtn.Text = "You clicked me";
            if(PasswordChk(userNameTbox.Text,passwordTbox.Text)==true)
            {
                alertLabel.Text = "Good It works";
            }
            alertLabel.CssClass = "alertShow";
        }

        public void addUser(object sender, EventArgs args)
        {
            if(firstNameTbox.Text.Equals("")||lasttNameTbox.Equals("")
               ||emailTbox.Text.Equals(""))
            {
                registrationAlertLabel.CssClass = "alertShow";
            }
        }

        public void registrationBtnClicked(object sender, EventArgs args)
        {
            loginDiv.Style.Add(HtmlTextWriterStyle.Display, "none");
            registrationDiv.Style.Add(HtmlTextWriterStyle.Display, "grid");
            registrationLink.CssClass = "link";
        }

        public void forgotPasswordLink_Click(object sender, EventArgs args)
        {
            loginDiv.Style.Add(HtmlTextWriterStyle.Display, "none");
            forgotPasswordDiv.Style.Add(HtmlTextWriterStyle.Display, "grid");
            registrationLink.CssClass = "link";
        }

        Boolean PasswordChk(String Username, String Password)
        {
            Username = Username.ToLower();
            if (Username.Equals("admin") && Password.Equals("Password"))
                return true;
            //add DB logic here
            return false;
        }



    }
}
