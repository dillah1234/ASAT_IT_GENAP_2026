class CarModel {
  final String car;
  final String model;
  final String price;

  CarModel({required this.car, required this.model, required this.price});

  factory CarModel.fromJson(Map<String, dynamic> json) {
    return CarModel(
      car: json['car'],
      model: json['car_model'],
      price: json['price'],
    );
  }
}
