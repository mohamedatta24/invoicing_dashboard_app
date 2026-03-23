import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/app_images.dart';
import 'package:invoicing_dashboard/features/Home/data/models/dawar_item_model.dart';
import 'package:invoicing_dashboard/features/Home/data/models/user_item_model.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/custom_user_item.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/dawar_item.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/dawar_item_list_view.dart';

class CustomDawar extends StatelessWidget {
  const CustomDawar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(color: Color(0xffFFFFFF)),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                CustomUserItem(
                  userItemModel: UserItemModel(
                    image: Assets.imagesUserImage1,
                    title: "Lekan Okeowo",
                    subTitle: "demo@gmail.com",
                  ),
                ),
                SizedBox(height: 16.0),
                DawarItemListView(),
                Expanded(child: SizedBox(height: 20)),
                DawarItem(
                  dawarItemModel: DawarItemModel(
                    title: "Setting system",
                    image: Assets.imagesSettingSystemIcon,
                  ),
                  selectActive: false,
                ),
                SizedBox(height: 20),

                DawarItem(
                  dawarItemModel: DawarItemModel(
                    title: "Logout account",
                    image: Assets.imagesLogoutAccountIcon,
                  ),
                  selectActive: false,
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
