import 'package:flutter/material.dart';

import '../core/constants.dart';

class TopImageWidget extends StatelessWidget {
  const TopImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      foregroundDecoration: BoxDecoration(
        gradient: whiteBottomGradient,
      ),
      child: Image.network(
        'https://img.freepik.com/free-photo/full-shot-travel-concept-with-landmarks_23-2149153258.jpg?3&w=2000&t=st=1663413910~exp=1663414510~hmac=6ee180449b95322d08aa5ff2557fe0d0be39c0bed3cad8b52232c68de06c47cc',
        fit: BoxFit.cover,
      ),
    );
  }
}
