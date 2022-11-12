import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../models/palette.dart';

class FurnitureColor extends StatefulWidget {
  const FurnitureColor({
    Key? key,
  }) : super(key: key);

  @override
  State<FurnitureColor> createState() => _FurnitureColorState();
}

class _FurnitureColorState extends State<FurnitureColor> {
  int _selectedIndex = 0;

  void _tappedIndex(int i) {
    setState(() {
      _selectedIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22.0, right: 22.0, top: 21.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Choose a color :',
            style: TextStyle(
              fontSize: 12,
              color: kBlackColor.withOpacity(0.3),
            ),
          ),
          Row(
            children: List.generate(
              Palette.colors.length,
              (i) => InkWell(
                onTap: () => _tappedIndex(i),
                child: Container(
                  height: 32,
                  width: 32,
                  margin: const EdgeInsets.only(left: 12),
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: _selectedIndex == i
                        ? Border.all(color: Palette.colors[i].color, width: 2)
                        : null,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Palette.colors[i].color,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
