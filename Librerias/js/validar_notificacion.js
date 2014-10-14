/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validarLetras(e) { // 1
    tecla = (document.all) ? e.keyCode : e.which;
    if (tecla==8) return true; // backspace
    if (tecla==32) return true; // espacio
    if (e.ctrlKey && tecla==86) { return true;} //Ctrl v
    if (e.ctrlKey && tecla==67) { return true;} //Ctrl c
    if (e.ctrlKey && tecla==88) { return true;} //Ctrl x
 
    patron = /[a-zA-Z.0-9]/; //patron
 
    te = String.fromCharCode(tecla);
    return patron.test(te); // prueba de patron
  } 
  
function validarNumeros(e)
{
    teclaNumero = (document.all) ? e.keyCode : e.which;
    if (teclaNumero==8) return true;
    
    patronNumeros= /[0-9]/;
    te2 = String.fromCharCode(teclaNumero);
    return patronNumeros.test(te2);
    
}
  
function validarCampos(formulario) {
       
        
        //Controlar campos vacios y caracteres invalidos del nombre largo de la empresa
        if(formulario1.cali1.value.length==0) {  
            formulario1.cali1.focus();    
            alert('Por favor, ingrese la puntuación del Cumplimiento de especificaciones del proponente (sobre 15 puntos)');  
        return false;  
        }
        
        if(formulario1.cali2.value.length==0) {  
            formulario1.cali2.focus();    
            alert('Por favor, ingrese la puntuación de la Claridad en la organización de la empresa proponente (sobre 10 puntos)');  
        return false;  
        }
        
        if(formulario1.cali3.value.length==0) {  
            formulario1.cali3.focus();    
            alert('Por favor, ingrese la puntuación del Cumplimiento de especificaciones técnicas (sobre 30 puntos)');  
        return false;  
        }
        
        if(formulario1.cali4.value.length==0) {  
            formulario1.cali4.focus();    
            alert('Por favor, ingrese la puntuación de la Claridad en el proceso de desarrollo (sobre 10 puntos)');  
        return false;  
        }
        
        if(formulario1.cali5.value.length==0) {  
            formulario1.cali5.focus();    
            alert('Por favor, ingrese la puntuación del Plazo de ejecución (sobre 10 puntos)');  
        return false;  
        }
        
        if(formulario1.cali6.value.length==0) {  
            formulario1.cali6.focus();    
            alert('Por favor, ingrese la puntuación del Precio total (sobre 15 puntos)');  
        return false;  
        }
        
        if(formulario1.cali7.value.length==0) {  
            formulario1.cali7.focus();    
            alert('Por favor, ingrese la puntuación del Uso de herramientas en el proceso de desarrollo (sobre 10 puntos)');  
        return false;  
        }
        if(formulario1.fecha.value.length===0) {  
            formulario1.cali7.focus();    
            alert('Por favor, ingrese la fecha para la reuni\u00f3n');  
        return false;  
        }
        if(formulario1.hora.value.length===0) {  
            formulario1.cali7.focus();    
            alert('Por favor, ingrese la hora para la reuni\u00f3n');  
        return false;  
        }
        
        //controlamos que la calificacion no sea mayor de lo que se estipula

        if(formulario1.cali1.value > 15) {
            formulario1.cali1.focus();
            alert('La puntuación del Cumplimiento de especificaciones del proponente es sobre 15 puntos');
        return false;
        }
        
        if(formulario1.cali2.value > 10) {
            formulario1.cali2.focus();
            alert('La puntuación de la Claridad en la organización de la empresa proponente es sobre 10 puntos');
        return false;
        }
        
        if(formulario1.cali3.value > 30) {
            formulario1.cali3.focus();
            alert('La puntuación del Cumplimiento de especificaciones técnicas es sobre 30 puntos');
        return false;
        }
        
        if(formulario1.cali4.value > 10) {
            formulario1.cali4.focus();
            alert('La puntuación de la Claridad en el proceso de desarrollo es sobre 10 puntos');
        return false;
        }
        
        if(formulario1.cali5.value > 10) {
            formulario1.cali5.focus();
            alert('La puntuación del Plazo de ejecución es sobre 10 puntos');
        return false;
        }
        
        if(formulario1.cali6.value > 15) {
            formulario1.cali6.focus();
            alert('La puntuación del Precio total es sobre 15 puntos');
        return false;
        }
        
        if(formulario1.cali7.value > 10) {
            formulario1.cali7.focus();
            alert('La puntuación del Uso de herramientas en el proceso de desarrollo es sobre 10 puntos');
        return false;
        }
        
        //controlar espacio en blanco calificacion 1
        var calificacionUno=formulario1.cali1.value;
        var contadorUno=0;
        for (var i=0;i<calificacionUno.length;i++)
        {
            var caracterUno=calificacionUno.substring(i,i+1);
            if(caracterUno == ' ')
            {
                contadorUno++;
            }
        }
        
        if(contadorUno == calificacionUno.length)
        {
            alert('No puede introducir una calificación en blanco');
            return false;
        }
        
        //controlar espacio en blanco calificacion 2
        var calificacionDos=formulario1.cali2.value;
        var contadorDos=0;
        for (var i=0;i<calificacionDos.length;i++)
        {
            var caracterDos=calificacionDos.substring(i,i+1);
            if(caracterDos == ' ')
            {
                contadorDos++;
            }
        }
        
        if(contadorDos == calificacionDos.length)
        {
            alert('No puede introducir una calificación en blanco');
            return false;
        }
        
        //controlar espacio en blanco calificacion 3
        var calificacionTres=formulario1.cali3.value;
        var contadorTres=0;
        for (var i=0;i<calificacionTres.length;i++)
        {
            var caracterTres=calificacionTres.substring(i,i+1);
            if(caracterTres == ' ')
            {
                contadorTres++;
            }
        }
        
        if(contadorTres == calificacionTres.length)
        {
            alert('No puede introducir una calificación en blanco');
            return false;
        }
        
        //controlar espacio en blanco calificacion 4
        var calificacionCuatro=formulario1.cali4.value;
        var contadorCuatro=0;
        for (var i=0;i<calificacionCuatro.length;i++)
        {
            var caracterCuatro=calificacionCuatro.substring(i,i+1);
            if(caracterCuatro == ' ')
            {
                contadorCuatro++;
            }
        }
        
        if(contadorCuatro == calificacionCuatro.length)
        {
            alert('No puede introducir una calificación en blanco');
            return false;
        }
        
        //controlar espacio en blanco calificacion 5
        var calificacionCinco=formulario1.cali5.value;
        var contadorCinco=0;
        for (var i=0;i<calificacionCinco.length;i++)
        {
            var caracterCinco=calificacionCinco.substring(i,i+1);
            if(caracterCinco == ' ')
            {
                contadorCinco++;
            }
        }
        
        if(contadorCinco == calificacionCinco.length)
        {
            alert('No puede introducir una calificación en blanco');
            return false;
        }
        
        //controlar espacio en blanco calificacion 6
        var calificacionSeis=formulario1.cali6.value;
        var contadorSeis=0;
        for (var i=0;i<calificacionSeis.length;i++)
        {
            var caracterSeis=calificacionSeis.substring(i,i+1);
            if(caracterSeis == ' ')
            {
                contadorSeis++;
            }
        }
        
        if(contadorSeis == calificacionSeis.length)
        {
            alert('No puede introducir una calificación en blanco');
            return false;
        }
        
        //controlar espacio en blanco calificacion 7
        var calificacionSiete=formulario1.cali7.value;
        var contadorSiete=0;
        for (var i=0;i<calificacionSiete.length;i++)
        {
            var caracterSiete=calificacionSiete.substring(i,i+1);
            if(caracterSiete == ' ')
            {
                contadorSiete++;
            }
        }
        
        if(contadorSiete == calificacionSiete.length)
        {
            alert('No puede introducir una calificación en blanco');
            return false;
        }
        
        //controlamos el espacio del lugar
        var lugar=formulario1.lugar.value;
        var contadorOcho=0;
        for (var i=0;i<lugar.length;i++)
        {
            var caracterOcho=lugar.substring(i,i+1);
            if(caracterOcho == ' ')
            {
                contadorOcho++;
            }
        }
        
        if(contadorOcho == lugar.length)
        {
            alert('No puede introducir un lugar en blanco');
            return false;
        }
        
        //controlamos que se introduzca el lugar
        if(formulario1.lugar.value.length==0) {  
            formulario1.lugar.focus();    
            alert('Por favor, ingrese el lugar de la reunión');  
        return false;  
        }
        
        return true; 
    
    }

