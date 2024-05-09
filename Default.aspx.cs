using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string getjob()
    {
        SqlConnection conn = new DB_Connection().getConnection();
        SqlCommand cmd = new SqlCommand("select * from Addjob", conn);

        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        String data = "";
        while (reader.Read())
        {

            data += "<tr><td>" + reader.GetString(0) + "</td><td>" + (reader.GetString(1)) +
                "</td><td>" + (reader.GetString(2)) + "</td><td>" + (reader.GetString(4))
                + "</td><td>" + (reader.GetString(3)) + "</td><td>" + (reader.GetDateTime(5)) +
                  "</td><td>" + (reader.GetDateTime(6));


        }
        conn.Close();
        return data;

    }
}