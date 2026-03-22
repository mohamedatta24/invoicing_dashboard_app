import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/app_images.dart';
import 'package:invoicing_dashboard/features/Home/data/models/dawar_item_model.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/dawar_item.dart';

class DawarItemListView extends StatefulWidget {
  const DawarItemListView({super.key});

  @override
  State<DawarItemListView> createState() => _DawarItemListViewState();
}

class _DawarItemListViewState extends State<DawarItemListView> {
  final List<DawarItemModel> items = const [
    DawarItemModel(title: "Dashboard", image: Assets.imagesDashboardIcon),
    DawarItemModel(
      title: "My Transaction",
      image: Assets.imagesMyTransactionIcon,
    ),
    DawarItemModel(title: "Statistics", image: Assets.imagesStatisticsIcon),
    DawarItemModel(
      title: "Wallet Account",
      image: Assets.imagesWalletAccountIcon,
    ),
    DawarItemModel(
      title: "My Investments",
      image: Assets.imagesMyInvestmentsIcon,
    ),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(items.length, (index) {
        return InkWell(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: DawarItem(
              dawarItemModel: items[index],
              selectActive: currentIndex == index,
            ),
          ),
        );
      }),
    );
  }
}
