import 'package:flutter/material.dart';

import '../gen/colors.gen.dart';
import '../utilities/app_text.dart';

class CustomClip extends StatelessWidget {
  final String name;
  final bool isSelect;
  final Function()? ontap;
  const CustomClip({
    super.key,
    required this.name,
    this.isSelect = false,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          margin: const EdgeInsets.only(right: 10, top: 2),
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 5.0,
          ),
          decoration: BoxDecoration(
            color: isSelect ? ColorName.primaryColor : ColorName.disabledGrey,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: AppText.small(name)),
    );
  }
}
