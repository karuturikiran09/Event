﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ImageContinue.Focus();
        if (IsPostBack == true)
        {
        }

        //  if (Session["RegistrationId"] == null)
        //  {
        //  Response.Redirect("login.aspx", false);
        //  }
    }

    
    protected void ImageContinue_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/index.aspx");
    }
}
