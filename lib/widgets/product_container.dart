import 'package:flutter/material.dart';

import '../screens/DescriptionPage.dart';

class ProductContainer extends StatelessWidget {
 final Icon ? favicon;
  const ProductContainer({super.key,  this.favicon , });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return const Description();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color(0xFF9FE6EA),
              blurRadius: 1.0, // Adjust the blur radius to your preference
              spreadRadius: 1.0, // Adjust the spread radius to your preference
              offset: Offset(0, 1), // Adjust the offset to your preference
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFFFFF),
              Color(0xFF38CCD4)
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const  Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 8.0),
                              child: Text(
                                "30% off",
                                style: TextStyle(color: Color(0xFF64C6CC)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Icon(Icons.favorite_outline_rounded,color: Color(0xFF64C6CC),size: 20,),
                            )
                          ],
                        ),
                        //Icon(Icons.favorite_border_rounded,color: Color(0xFF64C6CC),)

                    ),
                  ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset("assets/images/glass.png", width: 90),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
