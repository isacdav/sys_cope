﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AutoMapper;
using SPC_Coopenae.DAL.Interfaces;
using SPC_Coopenae.DAL.Metodos;
using SPC_Coopenae.DATA;

namespace SPC_Coopenae.UI.Areas.Ventas.Controllers
{
    public class VentaCreditoController : Controller
    {

        IVentaCreditoRepositorio _repositorioVentaCred;
        ITipoCreditoRepositorio _repositorioTipoCred;

        public VentaCreditoController()
        {
            _repositorioVentaCred = new MVentaCreditoRepositorio();
            _repositorioTipoCred = new MTipoCreditoRepositorio();
        }

        // GET: Mantenimientos/ColocacionCredito
        public ActionResult Index()
        {
            try
            {
                var listarVentaCred = _repositorioVentaCred.ListarVentaCredito();
                var VentaCredListado = Mapper.Map<List<Models.VentaCredito>>(listarVentaCred);
                return View(VentaCredListado);
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("", "Ocurrió un error: " + ex.Message);
                return View();
            }
            
        }

        public ActionResult Registrar()
        {
            try
            {
                ViewBag.listaTipos = new SelectList(_repositorioTipoCred.ListarTipoCredito(), "IdCredito", "NombreDeCredito");
                return View();
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("Ocurrió un error", ex);
                return View();
            }

        }


        [HttpPost]
        public ActionResult Registrar(Models.VentaCredito ventaCred)
        {
            try
            {
                ViewBag.listaTipos = new SelectList(_repositorioTipoCred.ListarTipoCredito(), "IdCredito", "NombreDeCredito");
                if (!ModelState.IsValid)
                {
                    return View();
                }
                var venta = Mapper.Map<DATA.VentaCredito>(ventaCred);
                _repositorioVentaCred.InsertarVentaCredito(venta);
                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("Ocurrió un error", ex);
                return View();
            }
        }

        public ActionResult Eliminar(int id)
        {
            try
            {
                _repositorioVentaCred.EliminarVentaCredito(id);
                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("Ocurrió un error", ex);
                return View();
            }
        }

        public ActionResult Detalles(int id)
        {
            try
            {
                var ventaCredBuscar = _repositorioVentaCred.BuscarVentaCredito(id);
                var ventaCredDetallar = Mapper.Map<Models.VentaCredito>(ventaCredBuscar);
                return View(ventaCredDetallar);
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("Ocurrió un error", ex);
                return View();
            }
        }

        public ActionResult Editar(int id)
        {
            try
            {
                ViewBag.listaTipos = new SelectList(_repositorioTipoCred.ListarTipoCredito(), "IdCredito", "NombreDeCredito");
                var VentaCredBuscar = _repositorioVentaCred.BuscarVentaCredito(id);
                var VentaCredEditar = Mapper.Map<Models.VentaCredito>(VentaCredBuscar);
                return View(VentaCredEditar);
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("Ocurrió un error", ex);
                return View();
            }
        }

        [HttpPost]
        public ActionResult Editar(VentaCredito ventaCred)
        {
            try
            {
                ViewBag.listaTipos = new SelectList(_repositorioTipoCred.ListarTipoCredito(), "IdCredito", "NombreDeCredito");
                if (!ModelState.IsValid)
                {
                    return View();
                }
                var VentaCredEditar = Mapper.Map<DATA.VentaCredito>(ventaCred);
                _repositorioVentaCred.ActualizarVentaCredito(VentaCredEditar);
                return RedirectToAction("Index");

            }
            catch (Exception ex)
            {
                ModelState.AddModelError("Ocurrió un error", ex);
                return View();
            }
        }

    }
}