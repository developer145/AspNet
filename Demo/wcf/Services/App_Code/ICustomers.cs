using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data;

[ServiceContract]
public interface ICustomers
{
    [OperationContract]
    DataTable GetCountries(string startsWith);
}