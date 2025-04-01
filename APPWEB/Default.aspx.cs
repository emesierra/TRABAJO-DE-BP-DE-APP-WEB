using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class APPWEB_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnCalcular_Click(object sender, EventArgs e)
    {
        
        double monto = Convert.ToDouble(txtMonto.Text);
        double interesMensual = Convert.ToDouble(txtInteres.Text) / 100;
        int meses = Convert.ToInt32(ddlMeses.SelectedValue);

        
        double cuotaMensual = (monto * interesMensual) / (1 - Math.Pow(1 + interesMensual, -meses));
        lblCuotaMensual.Text = cuotaMensual.ToString("C");

        
        DataTable dt = new DataTable();
        dt.Columns.Add("Mes");
        dt.Columns.Add("Cuota");
        dt.Columns.Add("Interes");
        dt.Columns.Add("Capital");
        dt.Columns.Add("Saldo");

        double saldo = monto;
        for (int i = 1; i <= meses; i++)
        {
            double interes = saldo * interesMensual;
            double capital = cuotaMensual - interes;
            saldo -= capital;

            dt.Rows.Add(i, cuotaMensual.ToString("C"), interes.ToString("C"), capital.ToString("C"), saldo.ToString("C"));
        }

        gvAmortizacion.DataSource = dt;
        gvAmortizacion.DataBind();
        pnlResultados.Visible = true;
    }
}