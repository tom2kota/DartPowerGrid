void main() {
  PowerGrid grid = new PowerGrid();
  NuclearPlant nuclear = new NuclearPlant();
  SolarPlant solar = new SolarPlant();

  grid.addPlant(nuclear);
  grid.addPlant(solar);
}

class PowerGrid {
  // List<NuclearPlant> connectedPlants = [];
  //
  // addPlant(NuclearPlant plant) {
  //   plant.turnOn();
  //   connectedPlants.add(plant);
  // }

  List<dynamic> connectedPlants = [];

  addPlant(dynamic plant) {
    plant.turnOn();
    connectedPlants.add(plant);
  }
}

class NuclearPlant {
  turnOn() {
    print('Nuclear Plant => Turning ON');
  }
}

class SolarPlant {
  turnOn() {
    print('Solar Plant => Turning ON');
  }
}
