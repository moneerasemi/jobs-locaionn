using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DB_Connection
/// </summary>
public class DB_Connection
{
    public DB_Connection()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public SqlConnection getConnection()
    {
        return new SqlConnection("Data Source=Moneer-Asemi;Initial Catalog=Job;Integrated Security=True");
    }

}