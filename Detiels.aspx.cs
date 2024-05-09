using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Detiels : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    public string getdetiels()
    {
        SqlConnection conn = new DB_Connection().getConnection();
        SqlCommand cmd = new SqlCommand("select * from AddJob", conn);

        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        String data = "";
        while (reader.Read())
        {
            //  data += "</tr><labl><td>" + reader.GetString(0);
            //data += "</td><td>" + (reader.GetString(1));
            //  data += "</td><td>" + (reader.GetString(2));
            //  data += "</td><td>" + (reader.GetString(4));
            //data += "</td><td>" + (reader.GetString(3));
            //    data += "</td><td>" + (reader.GetDateTime(5));
            //   data += "</td><td>" + (reader.GetDateTime(6));
              data += "</td><td>" + (reader.GetString(7));


        }
        conn.Close();
        return data;

    }

    
}