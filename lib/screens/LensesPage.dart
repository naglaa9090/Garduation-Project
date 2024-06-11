import 'package:flutter/material.dart';
import 'package:gradproject/widgets/product_container.dart';

class Lenses extends StatelessWidget {
  const Lenses({super.key});

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
                    "Lenses",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFF176B87),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.lens_blur_outlined,
                      color: Color(0xFF176B87),
                    ),
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
      body: GridView.builder(
        physics: const BouncingScrollPhysics(),
        //padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          mainAxisSpacing:2 , // Spacing between rows
          crossAxisSpacing: 2, // Spacing between columns
          childAspectRatio: 3 / 4, // Width/height ratio for each item
        ),
        itemCount: 10, // Number of items
        itemBuilder: (context, index) {
          return const Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ProductContainer(),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  "\$200",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff04364A),
                  ),
                ),
              ),
              Text(
                "Arrow Library",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff04364A),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
