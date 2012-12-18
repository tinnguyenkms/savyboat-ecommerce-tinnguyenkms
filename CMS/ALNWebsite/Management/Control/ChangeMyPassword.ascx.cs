using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library.Utility;
using Library.Presentation;
using EducationSystem.Utility.BusinessException;
namespace ALNWebsite.Management.Control
{
    public partial class ChangeMyPassword : BaseUserControl, IAdminChangeMyPasswordView
    {
        private AdminChangeMyPasswordPresenter adminChangeMyPasswordPresenter;
        protected void Page_Load(object sender, EventArgs e)
        {
            adminChangeMyPasswordPresenter = new AdminChangeMyPasswordPresenter(this);
            if (!IsPostBack)
            {
                this.UserId = base.CurrentUser.Id;
            }
        }
        #region Events
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                adminChangeMyPasswordPresenter.ChangePassword();
                base.CreateMessageAlert(Page, "Successful", "Default.aspx", "SuccessfulMsg");
            }
            catch (PasswordInvalidException)
            {
                base.CreateMessageAlert(Page, "Invalid Password", "", "FailedMsg");
            }
            catch (PasswordNotMatchException)
            {
                base.CreateMessageAlert(Page, "Password not match", "", "FailedMsg");
            }
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            Response.Redirect(Page.ResolveUrl("~/Management/Default.aspx"));
        }
        #endregion
        public Guid UserId
        {
            get
            {
                if (ViewState["UserId"] != null)
                {
                    return new Guid(ViewState["UserId"].ToString());
                }
                return Guid.Empty;
            }
            set
            {
                ViewState["UserId"] = value.ToString();
            }
        }
       public string NewPassword
        {
            get { return txtNewPassword.Text; }
        }

    public string OldPassword
    {
        get { return txtOldPassword.Text; }
    }

    public string ConfirmPassword
    {
        get { return txtConfirmPwd.Text; }
    }
    


    }
}