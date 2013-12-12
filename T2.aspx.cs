using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class T2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds.ReadXml(ConfigurationManager.AppSettings["tyontekijat"]);
        DataTable dt = ds.Tables[0];
        DataView dv = dt.DefaultView;
        gwTiedot.DataSource = ds;
        gwTiedot.DataBind();
        dv.RowFilter = "tyosuhde = 'vakituinen'";
        lblVakituisia.Text = "Vakituisia työntekijöitä on " + dv.Count;
        int palkka = 0;
        int i = 0;
        while (dv.Count > i)
        {
            //lblPalkkaSumma.Text = dv[i]["palkka"] as string;
            palkka += Convert.ToInt32(dv[i]["palkka"] as string);
            i++;
        }
        lblPalkkaSumma.Text = "Vakituisten yhteenlaskettu palkka on " + palkka;
        
    }
}