import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utlis/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const List<UserInfoModel> users = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Ahmed Shawqy',
        subtitle: 'AmirElsho3raa@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Hafez Ebrahim',
        subtitle: 'HafezEbrahim@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Anter Ebn Shadad',
        subtitle: 'AnterEbnShdad@gmail.com'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: users
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //       itemCount: users.length,
    //       scrollDirection: Axis.horizontal,
    //       itemBuilder: (context, index) {
    //         return UserInfoListTile(
    //           userInfoModel: users[index],
    //         );
    //       }),
    // );
  }
}
