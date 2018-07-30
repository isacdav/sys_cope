namespace SPC_Coopenae.DATA
{
    using System;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("Sucursal")]
    public class Sucursal
    {
        [Key]
        public int IdSucursal { get; set; }
        public string NombreSucursal { get; set; }
        public int Categoria { get; set; }
        public int Estado { get; set; }
    }
}
