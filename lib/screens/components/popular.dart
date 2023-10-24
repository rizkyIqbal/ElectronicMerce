// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/models/product_model.dart';

// import '../../../constants.dart';
// import 'product_card.dart';
// import 'sectiontitle.dart';

// class Popular extends StatelessWidget {
//   const Popular({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SectionTitle(
//           title: "Popular",
//           pressSeeAll: () {},
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: List.generate(
//                   demo_product.length,
//                   (index) => Padding(
//                         padding: const EdgeInsets.only(left: defaultPadding),
//                         child: ProductCard(
//                           image: demo_product[index].image,
//                           title: demo_product[index].title,
//                           price: demo_product[index].price,
//                           bgColor: demo_product[index].bgColor,
//                           press: () {},
//                         ),
//                       ))),
//         ),
//       ],
//     );
//   }
// }
