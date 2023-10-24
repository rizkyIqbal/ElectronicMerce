import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({
    Key? key,
    required this.image,
    required this.title,
    required this.rating,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, rating, price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 275,
        padding: const EdgeInsets.only(bottom: defaultPadding / 2),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.all(Radius.circular(defaultBorderRadius))),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    const BorderRadius.all(Radius.circular(defaultBorderRadius)),
                 boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(14),
                          topLeft: Radius.circular(14),
                        ),
                        color: Color.fromARGB(255, 240, 240, 240),
                      ),
                      child: Image.asset(
                        image,
                        // width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                  const SizedBox(
              height: defaultPadding / 2,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: defaultPadding / 2, right: defaultPadding / 2),
              child: Column(
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.star,color: Color.fromARGB(255, 255, 195, 90),size: 18,),
                      Expanded(
                        child: Text(
                          rating,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500, fontSize: 12),
                        ),
                      ),Expanded(
                        child: Text(
                          '\$'+price,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 12),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      const SizedBox(
                        width: defaultPadding / 4,
                      ),
                      // Text(
                      //   genre,
                      //   textAlign: TextAlign.left,
                      //   style: Theme.of(context)
                      //       .textTheme
                      //       .subtitle2!
                      //       .copyWith(color: Colors.white54),
                      // )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:12.0, bottom: 18, right: 22),
                    child: Text(
                        title,
                        style: const TextStyle(color: Colors.black),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        // softWrap: false,
                      ),
                  ),
                ],
              ),
            ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
