void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final solarPlant = SolarPlant(initialEnergy: 50);

  print('Wind: ${chargerPhone(windPlant)}');
  print('Solar: ${chargerPhone(solarPlant)}');
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
  PlantType type; // 1: Wind, 2: Solar, 3: Hydro

  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });

  void consumeEnergy(double energy);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(
          energyLeft: initialEnergy,
          type: PlantType.wind,
        );

  @override
  void consumeEnergy(double energy) {
    energyLeft -= energy;
  }
}

class SolarPlant extends EnergyPlant {
  SolarPlant({required double initialEnergy})
      : super(
          energyLeft: initialEnergy,
          type: PlantType.solar,
        );
  @override
  void consumeEnergy(double energy) {
    energyLeft -= energy * 2;
  }
}
