import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 48,
          width: 325,
          child: Form(
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: "Search product",
                  filled: true,
                  fillColor: Colors.white,
                  border: outlineInputBorder,
                  enabledBorder:  OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  focusedBorder: outlineInputBorder,
                  contentPadding: EdgeInsets.only(top: 5,left: 20)
                  ),
            ),
          ),
        ),
        SizedBox(
          height: 48,
          width: 48,
          child: Ink(
            decoration: const ShapeDecoration(
              color:  Color(0xFFFF4242),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(defaultBorderRadius))),
            ),
            child: IconButton(
              icon: const Icon(Icons.search),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
  borderSide: BorderSide.none,
  
);
