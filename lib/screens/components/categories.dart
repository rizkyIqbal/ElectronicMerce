import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category_model.dart';

import '../../../constants.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          demo_categories.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: defaultPadding),
            child: CategoryCard(
                //icon: demo_categories[index].icon,
                title: demo_categories[index].title,
                is_active: demo_categories[index].is_active,
                press: () {}),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    //required this.icon,
    required this.title,
    required this.is_active,
    required this.press,
  }) : super(key: key);

  final String title;
  final bool is_active;
  final VoidCallback press;


  @override
  Widget build(BuildContext context) {
    return is_active? OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0xFFFF4242),
          shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(defaultBorderRadius))),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding / 4, vertical: defaultPadding / 2),
          child: Column(
            children: [
              const SizedBox(height: 5),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: Colors.white70),
              )
            ],
          ),
        )
        ):
        OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(defaultBorderRadius))),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding / 4, vertical: defaultPadding / 2),
          child: Column(
            children: [
              const SizedBox(height: 5),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: Colors.black38),
              )
            ],
          ),
        ));
  }
}
