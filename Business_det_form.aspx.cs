using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Business_det_form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con;
            SqlCommand cmd;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["business_directoryConnectionString"].ConnectionString);
            con.Open();
            string qry = "insert into business_details(b_name,b_address,contact_person,contact_number,b_nature,city,state,country)values(@b_name,@b_address,@contact_person,@contact_no,@b_nature,@city,@state,@country)";
            cmd = new SqlCommand(qry, con);

            cmd.Parameters.AddWithValue("@b_name", tbname.Text);
            cmd.Parameters.AddWithValue("@b_address", tbadd.Text);
            cmd.Parameters.AddWithValue("@contact_person", tbcperson.Text);
            cmd.Parameters.AddWithValue("@contact_no", tbcno.Text);
            cmd.Parameters.AddWithValue("@b_nature", tbbnature.Text);
            cmd.Parameters.AddWithValue("@city", tbcity.Text);
            cmd.Parameters.AddWithValue("@state", tbstate.Text);
            cmd.Parameters.AddWithValue("@country",tbcountry.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            Label1.Text = "Doctor Details Uploaded Succesfully";
            tbname.Text = "";
            tbadd.Text = "";
            tbcperson.Text = "";
            tbcno.Text = "";
            tbbnature.Text = "";
            tbcity.Text = "";
            tbstate.Text = "";
            tbcountry.Text = "";
        }
        catch (Exception eb)
        {
            Response.Write(eb);
        }
    }
}