void main() {
  PowerGrid grid = new PowerGrid();
  NuclearPlant nuclear = new NuclearPlant();
  SolarPlant solar = new SolarPlant();

  grid.addPlant(nuclear);
  grid.addPlant(solar);
}

class PowerGrid {
  List<PowerPlant> connectedPlants = [];

  addPlant(PowerPlant plant) {
    bool confirmation = plant.turnOn('7 hours');
    connectedPlants.add(plant);
  }
}

abstract class PowerPlant {
  int costOfEnergy;

  bool turnOn(String duration);
}

class NuclearPlant implements PowerPlant {
  int costOfEnergy;

  bool turnOn(String duration) {
    print('Nuclear Plant => Turning ON');
    return true;
  }
}

class SolarPlant implements PowerPlant {
  int costOfEnergy;

  bool turnOn(String duration) {
    print('Solar Plant => Turning ON');
    return false;
  }
}
