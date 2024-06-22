class Car {
  // Properties
  String brand;
  String model;
  int year;
  double milesDriven = 0;

  // Constructor
  Car(this.brand, this.model, this.year){
    numberOfCars++;
  }

  // Method to drive the car
  void drive(double miles) {
    milesDriven += miles;
  }

  // Getter methods
  double getMilesDriven() => milesDriven;
  String getBrand() => brand;
  String getModel() => model;
  int getYear() => year;

  // Method to calculate the age of the car
  int getAge(int currentYear) => currentYear - year;

  // Static property to keep track of the number of Car objects created
  static int numberOfCars = 0;
}

void main() {
  // Create three Car objects
  final car1 = Car('Toyota', 'Camry', 2015);
  final car2 = Car('Honda', 'Civic', 2018);
  final car3 = Car('Ford', 'Focus', 2020);

  // Drive each car a different number of miles
  car1.drive(10000);
  car2.drive(7500);
  car3.drive(5000);

  // Print information for each car
  print('Car 1: ${car1.getBrand()} ${car1.getModel()} (${car1.getYear()}), '
      'Miles Driven: ${car1.getMilesDriven()}, Age: ${car1.getAge(2024)} years');
  print('Car 2: ${car2.getBrand()} ${car2.getModel()} (${car2.getYear()}), '
      'Miles Driven: ${car2.getMilesDriven()}, Age: ${car2.getAge(2024)} years');
  print('Car 3: ${car3.getBrand()} ${car3.getModel()} (${car3.getYear()}), '
      'Miles Driven: ${car3.getMilesDriven()}, Age: ${car3.getAge(2024)} years');

  // Print total number of Car objects created
  print('Total number of Car objects created: ${Car.numberOfCars}');
}
