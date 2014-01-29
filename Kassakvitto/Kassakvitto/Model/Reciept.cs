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
            // Bestämmer rabattsatserna.
            if (subtotal < 500)
            {
                DiscountRate = 0.00;
            }
            if(subtotal >= 500 && subtotal < 1000)
            {
                DiscountRate = 0.05;
            }
            if (subtotal >= 1000 && subtotal < 5000)
            {
                DiscountRate = 0.10;
            }
            if (subtotal >= 5000)
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
            Subtotal = subtotal;
            Calculate(subtotal);
        }
    }
}