using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP9_Morrison.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;
using System.IO;
using Microsoft.AspNetCore.Hosting;

namespace TP9_Morrison.Controllers;

public class HomeController : Controller
{
    private IWebHostEnvironment Environment;
    public HomeController(IWebHostEnvironment environment)
    {
        Environment = environment;
    }

    public IActionResult Index()
    {
        ViewBag.ListaCategorias = bd.ListarCategorias();
        return View();
    }

    public IActionResult AboutUs()
    {
        return View();
    }

    public IActionResult Registrarse()
    {
        ViewBag.ListaProvincias = bd.ListarProvincias();
        return View();
    }

    [HttpPost]
    public IActionResult GuardarUsuario(Usuario user, string provincia)
    {
        List<Provincia> ListaProvincias = bd.ListarProvincias();
        int pos = -1, i = 0;
        while (i < ListaProvincias.Count && pos == -1)
        {
            if (provincia == ListaProvincias[i].provincia) pos = i;
            else i++;
        }
        user.id_provincia = ListaProvincias[pos].id;
        user.loggedin = true;
        bd.CargarUsuario(user);
        ViewBag.ListaCategorias = bd.ListarCategorias();
        return View("Index");
    }

    [HttpPost]
    public IActionResult VerificarLogin(string email, string password)
    {
        bool loggedin = bd.VerificarLogin(email, password);
        if (!loggedin)
        {
            ViewBag.MensajeError = "Error. Los datos ingresados son incorrectos.";
            return View("Login");
        }
        else
        {
            ViewBag.ListaCategorias = bd.ListarCategorias();
            return View("Index");
        }
    }

    public IActionResult Categoria(int id_categoria)
    {
        ViewBag.ListaProductos = bd.ListarProductosXCategoria(id_categoria);
        ViewBag.Categoria = bd.ListarCategoriaXId(id_categoria);
        ViewBag.Usuario = bd.DevolverUsuario();
        return View();
    }

    public IActionResult BotonUser()
    {
        ViewBag.user = bd.DevolverUsuario();
        ViewBag.ListaProvincias = bd.ListarProvincias();
        if (ViewBag.user.loggedin) return View("Perfil");
        else return View("Login");
    }

    public Producto InfoProducto(int id_producto)
    {
        return bd.ProductoXID(id_producto);
    }

    public IActionResult Comprar(int id_producto)
    {
        Usuario user = bd.DevolverUsuario();
        ViewBag.IdUsuario = user.id;
        ViewBag.IdProducto = id_producto;
        if (user.loggedin) return View();
        else return View("Login");
    }

    [HttpPost]
    public IActionResult ConfirmarCompra(Compra compra)
    {
        bd.ComprarProducto(compra);
        ViewBag.ListaCategorias = bd.ListarCategorias();
        return View("Index");
    }

    public IActionResult EliminarProducto(int id_producto, int id_categoria)
    {
        bd.EliminarProducto(id_producto);
        ViewBag.ListaProductos = bd.ListarProductosXCategoria(id_categoria);
        ViewBag.Categoria = bd.ListarCategoriaXId(id_categoria);
        ViewBag.Usuario = bd.DevolverUsuario();
        return View("Categoria");
    }

    [HttpPost]
    public IActionResult AgregarProducto(Producto product, IFormFile imagen)
    {
        if (imagen.Length > 0)
        {
            string wwwRootLocal = this.Environment.ContentRootPath + @"wwwroot\img\" + imagen.FileName;
            using (var stream = System.IO.File.Create(wwwRootLocal))
            {
                imagen.CopyTo(stream);
            }
            product.imagen = @"\img\" + imagen.FileName;
        }
        bd.CargarProducto(product);
        ViewBag.ListaProductos = bd.ListarProductosXCategoria(product.id_categoria);
        ViewBag.Categoria = bd.ListarCategoriaXId(product.id_categoria);
        ViewBag.Usuario = bd.DevolverUsuario();
        return View("Categoria");
    }
    
    public IActionResult Logout()
    {
        bd.Logout();
        return View("Login");
    }

    public IActionResult Compras()
    {
        Usuario user = bd.DevolverUsuario();
        if (!user.loggedin) return View("Login");
        else
        {
            ViewBag.ListaCompras = bd.ListarComprasXID(user.id);
            return View();
        }
    }

    public IActionResult CancelarCompra(int id_compra)
    {
        bd.CancelarCompra(id_compra);
        Usuario user = bd.DevolverUsuario();
        ViewBag.ListaCompras = bd.ListarComprasXID(user.id);
        return View("Compras");
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
