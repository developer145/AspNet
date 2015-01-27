using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CustomerManagementModel;

public partial class LinqXML : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (CustomerManagementEntities cm = new CustomerManagementEntities())
        {
            var results = cm.Customers.Where(q => q.CreditLimit < 1000).Select(q => q);

            var countries = cm.Countries.Where(q => q.InternetTLD.StartsWith("U")).Select(q => q);
        }
    }
}