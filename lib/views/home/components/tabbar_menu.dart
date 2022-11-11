import 'package:flutter/material.dart';

import '../../../constants.dart';

class TabBarMenu extends StatelessWidget {
  const TabBarMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      indicatorColor: kBrownColor,
      splashBorderRadius: BorderRadius.circular(20),
      labelPadding: const EdgeInsets.symmetric(horizontal: 22),
      indicator: BoxDecoration(
        color: kBrownColor,
        borderRadius: BorderRadius.circular(20),
      ),
      labelStyle: const TextStyle(fontSize: 12),
      unselectedLabelColor: kBrownColor,
      padding: const EdgeInsets.only(left: 16.0),
      tabs: const [
        Tab(
          text: 'All',
        ),
        Tab(
          text: 'Living Room',
        ),
        Tab(
          text: 'Bedroom',
        ),
        Tab(
          text: 'Dining Room',
        ),
        Tab(
          text: 'Kitchen',
        ),
      ],
    );
  }
}
