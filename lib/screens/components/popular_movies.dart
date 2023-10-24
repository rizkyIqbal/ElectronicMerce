// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/models/movies_model.dart';
// import 'package:flutter_application_1/screens/details/details_screen.dart';
// import 'package:flutter_application_1/screens/components/movies_card.dart';

// import '../../../constants.dart';
// import 'sectiontitle.dart';

// class PopularMovies extends StatefulWidget {
//   const PopularMovies({Key? key}) : super(key: key);

//   @override
//   State<PopularMovies> createState() => _PopularMovies();
// }

// class _PopularMovies extends State<PopularMovies> {
//   List<Movies> filtered = [];
//   @override
//   initState() {
//     // at the beginning, all users are shown
//     filtered = demo_movies;
//     super.initState();
//   }

//   void setPopular() {
//     List<Movies> results = [];
//     results = demo_movies;

//     setState(() {
//       filtered = results;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SectionTitle(
//           title: "Popular Movies",
//           pressSeeAll: () {},
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: List.generate(
//                   filtered.length,
//                   (index) => Padding(
//                         padding: const EdgeInsets.only(left: defaultPadding),
//                         child: MoviesCard(
//                           image: filtered[index].image,
//                           title: filtered[index].title,
//                           genre: filtered[index].genre,
//                           press: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) =>
//                                       DetailsScreen(data: filtered[index]),
//                                 ));
//                           },
//                         ),
//                       ))),
//         ),
//       ],
//     );
//   }
// }
