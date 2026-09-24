/*
  Constrcutores nombrados, sobreescritura del metodo toString,
  assert y manejo de errores
 */

void main() {
  print("POO\n");
  // Personaje heroe = Personaje(
  //   nombre: "messi",
  //   clase: "futbolista",
  //   _vida: -100, 
  //   estamina: 80, 
  //   escudo: 50
  // );

// Mapa
  Map<String, dynamic> heroeMap = {
    "nombre": "ASSA",
    "clase": "Tanque",
    "vida": -100,
    "estamina": 30,
    "escudo": 10,
  };

  Personaje heroe2 = Personaje.fromJson(heroeMap);

  //print(heroe);

  print("");

  print(heroe2);

  print(heroe2.vida);
}

// Clase Personaje
class Personaje {
  String nombre;
  String clase;
  int _vida;
  int estamina;
  int escudo;

// Contructor
  // Personaje({
  //   required this.nombre,
  //   required this.clase,
  //   required this._vida,
  //   required this.estamina,
  //   required this.escudo,
  // }): assert(_vida >= 0, "La vida no puede ser negativa"),
  //   assert(estamina >= 0, "La estamina no puede ser negativa"),
  //   assert(escudo >= 0, "El escudo no puede ser negativo");

  int get vida => this._vida;

  set vida(int vida) {
    if (vida < 0) {
      throw Exception("La vida no puede ser negativa");
    }
    this._vida = vida;
  }

  @override
  String toString() =>
    "Nombre: $nombre \nClase: $clase \nVida: $_vida \nEstamina: $estamina \nEscudo: $escudo";

// Clasae para Json
  Personaje.fromJson(Map<String, dynamic>  PersonajeJson):
    nombre = PersonajeJson["nombre"]?? "Sin nombre",
    clase = PersonajeJson["clase"]?? "Sin clase",
    _vida = PersonajeJson["vida"]?? 0,
    estamina = PersonajeJson["estamina"]?? 0,
    escudo = PersonajeJson["escudo"]?? 0;
}

// Otras cosas
String suma(){
  return "a + b = c";
}

String Suma() => "a + b = c";