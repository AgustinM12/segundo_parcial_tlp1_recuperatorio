const obtenerDatos = async () => {
    //SE SOLICITAN LAS RESERVAS AL SERVIDOR
    const datos = await fetch('/api/app', {
        method: 'GET'
    });
    const reservas = await datos.json();
    return reservas;
}

//CARGAR LAS RESERVAS EN LA TABLA
const mostrarReservas = (reservas, tablaElement) => {
    let registros = '';
    reservas.forEach(reserva => {
        registros += `
          <tr>
               <td>${reserva.nombre}</td>
               <td>${reserva.apellido}</td>
               <td>${reserva.dni}</td>
               <td>${reserva.telefono}</td>
               <td>${reserva.fecha_salida}</td>
               <td>${reserva.fecha_llegada}</td>
               <td>
               <div class="row">
               <a href="/api/actualizar-reserva/${reserva.id}" class="btn btn-sm btn-warning">Editar</a>
               <button class="btn btn-danger btn-sm" data-id="${reserva.id}" onClick=eliminarUsuario(event)>Eliminar</button>
               </div>
               </td>
          </tr>
        `
    })

    tablaElement.innerHTML = registros;

};


//ELIMINAR UNA RESERVA
const eliminarUsuario = async (e) => {
    console.log(e)
    const id = e.target.dataset.id;

const respuesta = await fetch(`/api/app/${id}`, {
    method: 'DELETE',
})

const datos = await respuesta.json();

alert(datos.message);

window.location.href = '/api'

};


document.addEventListener('DOMContentLoaded', async () => {
    // Mostrar las reservas en la tabla
    const tbody = document.getElementById('listaDeReservas');
    const reservas = await obtenerDatos() // undefined si no obtenerDatos no retorna nada
    mostrarReservas(reservas, tbody)

});