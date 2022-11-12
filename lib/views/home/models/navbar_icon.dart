class NavBarIcon {
  final String label, icon;

  const NavBarIcon({required this.label, required this.icon});

  static const List<NavBarIcon> navBarIcons = [
    NavBarIcon(
      label: 'Home',
      icon: 'assets/icons/ic_home.png',
    ),
    NavBarIcon(
      label: 'Shop',
      icon: 'assets/icons/ic_shop.png',
    ),
    NavBarIcon(
      label: 'Star',
      icon: 'assets/icons/ic_star.png',
    ),
    NavBarIcon(
      label: 'Person',
      icon: 'assets/icons/ic_person.png',
    ),
  ];
}
