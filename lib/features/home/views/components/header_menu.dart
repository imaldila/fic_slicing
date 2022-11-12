import 'package:flutter/material.dart';

import '../../../../constants.dart';

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 18,
            width: 22,
            child: Image.asset('assets/icons/ic_more.png'),
          ),
          const Text(
            'Home',
            style: TextStyle(
              fontSize: 16,
              color: kFontPrimaryColor,
            ),
          ),
          SizedBox(
            height: 18,
            width: 18,
            child: Image.asset('assets/icons/ic_search.png'),
          ),
        ],
      ),
    );
  }
}
