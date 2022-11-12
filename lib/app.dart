import 'package:fic1_slicing/features/home/views/home_view.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        unselectedWidgetColor: kWhiteColor,
        
      ),
      home: const HomeView(),
    );
  }
}
