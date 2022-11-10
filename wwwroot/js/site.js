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
                $("#titulo").html(response.nombre);
                $("#imagen").attr("src", response.imagen);
                $("#texto").html(`<p>` + response.descripcion + `</p><b>Color</b><p>` + response.color + `</p><b>Talle</b><p>` + response.talle + `</p><h6 class="text-success" style="font-size:24px">$` + response.precio + `</h6>`);
            }
        }
    )
}

function AgregarProducto()
{
    $("#titulo").text("Agregar Producto");
    $("#imagen").attr("src","");
    $("#texto").html(`<form method="post" action='Home/agregarPais' enctype="multipart/form-data">
        <div class="form-row">
            <div class="col">
                <label><strong>Nombre</strong></label>
                <input class="form-control" required type="text" name="nombre"/>
            </div>
            <div class="col">
                <label><strong>Articulo</strong></label>
                <input class="form-control" required type="text" name="articulo"/>
            </div>
        </div><br>
        <div class="form-row">
            <div class="col">
                <label><strong>Descripcion</strong></label>
                <input class="form-control" required type="" name="descripcion"/>
            </div>
            <div class="col">
                <label><strong>Categoria</strong></label>
                <select class="form-control" id="categoria" name="categoria">
                    <option selected></option>
                    <option value="8">Pijamas</option>
                    <option value="12">Camisones y Remerones</option>
                    <option value="13">Batas</option>
                    <option value="14">Pantuflas</option>
                    <option value="15">Camisetas</option>
                    <option value="16">Monos y Enteritos</option>
                    <option value="17">Vestidos Playeros</option>
                </select>
            </div>
        </div><br>
        <div class="form-row">
            <div class="col">
                <label><strong>Imagen</strong></label>
                <input class="form-control" required type="file" name="imagen"/>
            </div>
            <div class="col">
                <label><strong>Precio</strong></label>
                <input class="form-control" required type="number" name="precio"/>
            </div>
        </div>
        <div class="form-row">
            <div class="col">
                <label><strong>Color</strong></label>
                <input class="form-control" required type="text" name="color"/>
            </div>
            <div class="col">
                <label><strong>Talle</strong></label>
                <input class="form-control" required type="text" name="talle"/>
            </div>
        </div>
        <p></p>
        <input class="btn btn-primary" type="submit" value="Guardar"/>
        <input class="btn btn-light" type="reset" value="Borrar los datos ingresados"/>
    </form>`)
}