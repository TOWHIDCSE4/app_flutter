import 'package:flutter/material.dart';
import 'package:gohomy/const/color.dart';
import 'package:gohomy/const/image_assets.dart';
import 'package:gohomy/screen/profile/profile_details/widget/custom_button.dart';

class CardVerificationTile extends StatelessWidget {
  const CardVerificationTile({
    super.key,
    required this.title,
    required this.instruction,
    required this.imgPath,
    required this.onTapContinue,
  });

  final String title;
  final String instruction;
  final String imgPath;
  final VoidCallback onTapContinue;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          children: [
            Text(
              title.toUpperCase(),
              style: const TextStyle(
                color: AppColor.blue1,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              instruction,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Image.asset(imgPath),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                title: 'Tiếp tục',
                width: size.width * 0.6,
                radius: 10,
                onTap: onTapContinue,
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
