import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invoicing_dashboard/core/utils/app_images.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF).withOpacity(0.1),
            borderRadius: BorderRadius.circular(50.0),
          ),
          padding: EdgeInsets.all(14.0),
          child: SvgPicture.asset(Assets.imagesBalanceIcon),
        ),
        Transform.rotate(
          angle: 1.57 * 2,
          child: Icon(Icons.arrow_back_ios_sharp, color: Colors.white),
        ),
      ],
    );
  }
}
