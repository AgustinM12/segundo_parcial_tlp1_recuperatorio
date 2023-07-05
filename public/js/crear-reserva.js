const formNuevaReserva = document.getElementById('formNuevaReserva')

formNuevaReserva.addEventListener('submit', async (e) => {
    e.preventDefault();

    const nombre = document.getElementById('nombre').value
    const apellido = document.getElementById('apellido').value
    const dni = document.getElementById('dni').value
    const telefono = document.getElementById('telefono').value
    const fecha_salida = document.getElementById('fecha_salida').value
    const fecha_llegada = document.getElementById('fecha_llegada').value


    const usuario = {
        nombre,
        apellido,
        dni,
        telefono,
        fecha_salida,
        fecha_llegada
    }


    const respuesta = await fetch('/api/nueva-reserva', {
        method: 'POST',
        body: JSON.stringify(usuario),
        headers: {
            'Content-Type': 'application/json'
        }
    });

    const datos = await respuesta.json()

    alert(datos.message);
    window.location.href = '/api'

});