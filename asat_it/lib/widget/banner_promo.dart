import 'package:flutter/material.dart';

class BannerPromo extends StatelessWidget {
  const BannerPromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      height: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0F172A), Color(0xFF1E293B)],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          "Special Discount 20%",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,

            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
