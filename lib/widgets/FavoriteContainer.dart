import 'package:flutter/material.dart';
import 'package:gradproject/screens/DescriptionPage.dart';
import 'package:gradproject/widgets/product_container.dart';

class FavoriteContainer extends StatelessWidget {
  const FavoriteContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return const Description();
          }));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.topCenter, // Start from the top center
              end: Alignment.bottomCenter, // End at the bottom center
              colors: [
                Colors.white,
                Color(0xFFB3E3E8),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              height: 150,
              width: screenWidth,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const Padding(
                    padding:  EdgeInsets.all(10),
                    child:ProductContainer()
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 20, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Product name (glasses , lenses , accessories)",
                            style: TextStyle(color: Color(0xFF05405A), fontSize: 12),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Price: 200 pounds",
                            style: TextStyle(color: Color(0xFF0C6D93), fontSize: 12),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Add your delete action here
                        },
                        icon: const Padding(
                          padding: EdgeInsets.only(top: 55.0),
                          child: Icon(Icons.delete, color: Color(0xFF0CC3CF)),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Add your shopping cart action here
                        },
                        icon: const Padding(
                          padding: EdgeInsets.only(top: 55.0),
                          child: Icon(Icons.add_shopping_cart_rounded, color: Color(0xFF0CC3CF)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
