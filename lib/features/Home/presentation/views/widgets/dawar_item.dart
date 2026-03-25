import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invoicing_dashboard/features/Home/data/models/dawar_item_model.dart';

class DawarItem extends StatelessWidget {
  const DawarItem({
    super.key,
    required this.dawarItemModel,
    required this.selectActive,
  });

  final DawarItemModel dawarItemModel;
  final bool selectActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(dawarItemModel.image),
      title: Text(
        dawarItemModel.title,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: selectActive ?  FontWeight.bold : FontWeight.w400,
          color: selectActive
              ? const Color(0xff4EB7F2)
              : const Color(0xff064061),
        ),
      ),
      trailing: selectActive
          ? Container(
              width: 3,
              height: 48,
              decoration: BoxDecoration(
                color: const Color(0xff4EB7F2),
                borderRadius: BorderRadius.circular(50.0),
              ),
            )
          : null,
    );
  }
}
