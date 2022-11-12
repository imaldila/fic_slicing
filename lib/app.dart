import 'package:fic1_slicing/config/app_router.dart';
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
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: Routes.home,
    );
  }
}
