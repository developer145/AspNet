using System;
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
        using (customersWCF.CustomersClient proxy = new customersWCF.CustomersClient())
        {
            GridView1.DataSource = proxy.GetCountries("A");
            GridView1.DataBind();

            proxy.Close();
        }
    }
}
