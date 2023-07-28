import 'package:flutter/material.dart';
import 'package:gohomy/const/color.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    required this.textEditingController,
    this.hintText = '',
    this.backgroungColor = Colors.white,
  });

  final TextEditingController textEditingController;
  final String hintText;
  final Color backgroungColor;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        filled: true,
        border: InputBorder.none,
        isDense: true,
        contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        fillColor: backgroungColor,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 1,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: AppColor.dark5, fontSize: 14),
      ),
      onChanged: (str) {},
      onSubmitted: (str) {},
    );
  }
}
