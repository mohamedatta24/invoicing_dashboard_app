import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invoicing_dashboard/features/Home/data/models/user_model.dart';

class CustomUserItem extends StatelessWidget {
  const CustomUserItem({super.key, required this.userItemModel});

  final UserModel userItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: ListTile(
        leading: SvgPicture.asset(userItemModel.image),
        title: Text(
          userItemModel.title,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color(0xff064061),
          ),
        ),
        subtitle: Text(
          userItemModel.subTitle,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12.0,
            color: Color(0xffAAAAAA),
          ),
        ),
      ),
    );
  }
}
