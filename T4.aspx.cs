using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class T4 : System.Web.UI.Page
{
    SqlConnection conn;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (OpenConnection())
            {
                lblStatus.Text = "Tietokanta yhteys auki!";
            }

            CloseConnection();
        }
        catch (Exception ex)
        {
            lblStatus.Text = "Jokin meni vikaan MySql yhteydessä" + ex.ToString();
        }
        

    }

    private bool OpenConnection()
    {
        try
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connstr"].ToString());
            conn.Open();
            return true;
        }
        catch (Exception ex)
        {
            lblStatus.Text = "Jokin meni vikaan MySql yhteydessä" + ex.ToString();
            return false;
        }
    }

    private void CloseConnection()
    {
        try
        {
            if (conn != null & conn.State == System.Data.ConnectionState.Open)
                conn.Close();
        }
        catch (Exception ex)
        {
            lblStatus.Text = "Jokin meni vikaan MySql yhteydessä" + ex.ToString();
        }
    }

}