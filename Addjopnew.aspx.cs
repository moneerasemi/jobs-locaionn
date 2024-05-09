using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;


public partial class Addjopnew : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void addJop_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new DB_Connection().getConnection();
            conn.Open();
            string insert = "insert into AddJob(job_name,company_name,field,type,city,publish_date,deadline,detiels) values(@job_name,@company_name,@field,@type,@city,@publish_date,@deadline,@detiels)";
            SqlCommand cmd = new SqlCommand(insert, conn);
           // cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("job_name", job_name.Text);
            cmd.Parameters.AddWithValue("field", field.Text);
            cmd.Parameters.AddWithValue("company_name", company_name.Text);
            cmd.Parameters.AddWithValue("type", type1.Text);
            cmd.Parameters.AddWithValue("city", city1.Text);
            cmd.Parameters.AddWithValue("publish_date", publish_date.Text);
            cmd.Parameters.AddWithValue("deadline", deadline.Text);
            cmd.Parameters.AddWithValue("detiels", TextBox1.Text);
            cmd.ExecuteNonQuery();
            cmd.Parameters.Clear();

            lblmsg.Text = " تم اضافة بنجاح الى قاعدة البيانات";
              lblmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
            conn.Close();
        }
        // int k= cmd.ExecuteNonQuery();
        // if (k!= 0)
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
            //  lblmsg.Text = " تم الاضافة بنجاح الى قاعدة البيانات";
            //  lblmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
        }
    }


    

}