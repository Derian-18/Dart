void main(){
    final int edad = 28;

    final List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8 ,9];

    final opcion = 0;
    int bandera = 10;

    print("La edad es $edad");
    print("numero en el indice 0 es ${numeros[0]}");

    // If - else
    if( edad >= 18){
        print("Eres mayor de edad porque tienes: $edad");
    }
    else{
        print("No eres mayor de edad porque tienes $edad");
    }

    // Ternario
    print("${edad >= 18? 'SI':'NO'} es mayor de edad");

    // Switch
    switch(opcion){
        case 0:{
            print("Opcion 0");
        }
        case 1:{
            print("Opcion 1");
        }
        default:
            print("NO existe esa opcion");
    }

    // For
    for(int i = 0; i < numeros.length; i++){
        print("El elemento $i es ${numeros[i]}");
    }

    print("\n");

    for (int numero in numeros){
        print("El numero es: $numero");
    }

    // While
    while(bandera > 0){
        print("Bandera = ${bandera--}");
    }
}

