using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        long numPageHits = 0;

        if (Session["PageHits"] != null)
        {
            numPageHits = long.Parse(Session["PageHits"].ToString());
        }

        numPageHits += 1;
        Session["PageHits"] = numPageHits;

        Debug.WriteLine("Number of page hits = " + numPageHits.ToString());
    }
}
