import 'package:flutter/material.dart';

final whiteBottomGradient = LinearGradient(
  begin: Alignment.center,
  end: Alignment.bottomCenter,
  stops: const [
    0.8,
    1.0,
  ],
  colors: [
    Colors.white.withOpacity(0.0),
    Colors.white,
  ],
);

final whiteTopGradient = LinearGradient(
  begin: Alignment.center,
  end: Alignment.topCenter,
  stops: const [
    0.0,
    1.0,
  ],
  colors: [
    Colors.black.withOpacity(.4),
    Colors.black.withOpacity(0.0),
  ],
);
