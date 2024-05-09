using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Alljob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string getdet()
    {
        SqlConnection conn = new DB_Connection().getConnection();
        SqlCommand cmd = new SqlCommand("select * from AddJob", conn);

        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        String data = "";
        while (reader.Read())
        {

            data += "<tr><td>" + reader.GetString(0)
                  + "</td><td>" + (reader.GetString(7));


        }
        conn.Close();
        return data;

    }


}