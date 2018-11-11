﻿using SPC_Coopenae.DAL.Metodos.Reportes;
using SPC_Coopenae.DATA;
using SPC_Coopenae.DATA.ObjReportes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SPC_Coopenae.BLL.Metas
{
    public class ReporteProductos
    {

        MReporteProductosRepositorio _reporteProductosBD;

        public ReporteProductos()
        {
            _reporteProductosBD = new MReporteProductosRepositorio();
        }

        public List<MetaTipoProducto> metaTipoProductosCorrespondiente { get; set; }
        public List<MetaProductosParaIDP> metaYCantidadParaIDP { get; set; }
        public List<RProductos> ComisionesPorProductos { get; set; }

        public void EstablecerMetaCorrespondiente(int cedula)
        {
            metaTipoProductosCorrespondiente = _reporteProductosBD.BuscarMetaProducto(cedula);
        }

        public void TraerCantidadPorMeta(DateTime fecha)
        {
            int [] idsMetas = metaTipoProductosCorrespondiente.Select(x => x.IdMetaTipoProducto).ToArray();
            metaYCantidadParaIDP = _reporteProductosBD.ConsultaCantidadPorMetas(idsMetas, fecha);
        }

        public void AsignarComisionesProductos(int cedulaP, DateTime fechaP, decimal IDPActual, decimal tipoCambioP)
        {
            var ConsultaProductosVendidos = _reporteProductosBD.ConsultaProductosConVentas(cedulaP, fechaP);

            foreach (var x in ConsultaProductosVendidos)
            {
                x.TotalComision = IDPActual >= x.IDPNecesario ? x.ComisionProducto * x.CantidadVendida : 0;
                x.TotalComision = x.Moneda == "d" ? x.TotalComision * tipoCambioP : x.TotalComision;
            }

            this.ComisionesPorProductos = ConsultaProductosVendidos.ToList();

        }

    }
}
