import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/utils/app_images.dart';
import 'package:invoicing_dashboard/features/Home/data/models/user_model.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/custom_user_item.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  final List<UserModel> items = const [
    UserModel(
      image: Assets.imagesUserImage2,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail.com",
    ),
    UserModel(
      image: Assets.imagesUserImage3,
      title: "Josua Nunito",
      subTitle: "Josh Nunito@gmail.com",
    ),
    UserModel(
      image: Assets.imagesUserImage4,
      title: "Madrani Shawali",
      subTitle: "Shawali20@gmail.com",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: CustomUserItem(userItemModel: e),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
