void main(){
    // Trabajo
    final List<int> num = [1, 2, 3, 8, 5, 2];

    print("Los valores fueron: $num \n");

    num.sort();
    print("Valores ordenados: $num\n");

    print("Cantidad de muestras: ${num.length}\n");

    print("Media: ${Media(num)}\n");
    print("Mediana: ${Mediana(num)}\n");
    print("MOda: ${Moda(num)}");
}

double Media(List<int> arreglo){
    int suma = 0;
    if (arreglo.isEmpty){
        return 0;
    }

    for(int i = 0; i < arreglo.length; i++){
        suma = suma + arreglo[i];
    }

    var resultado = suma / arreglo.length;

    return resultado;
}

double Mediana(List<int> arreglo){
    arreglo.sort();

    var mitad = arreglo.length ~/ 2;

    if(arreglo.length % 2 != 0){
        return arreglo[mitad].toDouble();
    }
    else{
        return (arreglo[mitad - 1] + arreglo[mitad]) / 2.0;
    }
}

int Moda(List<int> arreglo) {
    if (arreglo.isEmpty) {
        return 0;
    }

    int moda = arreglo[0];
    int mayorCantidad = 0;

    for (int i = 0; i < arreglo.length; i++) {
        int cantidad = 0;

        for (int j = 0; j < arreglo.length; j++) {
            if (arreglo[i] == arreglo[j]) {
                cantidad++;
            }
        }

        if (cantidad > mayorCantidad) {
            mayorCantidad = cantidad;
            moda = arreglo[i];
        }
    }

    return moda;
}

