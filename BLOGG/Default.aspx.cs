using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBLHAKKINDATableAdapter dt = new DataSetTableAdapters.TBLHAKKINDATableAdapter();
        Repeater1.DataSource = dt.HakkındaListele();
        Repeater1.DataBind();

        DataSetTableAdapters.TBLDENEYIMTableAdapter dt2 = new DataSetTableAdapters.TBLDENEYIMTableAdapter();
        Repeater2.DataSource = dt2.DeneyimListesi();
        Repeater2.DataBind();

        DataSetTableAdapters.TBLEGITIMTableAdapter dt3 = new DataSetTableAdapters.TBLEGITIMTableAdapter();
        Repeater3.DataSource = dt3.EgitimListele();
        Repeater3.DataBind();

        DataSetTableAdapters.TBLYETENEKTableAdapter dt4 = new DataSetTableAdapters.TBLYETENEKTableAdapter();
        Repeater4.DataSource = dt4.YetenekListele();
        Repeater4.DataBind();

        DataSetTableAdapters.TBLHOBILERTableAdapter dt5= new DataSetTableAdapters.TBLHOBILERTableAdapter();
        Repeater5.DataSource = dt5.HobilerListele();
        Repeater5.DataBind();

        DataSetTableAdapters.TBLKONFERANSLARTableAdapter dt6 = new DataSetTableAdapters.TBLKONFERANSLARTableAdapter();
        Repeater6.DataSource = dt6.KonferansListele();
        Repeater6.DataBind();

    }
}