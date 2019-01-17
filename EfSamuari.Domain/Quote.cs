using System;
using System.Collections.Generic;
using System.Text;

namespace EfSamurai.Domain
{
    public class Quote
    {
        public int Id { get; set; }
        public int SamuraiId { get; set; }
        public string Message { get; set; }
        public int ThreatLvl { get; set; }
        public QuoteCategory Styles { get; set; }

    }
}
