import 'package:fic1_slicing/constants.dart';
import 'package:fic1_slicing/features/home/views/components/furniture_card.dart';
import 'package:fic1_slicing/features/home/models/furniture.dart';
import 'package:flutter/material.dart';

import 'components/header_menu.dart';
import 'components/navbar_menu.dart';
import 'components/tabbar_menu.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 5);
    super.initState();
  }

  void _tappedIndex(int i) {
    setState(() {
      _selectedIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: NavBarMenu(
          selectedIndex: _selectedIndex,
          onTap: (value) => _tappedIndex(value),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderMenu(),
              const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: khorizontalPadding, vertical: 30.0),
                child: Text(
                  'Discover the most modern furniture',
                  style: TextStyle(
                    color: kFontPrimaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TabBarMenu(controller: _tabController),
              const Padding(
                padding: EdgeInsets.only(
                    left: khorizontalPadding,
                    right: khorizontalPadding,
                    top: 30.0,
                    bottom: 20.0),
                child: Text(
                  'Recommended Furnitures',
                  style: TextStyle(
                    color: kFontPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: Furniture.furnitures.length,
                  itemBuilder: (context, index) {
                    var furniture = Furniture.furnitures[index];
                    return FurnitureCard(
                      furniture: furniture,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
