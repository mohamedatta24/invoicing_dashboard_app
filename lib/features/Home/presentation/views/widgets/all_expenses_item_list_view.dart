import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/app_images.dart';
import 'package:invoicing_dashboard/features/Home/data/models/all_expenses_item_model.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
      image: Assets.imagesBalanceIcon,
      title: "Balance",
      subTitle: "April 2022",
      price: "\$20,129",
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncomeIcon,
      title: "Income",
      subTitle: "April 2022",
      price: "\$22,159",
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpensesIcon,
      title: "Expenses",
      subTitle: "April 2022",
      price: "\$25,155",
    ),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((entry) {
        int index = entry.key;
        var item = entry.value;

        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.only(
                right: index == items.length - 1 ? 0 : 8,
              ),
              child: AllExpensesItem(
                allExpensesItemModel: item,
                selectIndex: currentIndex == index,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
