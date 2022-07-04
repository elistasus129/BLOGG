using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hakkimda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack==false){
        
        DataSetTableAdapters.TBLHAKKINDATableAdapter dt = new
        DataSetTableAdapters.TBLHAKKINDATableAdapter();
        TextBox1.Text = dt.HakkındaListele()[0].AD;
        TextBox2.Text = dt.HakkındaListele()[0].SOYAD;
        TextBox3.Text = dt.HakkındaListele()[0].ADRES;
        TextBox4.Text = dt.HakkındaListele()[0].MAIL;
        TextBox5.Text = dt.HakkındaListele()[0].TELEFON;
        TextBox6.Text = dt.HakkındaListele()[0].KISANOT;
        TextBox7.Text = dt.HakkındaListele()[0].FOTOGRAF;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLHAKKINDATableAdapter dt1 = new DataSetTableAdapters.TBLHAKKINDATableAdapter();
        dt1.HakkındaGuncelle(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text);
        Response.Redirect("Default.Aspx");
    }
}