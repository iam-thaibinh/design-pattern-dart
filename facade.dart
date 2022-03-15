class PlumbingSystem {
  //Low level access to Plumbing system
  void setPressure(int number) {}
  void turnOn() {}
  void turnOff() {}
}

class ElectricalSystem {
  //Low level access to Electrical system
  void setVoltage(int number) {}
  void turnOn() {}
  void turnOff() {}
}

//Facade class
class House {
  final _plumbing = PlumbingSystem();
  final _electrical = ElectricalSystem();

  void turnOnSystems() {
    _plumbing.setPressure(5);
    _plumbing.turnOn();
    _electrical.setVoltage(220);
    _electrical.turnOn();
  }

  void turnOffSystems() {
    _plumbing.turnOff();
    _electrical.turnOff();
  }
}

void main() {
  final house = House();
  house.turnOnSystems();
  house.turnOffSystems();
}
