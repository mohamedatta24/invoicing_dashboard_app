import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    required this.selectIndex,
  });

  final String image;
  final bool selectIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: selectIndex
                ? const Color(0xffFFFFFF).withOpacity(0.1)
                : const Color(0xffFAFAFA).withOpacity(0.5),
            borderRadius: BorderRadius.circular(50.0),
          ),
          padding: const EdgeInsets.all(14.0),
          child:  SvgPicture.asset(
            image,
            color: selectIndex
                ? const Color(0xffFFFFFF)
                : const Color(0xff4EB7F2),
          ),
        ),
        Transform.rotate(
          angle: 1.57 * 2,
          child: Icon(
            Icons.arrow_back_ios_sharp,
            color: selectIndex
                ? const Color(0xffffffff)
                : const Color(0xff064061),
          ),
        ),
      ],
    );
  }
}
