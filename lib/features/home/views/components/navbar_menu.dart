import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../widgets/navbar_icon_widget.dart';
import '../../models/navbar_icon.dart';

class NavBarMenu extends StatelessWidget {
  const NavBarMenu({
    Key? key,
    required int selectedIndex,
    this.onTap,
  })  : _selectedIndex = selectedIndex,
        super(key: key);

  final int _selectedIndex;
  final Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 16,
      backgroundColor: kWhiteColor,
      unselectedItemColor: kBrownColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: List.generate(
        NavBarIcon.navBarIcons.length,
        (i) {
          var navIcon = NavBarIcon.navBarIcons[i];
          return navBarIcon(
            label: navIcon.label,
            icon: navIcon.icon,
            color: _selectedIndex == i ? kBrownColor : kWhiteColor,
            iconColor: _selectedIndex == i ? kBackgroundColor : kBrownColor,
          );
        },
      ),
      currentIndex: _selectedIndex,
      onTap: onTap,
    );
  }
}
