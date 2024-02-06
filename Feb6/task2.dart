void main() {
  car c = car("Suv", 210, 21, "petrol", 200, 2014);
  truck t = truck("Carrier", 102, 10, "Desial", 202, 2019);
  print(
      "cars model year ${t.year} and \nyear is ${t.model}  ,\n Fuel type ${t.fueltype}, \ntotal distance =${t.distance} ,\nfuiel effi =${t.fuelE}");
  t.fuel();
  t.max();
  t.tdistance();
  print(
      "cars model year ${c.year} \nand model is ${c.model}  , \nFuel type ${c.fueltype}");
  c.fuel();
}

class Vehicle {
  String model;
  String fueltype;
  int year;
  double fuelE;
  double distance;
  int maxspeed;
  Vehicle(this.model, this.distance, this.fuelE, this.fueltype, this.maxspeed,
      this.year);

  double fuel() {
    print(" Fuel Effefficiency = 23m");
    return fuelE;
  }

  double tdistance() {
    return distance;
  }

  int max() {
    return maxspeed;
  }
}

class car extends Vehicle {
  car(super.model, super.distance, super.fuelE, super.fueltype, super.maxspeed,
      super.year);

  @override
  double fuel() {
    return fuelE;
  }

  @override
  double tdistance() {
    return distance;
  }

  @override
  int max() {
    return maxspeed;
  }
}

class truck extends Vehicle {
  truck(super.model, super.distance, super.fuelE, super.fueltype,
      super.maxspeed, super.year);

  @override
  double fuel() {
    super.fuel();

    return 10;
  }

  @override
  double tdistance() {
    return 200;
  }

  @override
  int max() {
    return 120;
  }
}
