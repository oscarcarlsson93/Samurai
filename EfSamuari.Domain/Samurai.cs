﻿using System;
using System.Collections.Generic;
using System.Text;

namespace EfSamurai.Domain
{
   public class Samurai
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string FamilyName { get; set; }
        public List<Quote> SamuraiQuotes { get; set; }



    }
}
