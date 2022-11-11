import 'package:fic1_slicing/constants.dart';
import 'package:flutter/material.dart';

import 'components/header_menu.dart';
import 'components/tabbar_menu.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HeaderMenu(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
                child: Text(
                  'Discover the most modern furniture',
                  style: TextStyle(
                    color: kFontPrimaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TabBarMenu(),
              Padding(
                padding: EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 30.0, bottom: 20.0),
                child: Text(
                  'Recommended Furnitures',
                  style: TextStyle(
                    color: kFontPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
