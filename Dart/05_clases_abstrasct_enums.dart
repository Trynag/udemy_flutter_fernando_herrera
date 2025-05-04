//
// ¿Con que objetivo se realiza todo el siguiente codigo?
//
// Se realiza con el objetivo de crear metodos, funciones o cualquier otro tipo de estructura en el cual,
// no se espera, en este caso, una planta de energia eolica, sino, cualquier tipo de planta de energia, solar,
// nuclear, etc.
//
// Nosotros como desarrolladores no deberiamos de cambiar toda las implementaciones por su tipo, ya que esto
// no es un buen estilo de programación. ej:
//
//      double chargePhone (WindPlant plant) {}
//
// Con eso estamos forzando al codigo a que se haga uso unicamente de ese tipo de planta de energia, ¿Que pasaria si,
// por ejemplo, la planta de energia eolica no pudiera ser usada para cargar un telefono? En parte, seria bueno por
// que podriamos implementar, tal vez, principios solid, entre ellos, el principio de segregacion de interfaces, pero,
// al realizar la implementacion con la clase abstracta, el codigo va a funcionar con cualquier tipo de planta.

void main() {
  final WindPlant windPlant = WindPlant(initialEnergy: 100.0);
  final NuclearPlant nuclearPlant = NuclearPlant(initialEnergy: 1000.0);

  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

// Al realizarlo de esta manera, el codigo va a funcionar con cualquier tipo de planta, mientras que se aplica el
// principio de inversión de dependencias, es decir, que el codigo no depende de un tipo de planta, sino de cualquier
// planta de energia.
double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) throw Exception('Not enough energy');
  return plant.energyLeft - 10;
}

enum PlantType { nucler, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});
  void consumeEnergy({required double amount});
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
    : super(
        energyLeft: initialEnergy,
        type: PlantType.wind,
      ); // super se usa para el constructor del padre

  // Los nombres de los parametros pueden variar
  @override
  void consumeEnergy({required double amount}) {
    energyLeft -= amount;
  }
}

// Aplicando un implementes
class NuclearPlant implements EnergyPlant {

  double energyLeft;
  final PlantType type;

  NuclearPlant({required double initialEnergy})
    : energyLeft = initialEnergy,
      type = PlantType.nucler;

  @override
  void consumeEnergy({required double amount}) {
    energyLeft -= (amount * 0.5);
  }
}
