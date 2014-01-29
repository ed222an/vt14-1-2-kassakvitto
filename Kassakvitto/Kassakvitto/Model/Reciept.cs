using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kassakvitto.Model
{
    public class Reciept
    {
        // Fält
        private double _subtotal;

        // Egenskaper
        public double DiscountRate { get; private set; }
        public double MoneyOff{ get; private set; }
        public double Subtotal
        {
            get
            {
                return _subtotal;
            }
            set
            {
                if (value <= 0)
                {
                    throw new ArgumentOutOfRangeException("Värdet måste vara större än 0.");
                }
                _subtotal = value;
            }
        }
        public double Total { get; private set; }

        // Metod
        public void Calculate(double subtotal)
        {
            Subtotal = subtotal;

            // Bestämmer rabattsatserna.
            if (subtotal < 500)
            {
                DiscountRate = 0.00;
            }
            else if(subtotal < 1000)
            {
                DiscountRate = 0.05;
            }
            else if (subtotal < 5000)
            {
                DiscountRate = 0.10;
            }
            else
            {
                DiscountRate = 0.15;
            }

            // Räknar ut rabattbeloppet
            MoneyOff = subtotal * DiscountRate;

            // Räknar ut totalsumman
            Total = subtotal - MoneyOff;
        }

        // Konstruktor
        public Reciept(double subtotal)
        {
            Calculate(subtotal);
        }
    }
}