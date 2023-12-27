using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_reg_form : System.Web.UI.Page
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
            string qry = "insert into user_reg(user_name,address,gender,phn_no,email_id,dob)values(@user_name,@address,@gender,@phn_no,@email_id,@dob)";
            cmd = new SqlCommand(qry, con);

            cmd.Parameters.AddWithValue("@user_name", tbname.Text);
            cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@phn_no", tbcontact.Text);
            cmd.Parameters.AddWithValue("@email_id", tbmail.Text);
            cmd.Parameters.AddWithValue("@address", tbadd.Text);
            cmd.Parameters.AddWithValue("@dob", tbcity.Text);
            //cmd.Parameters.AddWithValue("@state", tbstate.Text);
            cmd.ExecuteNonQuery();
            con.Close();

            con.Open();
            SqlCommand cmd2;
            string qr2 = "insert into login(user_name,password)values(@user_name,@password)";
            cmd2 = new SqlCommand(qr2, con);
            cmd2.Parameters.AddWithValue("@user_name", tbname.Text);
            cmd2.Parameters.AddWithValue("@password", tbcontact.Text);
            cmd2.ExecuteNonQuery();
            con.Close();

            Label1.Text = "Registered Succusfully,Username is:" + tbname.Text + " and Password is:" + tbcontact.Text;
            tbname.Text = "";
            tbcontact.Text = "";
            tbmail.Text = "";
            tbadd.Text = "";
            tbcity.Text = "";
            //tbstate.Text = "";
        }
        catch (Exception nm)
        {
            Response.Write(nm);
        }
    }
}