using System;
using System.Collections.Generic;
using System.Text;

namespace EfSamurai.Data
{
    class SamuraiContext
    {
        public DbSet<EfSa> MyProperty { get; set; }
    }
}
