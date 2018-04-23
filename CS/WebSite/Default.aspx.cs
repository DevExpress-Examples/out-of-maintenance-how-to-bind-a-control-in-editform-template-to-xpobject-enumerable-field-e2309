using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Xpo;
using DevExpress.Web.ASPxEditors;

public partial class _Default : System.Web.UI.Page {
    Session session = XpoHelper.GetNewSession();

    protected void Page_Init(object sender, EventArgs e) {
        xds.Session = session;
    }
    protected void rblMeals_Init(object sender, EventArgs e) {
        ASPxRadioButtonList list = sender as ASPxRadioButtonList;

        list.ValueType = typeof(CommonMeals);
    }
}
