import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utlis/app_images.dart';
import 'package:responsive_dashboard/widgets/acitve_and_inactive_item.dart';
import 'package:responsive_dashboard/widgets/drawer_item_list_view.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.6,
      color: Colors.white,
      child: const CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: UserInfoListTile(
            userInfoModel: UserInfoModel(
              image: Assets.imagesAvatar1,
              title: 'Youssef Mostafa',
              subtitle: 'YoussefMostafa@gmail.com',
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),
        DrawerItemListView(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Expanded(
                  child: SizedBox(
                height: 20,
              )),
              InActiveDrawerItem(
                drawerItemModel: DrawerItemModel(
                  image: Assets.imagesSettings,
                  title: 'Settings System',
                ),
              ),
              InActiveDrawerItem(
                drawerItemModel: DrawerItemModel(
                  image: Assets.imagesLogout,
                  title: 'Logout Account',
                ),
              ),
              SizedBox(
                height: 48,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
