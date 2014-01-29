using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Kassakvitto.Model;

namespace Kassakvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Lagrar textfältets värde och skapar en Recipe-variabel.
                var textBoxValue = double.Parse(SumTextBox.Text);
                var reciept = new Reciept(textBoxValue);

                // Lägger till beräkningarna i kvittot.
                SubtotalLabel.Text = String.Format("Totalt:         {0:c}", reciept.Subtotal);
                DiscountLabel.Text = String.Format("Rabattsats:         {0:p0}", reciept.DiscountRate);
                MoneyOffLabel.Text = String.Format("Rabatt:         {0:c}", reciept.MoneyOff);
                TotalLabel.Text = String.Format("Att betala:            {0:c}", reciept.Total);

                // Visar kvittot.
                RecieptPanel.Visible = true;

            }
        }
    }
}