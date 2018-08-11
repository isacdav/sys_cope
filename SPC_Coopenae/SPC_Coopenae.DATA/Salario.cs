﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SPC_Coopenae.DATA
{
    public class Salario
    {
        [Key]
        public int IdSalario { get; set; }

        public decimal Base { get; set; }

        public int DetalleInicio { get; set; }

        public string Descripcion { get; set; }

        public bool Estado { get; set; }

    }
}
