import 'package:flutter/material.dart';
import 'package:gradproject/widgets/FavoriteContainer.dart'; // Import your FavoriteContainer widget

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Favorite",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF176B87),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(Icons.favorite_outlined, color: Color(0xFF0CC3CF)),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/images/logo.png',
                    width: 50,
                  ),
                ],
              ),
            ],
          ),
          iconTheme: const IconThemeData(
            color: Color(0xFF176B87),
          ),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10, // Set the itemCount to 10
        itemBuilder: (BuildContext context, int index) {
          return const FavoriteContainer(); // Use FavoriteContainer widget for each item
        },
      ),
    );
  }
}
