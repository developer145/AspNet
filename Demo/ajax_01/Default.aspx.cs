﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(1000);
        var rnd = new Random();
        Label1.Text = "Inside: " + rnd.Next().ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(1000);
        var rnd = new Random();
        Label1.Text = "Outside: " + rnd.Next().ToString();
    }
}