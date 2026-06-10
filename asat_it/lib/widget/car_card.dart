import 'package:flutter/material.dart';
import '../model/car_model.dart';

class CarCard extends StatelessWidget {
  final CarModel car;

  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade100,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.directions_car,
                size: 50,
                color: Colors.blueGrey,
              ),
            ),

            Text(
              car.car,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            Text(car.model, style: TextStyle(color: Colors.grey)),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Color(0xFFD4AF37),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "HOT DEAL",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Text(
              car.price,
              style: TextStyle(
                color: Color(0xFFD4AF37),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
                label: Text("Beli"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
