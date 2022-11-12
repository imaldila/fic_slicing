import 'package:fic1_slicing/constants.dart';
import 'package:flutter/material.dart';

class Palette {
  final Color color;
  final bool isSelected;
  const Palette({required this.color, this.isSelected = false});

  static const List<Palette> colors = [
    Palette(color: kBrownColor),
    Palette(color: kOrangeColor),
    Palette(color: kWhiteSoftColor),
    Palette(color: kChocolateColor),
  ];
}
