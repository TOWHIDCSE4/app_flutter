import 'package:flutter/material.dart';
import 'package:gohomy/const/image_assets.dart';

class BannerTile extends StatelessWidget {
  const BannerTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.topLeft,
                  colors: [
                    Color(0xFFFF9900),
                    Color(0xFFE46025),
                    Color(0xFFDD3E1F),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(ImageAssets.imgRobot1),
                  Image.asset(ImageAssets.imgRobot2),
                ],
              ),
            )
          ],
        ),
        Positioned(
          bottom: -5,
          child: Image.asset(
            ImageAssets.imgSummary,
          ),
        ),
      ],
    );
  }
}