import 'package:flutter/material.dart';

import '../data/sources.dart';
import 'card.dart';

class GridListWidget extends StatelessWidget {
  const GridListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 25,
          crossAxisSpacing: 25,
        ),
        itemCount: cardItems.length,
        itemBuilder: (context, index) {
          return CardWidget(
            title: cardItems[index].title,
            image: cardItems[index].image,
          );
        },
      ),
    );
  }
}
