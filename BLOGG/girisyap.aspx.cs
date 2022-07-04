using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class girisyap : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-079TNNM\MERTR;Initial Catalog=blogdb;User ID=sa;Password=1453");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand komut = new SqlCommand("select * from TBLADMIN where KULLANICI=@P1 AND SIFRE=@P2", baglanti);
        komut.Parameters.Add("@P1", TextBox1.Text);
        komut.Parameters.Add("@P2", TextBox2.Text);
        SqlDataReader a = komut.ExecuteReader();
        if (a.Read())
        {
            Response.Redirect("Default.aspx");
        }
        else { Response.Write("hatalı "); }
        baglanti.Close();
    }
    
}