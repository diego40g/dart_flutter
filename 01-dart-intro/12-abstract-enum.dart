void main() {
  //final windPlant = EnergyPlant();
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
