﻿using System;
using System.Collections.Generic;
using System.Text;

namespace EfSamurai.Domain
{
   public class SecretIdentity
    {
        public int Id { get; set; }
        public Samurai Samurai { get; set; }
        public int SamuraiId { get; set; }

        public string SecretName { get; set; }

    }
}
