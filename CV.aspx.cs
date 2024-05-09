using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;



public partial class CV : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CVjob_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new DB_Connection().getConnection();
            conn.Open();
            string insert = "insert into CVjob(job_name,E_mail,First_Name,Last_Name,Gender,Phone_No) values(@job_name,@E_mail,@First_Name,@Last_Name,@Gender,@Phone_No)";
            SqlCommand cmd = new SqlCommand(insert, conn);
           

                // cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("job_name", job_name.Text);
                cmd.Parameters.AddWithValue("E_mail", Email.Text);
                cmd.Parameters.AddWithValue("Gender", Gender.Text);
                cmd.Parameters.AddWithValue("First_Name", First_Name.Text);
                cmd.Parameters.AddWithValue("Last_Name", Last_Name.Text);
                cmd.Parameters.AddWithValue("Phone_No", Phone_No.Text);
                cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();

                lblmsg1.Text = " تم الاضافة البيانات بنجاح ";

                lblmsg1.ForeColor = System.Drawing.Color.CornflowerBlue;
                conn.Close();
            }
        // int k= cmd.ExecuteNonQuery();
        // if (k!= 0)
        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
            // lblmsg1.Text = " تم الاضافة بنجاح الى قاعدة البيانات";
            // lblmsg1.ForeColor = System.Drawing.Color.CornflowerBlue;
        }


    }











    /*   protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            if (!IsPostBack)
            {
                SqlConnection conn = new DB_Connection().getConnection();
                SqlDataAdapter job_name_adapter = new SqlDataAdapter("select job_id , job_name from Addjob", conn);
                DataSet ds = new DataSet();
                job_name_adapter.Fill(ds);

               //job_name.DataSource = ds;
              // job_name.DataTextField = "job_id";
             // job_name.DataTextField = "job_name";
              job_name.DataBind();
            }
    }*/

 protected void Button1_Click(object sender, EventArgs e)
    {

        if (FileUpload1.HasFile)
        {
            string fileName = FileUpload1.FileName;
            FileUpload1.PostedFile
                .SaveAs(Server.MapPath("~/Data/") + fileName);
        }

        DataTable dt = new DataTable();
        dt.Columns.Add("File");
        dt.Columns.Add("Size");
        dt.Columns.Add("Type");

        foreach (string strfile in Directory.GetFiles(Server.MapPath("~/Data")))
        {
            FileInfo fi = new FileInfo(strfile);
            dt.Rows.Add(fi.Name, fi.Length.ToString(),
                GetFileTypeByExtension(fi.Extension));
        }

        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    private string GetFileTypeByExtension(string fileExtension)
    {

        switch (fileExtension.ToLower())
        {
            case ".docx":
            case ".doc":
                return "Microsoft Word Document";
            case ".xlsx":
            case ".xls":
                return "Microsoft Excel Document";
            case ".pdfx":
            case ".pdf":
                return "Microsoft Pdf Document";
            case ".txt":
                return "Text Document";
            case ".jpg":
            case ".png":
                return "Image";
            default:
                return "Unknown";



        }

    }


    protected void GridView1_RowCommand(object sender,
       GridViewCommandEventArgs e)
    {





        Response.Clear();
        Response.ContentType = "application/octet-stream";
        Response.AppendHeader("Content-Disposition", "filename="
            + e.CommandArgument);
        Response.TransmitFile(Server.MapPath("~/Data/")
            + e.CommandArgument);
        Response.End();








    }

   
}
