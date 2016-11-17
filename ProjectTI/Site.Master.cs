﻿using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectTI
{
    public partial class SiteMaster : MasterPage
    {
        
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
          // Label1.Text = DateTime.Now.ToString();
      //      System.Threading.Thread.Sleep(100);
            string currenttime = DateTime.Now.ToLongTimeString();
            lblcurrenttime.Text = currenttime;

         //   Label2.Text = DateTime.Now.TimeOfDay.ToString();
            //if(!Page.IsPostBack)
            //{
            //   // Label1.Text = DateTime.Now.ToString();
            //    Image1.ImageUrl = "Images/images1.jpg";
            //    image2.ImageUrl = "Images/images2.jpg";
            //}

            SetImageUrl();
            SetImageUrl2();
            SetImageUrl3();
          
        }

        private void SetImageUrl()
        {
            Random _rand = new Random();
            int i = _rand.Next(1, 3);
            Image3.ImageUrl = "~/Images/"+ i.ToString() + ".jpg";

        }

        private void SetImageUrl2()
        {
            Random _rand = new Random();
            int i = _rand.Next(2, 5);
            Image4.ImageUrl = "~/Images/" + i.ToString() + ".jpg";

        }

        private void SetImageUrl3()
        {
            Random _rand = new Random();
            int i = _rand.Next(4, 6);
            Image1.ImageUrl = "~/Images/" + i.ToString() + ".jpg";

        }

        protected void Timer3_Tick(object sender, EventArgs e)
        {

        }
        protected void Timer4_Tick(object sender, EventArgs e)
        {

        }

        //protected void Timer1Poza_Tick(object sender, EventArgs e)
        //{
        //    string var = image2.ImageUrl.ToString();
        //    Label1.Text = var;
        //    if (var == "Images/images1.jpg")
        //        image2.ImageUrl = "Images/images1.jpg";
        //    if (var == "Images/images2.jpg")
        //        image2.ImageUrl = "Images/images2.jpg";
        //    if (var == "Images/images3.jpg")
        //        image2.ImageUrl = "Images/images3.jpg";

        //    Random random = new Random();
        //    int i = random.Next(1, 4);
        //    Label2.Text = i.ToString();
        //    Image1.ImageUrl = "" + i.ToString() + ".jpg";
        //    Label3.Text = DateTime.Now.ToLongTimeString();
        //}

        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
           // Label1.Text = DateTime.Now.ToString();
           // Label1.Text = DateTime.Now.ToString("HH:mm:ss");

        }

    }

}