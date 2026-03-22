import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/data/models/all_expenses_item_model.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/all_expenses_item_details.dart';

import 'package:invoicing_dashboard/features/Home/presentation/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.selectIndex,
  });

  final AllExpensesItemModel allExpensesItemModel;
  final bool selectIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: selectIndex ? const Color(0xff4EB7F2) : const Color(0xffFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12.0),
          side: BorderSide(width: 1, color: const Color(0xffF1F1F1)),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
            selectIndex: selectIndex,
          ),
          SizedBox(height: 32),
          AllExpensesItemDetails(
            title: allExpensesItemModel.title,
            subTitle: allExpensesItemModel.subTitle,
            price: allExpensesItemModel.price,
            selectIndex: selectIndex,
          ),
        ],
      ),
    );
  }
}
