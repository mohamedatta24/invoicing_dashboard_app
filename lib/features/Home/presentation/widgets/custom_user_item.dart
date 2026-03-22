import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invoicing_dashboard/core/utils/app_images.dart';

class CustomUserItem extends StatelessWidget {
  const CustomUserItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xffFAFAFA)),
      child: ListTile(
        leading: SvgPicture.asset(Assets.imagesUserImage1),
        title: const Text(
          "Lekan Okeowo",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color(0xff064061),
          ),
        ),
        subtitle: const Text(
          "demo@gmail.com",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12.0,
            color: Color(0xffAAAAAA),
          ),
        ),
      ),
    );
  }
}
