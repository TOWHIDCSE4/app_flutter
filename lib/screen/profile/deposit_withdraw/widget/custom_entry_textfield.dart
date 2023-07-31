import 'package:flutter/material.dart';
import 'package:gohomy/const/color.dart';
import 'package:gohomy/const/image_assets.dart';

class CustomEntryTextField extends StatelessWidget {
  const CustomEntryTextField({
    super.key,
    required this.controller,
    this.isTyping = false,
    this.onChanged,
  });

  final TextEditingController controller;
  final bool isTyping;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      textAlign: isTyping ? TextAlign.start : TextAlign.center,
      style: const TextStyle(
        color: AppColor.primaryColor,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        suffixIcon: isTyping
            ? Image.asset(
                ImageAssets.goldCoin,
                height: 20,
                width: 20,
              )
            : null,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.dark5),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.dark5,
          ),
        ),
        hintText: 'Tối thiểu 50.000',
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColor.dark5,
        ),
      ),
      onChanged: onChanged,
    );
  }
}
