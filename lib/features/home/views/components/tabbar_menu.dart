import 'package:flutter/material.dart';

import '../../../../constants.dart';

class TabBarMenu extends StatelessWidget {
  const TabBarMenu({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      isScrollable: true,
      indicatorColor: kBrownColor,
      splashBorderRadius: BorderRadius.circular(20),
      labelPadding:
          const EdgeInsets.symmetric(horizontal: khorizontalPadding + 8),
      indicator: BoxDecoration(
        color: kBrownColor,
        borderRadius: BorderRadius.circular(20),
      ),
      labelStyle: const TextStyle(fontSize: 12),
      unselectedLabelColor: kBrownColor,
      padding: const EdgeInsets.only(left: khorizontalPadding),
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
