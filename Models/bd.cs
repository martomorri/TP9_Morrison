using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using Dapper;

namespace TP9_Morrison.Models;
public static class bd
{
    private static string _connectionString = @"Server=A-PHZ2-CIDI-034; DataBase=Donnamia; Trusted_Connection=true;";
    public static void CargarUsuario(Usuario user)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sp = "CargarUsuario";
            db.Execute(sp, new { @id_usuario = user.id, @username = user.username, @password = user.password, @nombre = user.nombre, @apellido = user.apellido, @dni = user.dni, @fecha_nacimiento = user.fecha_nacimiento, @foto_perfil = user.foto_perfil, @num_telefono = user.num_telefono, @email = user.email, @id_genero = user.id_genero, @id_pais = user.id_pais, @administrador = user.administrador }, commandType: CommandType.StoredProcedure);
        }
    }
    public static List<Producto> ListarProductos()
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sp = "ListarProductos";
            return db.Query<Producto>(sp, commandType: CommandType.StoredProcedure).ToList();
        }
    }
    public static List<Producto> ListarProductosXCategoria(int id_categoria)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sp = "ListarProductosXCategoria";
            return db.Query<Producto>(sp, new { @id_categoria = id_categoria }, commandType: CommandType.StoredProcedure).ToList();
        }
    }
    public static Producto ProductoXID(int id_producto)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sp = "ListarProductoXID";
            return db.QueryFirstOrDefault<Producto>(sp, new { @id_producto = id_producto }, commandType: CommandType.StoredProcedure);
        }
    }
    public static Usuario DevolverUsuario(int id_usuario)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sp = "ListarUsuarioXID";
            return db.QueryFirstOrDefault<Usuario>(sp, new { @id_usuario = id_usuario }, commandType: CommandType.StoredProcedure);
        }
    }
    public static List<Categoria> ListarCategorias()
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sp = "ListarCategorias";
            return db.Query<Categoria>(sp, commandType: CommandType.StoredProcedure).ToList();
        }
    }
    public static List<string> ListarPaises()
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sp = "ListarPaises";
            return db.Query<string>(sp, commandType: CommandType.StoredProcedure).ToList();
        }
    }
    public static void CargarProducto(Producto product)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sp = "CargarProducto";
            db.Execute(sp, new {  }, commandType: CommandType.StoredProcedure);
        }
    }
    public static void EliminarProducto(int id_producto)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sp = "EliminarProducto";
            db.Execute(sp, new { @id_producto = id_producto }, commandType: CommandType.StoredProcedure);
        }
    }
    public static int VerificarLogin(string username, string password)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sp = "VerificarLogin";
            return db.QueryFirstOrDefault(sp, new { @username = username, @password = password }, commandType: CommandType.StoredProcedure);
        }
    }
    public static int ComprarProducto(Compra compra)
    {
        using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string sp = "ComprarProducto";
            return db.Execute(sp, new { @id_usuario = compra.id_usuario, @id_producto = compra.id_producto, @nombre = compra.nombre, @apellido = compra.apellido, @num_tarjeta = compra.num_tarjeta, @fecha_vencimiento = compra.fecha_vencimiento, @cod_seguridad = compra.cod_seguridad }, commandType: CommandType.StoredProcedure);
        }
    }
}