using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP9_Morrison.Models;

namespace TP9_Morrison.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
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
    
    public IActionResult GuardarUsuario(Usuario user)
    {
        bd.CargarUsuario(user);
        ViewBag.ListaCategorias = bd.ListarCategorias();
        return View("Index");
    }

    public int Login(string username, string password)
    {
        return bd.VerificarLogin(username, password);
    }

    public IActionResult Categoria(int id_categoria)
    {
        ViewBag.ListaProductos = bd.ListarProductosXCategoria(id_categoria);
        ViewBag.Categoria = bd.ListarCategoriaXId(id_categoria);
        if (ViewBag.ListaProductos.Count == 0) return View("CategoriaVacia");
        else return View();
    }

    public IActionResult Perfil(int id_usuario)
    {
        ViewBag.Usuario = bd.DevolverUsuario(id_usuario);
        return View();
    }

    public Producto InfoProducto(int id_producto)
    {
        return bd.ProductoXID(id_producto);
    }

    public IActionResult Comprar(int id_producto)
    {
        return View();
    }

    public IActionResult ConfirmarCompra(Compra compra)
    {
        bd.ComprarProducto(compra);
        return View("Index");
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
