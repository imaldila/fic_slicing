import 'package:fic1_slicing/features/home/models/furniture.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../widgets/favorite_icon.dart';

class FurnitureCard extends StatelessWidget {
  const FurnitureCard({
    Key? key,
    required this.furniture,
    this.onTap,
  }) : super(key: key);

  final Furniture furniture;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.only(left: khorizontalPadding, right: 8, bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kWhiteColor,
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 4,
              child: Stack(
                children: [
                  Hero(
                    tag: furniture.image,
                    child: Container(
                      height: 163,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(furniture.image),
                        ),
                      ),
                    ),
                  ),
                  const FavoriteIcon()
                ],
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: khorizontalPadding, top: 12, bottom: 5),
                child: Text(
                  furniture.name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: kFontPrimaryColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: khorizontalPadding, right: 18.0, bottom: 12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    furniture.price,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: kBrownColor,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/ic_star_filled.png',
                        width: 15,
                        height: 15,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${furniture.rating}',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: kGreyColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
