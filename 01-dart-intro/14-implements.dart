void main() {
  final hydroPlant = HydroPlant(energyLeft: 100);
  print('Hydro: ${chargerPhone(hydroPlant)}');
}

double chargerPhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  return plant.energyLeft -= 10;
}

enum PlantType { wind, solar, hydro }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // 1: Wind, 2: Solar, 3: Hydro

  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });

  void consumeEnergy(double energy);
}

// El implentar una interfaz es como heredar de una clase abstracta
// La diferencia entre extend es que el implementar lleva solo las propiedades y metodos de la interfaz
class HydroPlant implements EnergyPlant {
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.hydro;

  HydroPlant({required this.energyLeft});

  @override
  void consumeEnergy(double energy) {
    energyLeft -= energy * 3;
  }
}
