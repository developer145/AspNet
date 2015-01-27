using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection())
        {
            cn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\AspNet\Demo\Validation\App_Data\CustomerManagement.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True";
            cn.Open();

            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand selectCmd = new SqlCommand("select * from table");
            SqlCommand insertCmd = new SqlCommand("insert into table");
            SqlCommand deleteCmd = new SqlCommand("delete from table");
            SqlCommand updateCmd = new SqlCommand("update table");

            da.SelectCommand = selectCmd;
            da.InsertCommand = insertCmd;
            da.DeleteCommand = deleteCmd;
            da.UpdateCommand = updateCmd;

            SqlDataReader rdr = selectCmd.ExecuteReader();
            if (rdr.HasRows)
            {
                while (rdr.Read())
                {
                    //
                }
            }
            cn.Close();

            // update example
            cn.Open();
            using (SqlDataAdapter uda = new SqlDataAdapter())
            {
                DataSet uds = new DataSet();
                DataRow row = uds.Tables["Orders"].NewRow();
                row["ID"] = Guid.NewGuid();
                row["CustomerId"] = 12345;

                // insert new row locally
                uds.Tables["Orders"].Rows.Add(row);

                // update data source
                uda.Update(uds, "Orders");
            }
            cn.Close();


        }
    }
}