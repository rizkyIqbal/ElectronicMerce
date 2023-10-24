import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/movies_model.dart';
import 'package:flutter_application_1/models/product_model.dart';
import 'package:flutter_application_1/screens/details/details_screen.dart';
import 'package:flutter_application_1/screens/components/products_card.dart';

import '../../../constants.dart';
import 'sectiontitle.dart';

class AllProduct extends StatelessWidget {
  const AllProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SectionTitle(
        //   title: "All Movies",
        //   pressSeeAll: () {},
        // ),
        Container(
          height: 300,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      demo_product.length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(left: defaultPadding),
                            child: ProductsCard(
                              image: demo_product[index].imageThumbnail,
                              title: demo_product[index].title,
                              rating: demo_product[index].rating,
                              price: demo_product[index].price,
                              press: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          DetailsScreen(data: demo_product[index]),
                                    ));
                              },
                            ),
                          ))),
            ),
          ),
        ),
      ],
    );
  }
}
