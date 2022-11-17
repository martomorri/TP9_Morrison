function VerInfoProducto(id)
{
    $.ajax(
        {
            type:'POST',
            datatype:'JSON',
            url:'/Home/InfoProducto',
            data: { id_producto : id },

            success : function(response)
            {
                $("#titulo").text(response.nombre);
                $("#imagen").attr("src", response.imagen);
                $("#texto").html(`<br><p>` + response.descripcion + `</p><b>Color</b><p>` + response.color + `</p><b>Talle</b><p>` + response.talle + `</p><h6 class="text-success" style="font-size:24px">$` + response.precio + `</h6>`);
            }
        }
    )
}