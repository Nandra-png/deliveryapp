// File: lib/pages/home.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectgetx/pages/controller/cart_controller.dart';
import 'package:projectgetx/pages/listmenu.dart';
import 'package:projectgetx/widgetReuse/header_image.dart';


class Home extends StatelessWidget {
  final CartController cartController;

  Home({Key? key})
      : cartController = Get.find<CartController>(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderImage(),

            // Search Box
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0),
              child: SizedBox( // Ganti Container dengan SizedBox
                height: 29,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width - 80, // Responsive width
                        height: 24,
                        decoration: ShapeDecoration(
                          color: Color(0xFFE0E0E0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 0,
                      right: 12, // Tambahkan right constraint
                      child: Opacity(
                        opacity: 0.70,
                        child: TextField(
                          style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w600,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Search . . .',
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w600,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 40.0, bottom: 12), 
                          ),
                        ),
                      ),
                    ),
                    // ... search icon position tetap sama
                  ],
                ),
              ),
            ),

            // Yellow Box with Image
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 40.0, right: 40.0),
              child: AspectRatio( // Gunakan AspectRatio untuk menjaga rasio
                aspectRatio: 382/193,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: ShapeDecoration(
                          color: Color(0xFFFFDB7D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 34,
                      right: 34,
                      top: 0,
                      bottom: 0,
                      child: Image.asset(
                        'assets/menu_page.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Menu Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'menu',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  FoodMenu(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}