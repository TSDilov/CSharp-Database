﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FootballBetting.Models
{
    public class Country
    {
        public Country()
        {
            this.Towns = new HashSet<Town>();
        }
        public int CountryId { get; set; }

        [Required]
        public string Name { get; set; }

        public ICollection<Town> Towns { get; set; }
    }
}
