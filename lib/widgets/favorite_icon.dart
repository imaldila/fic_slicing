import 'package:flutter/material.dart';

import '../constants.dart';

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({
    Key? key,
    this.onTap, this.icon,
  }) : super(key: key);

  final Function()? onTap;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(22),
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 34,
        height: 34,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kWhiteColor,
        ),
        child: icon ?? Image.asset('assets/icons/ic_heart.png'),
      ),
    );
  }
}
