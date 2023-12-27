using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class table_record_form : System.Web.UI.Page
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
            string qry = "insert into table_record(name,state)values(@name,@state)";
            cmd = new SqlCommand(qry, con);

            cmd.Parameters.AddWithValue("@name", tbname.Text);
            cmd.Parameters.AddWithValue("@state", tbstate.Text);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception eb)
        {
            Response.Write(eb);
        }
    }
}