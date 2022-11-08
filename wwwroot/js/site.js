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
                <label><strong>Url Bandera</strong></label>
                <input class="form-control" required type="text" name="imgBandera"/>
            </div>
        </div><br>
        <div class="form-row">
            <div class="col">
                <label><strong>Poblacion</strong></label>
                <input class="form-control" required min=1 type="number" name="poblacion"/>
            </div>
            <div class="col">
                <label><strong>Fecha de independencia</strong></label>
                <input class="form-control" required type="date" name="fechaIndependencia"/>
            </div>
        </div><br>
        <div class="form-row">
            <div class="col">
                <label><strong>Atractivos Turisticos</strong></label>
                <input class="form-control" required type="text" name="atractivosTuristicos"/>
            </div>
            <div class="col">
                <label><strong>Himno</strong></label>
                <input class="form-control" required type="file" name="himno"/>
            </div>
        </div>
        <p></p>
        <input class="btn btn-primary" type="submit" value="Guardar"/>
        <input class="btn btn-light" type="reset" value="Borrar los datos ingresados"/>
    </form>`)
}