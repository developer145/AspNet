using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

[ServiceBehavior(IncludeExceptionDetailInFaults = true)]
public class Customers : ICustomers
{
    private SqlConnection customerManagementConnection = null;
    private DataTable countriesDataTable = null;

    [OperationBehavior(Impersonation = ImpersonationOption.Allowed)]
    public DataTable GetCountries(string startsWith)
    {
        return getAllCountries(startsWith);
    }

    /// <summary>
    /// Gets all customers in the database
    /// </summary>
    /// <returns>DataTable with all customers in database</returns>
    private DataTable getAllCountries(string startsWith)
    {
        // Create and instantiate connection
        using (customerManagementConnection = new SqlConnection())
        {
            // Initialize connection string from web.config
            customerManagementConnection.ConnectionString =
                ConfigurationManager.ConnectionStrings[
                "CustomerManagementConnectionString"].ConnectionString;

            // Open connection
            customerManagementConnection.Open();

            // Declare and instantiate data adapter
            using (SqlDataAdapter customerManagementDataAdapter = new SqlDataAdapter())
            {
                // Declare and instantiate command objects
                SqlCommand selectCommand = new SqlCommand(
                    "SELECT * FROM Countries WHERE Name LIKE '" + startsWith + "%'", customerManagementConnection);
                // Assign command objects
                customerManagementDataAdapter.SelectCommand = selectCommand;

                // Declare and instantiate DataTable
                countriesDataTable = new DataTable("Countries");
                // Apply the full schema from the data source
                customerManagementDataAdapter.FillSchema(countriesDataTable, SchemaType.Source);
                customerManagementDataAdapter.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                customerManagementDataAdapter.MissingMappingAction = MissingMappingAction.Passthrough;
                // Populate Customers DataTable
                customerManagementDataAdapter.Fill(countriesDataTable);
            }
        }

        return countriesDataTable;
    }
}