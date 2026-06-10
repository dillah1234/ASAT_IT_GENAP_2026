import 'package:asat_it/services/api_services.dart';
import 'package:asat_it/widget/banner_promo.dart';
import 'package:asat_it/widget/car_card.dart';
import 'package:asat_it/widget/search_bar.dart';
import 'package:flutter/material.dart';
import '../model/car_model.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CarModel> cars = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadCars();
  }

  Future<void> loadCars() async {
    cars = await ApiService.getCars();

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "PREMIUM CARS",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
        ),
      ),

      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Column(
              children: [
                SearchBarWidget(),

                BannerPromo(),

                SizedBox(height: 10),

                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "🔥 Hot Sales",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.all(10),
                    itemCount: cars.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.68,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return CarCard(car: cars[index]);
                    },
                  ),
                ),
              ],
            ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFFD4AF37),
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorit"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
    );
  }
}
