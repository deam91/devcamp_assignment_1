import 'package:devcamp/widgets/tag.dart';
import 'package:flutter/material.dart';

class TagListWidget extends StatelessWidget {
  const TagListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        Tag(text: 'Places'),
        Tag(text: 'Hotels'),
        Tag(text: 'Attractions'),
      ],
    );
  }
}
