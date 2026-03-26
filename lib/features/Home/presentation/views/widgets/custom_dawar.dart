import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/app_images.dart';
import 'package:invoicing_dashboard/features/Home/data/models/dawar_item_model.dart';
import 'package:invoicing_dashboard/features/Home/data/models/user_model.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/custom_user_item.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/dawar_item.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/dawar_item_list_view.dart';

class CustomDawar extends StatelessWidget {
  const CustomDawar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.5,
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
        ),
      ),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: const [
                CustomUserItem(
                  userItemModel: UserModel(
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
