import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_moel.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DrawerItemModel> drawerItemModel = [
    DrawerItemModel(
      image: Assets.imagesDashboard,
      title: 'Dashboard',
    ),
    DrawerItemModel(
      image: Assets.imagesMyTransctions,
      title: 'My Transaction',
    ),
    DrawerItemModel(
      image: Assets.imagesStatistics,
      title: 'Statistics',
    ),
    DrawerItemModel(
      image: Assets.imagesWalletAccount,
      title: 'Wallet Account',
    ),
    DrawerItemModel(
      image: Assets.imagesMyInvestments,
      title: 'My Investments',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            userInfoModel: UserInfoModel(
              name: 'Tharwat Samy',
              email: 'tharwat@gmail.com',
              image: Assets.imagesAvatar3,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: drawerItemModel.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return DrawerItem(drawerItemModel: drawerItemModel[index]);
            },
          )
        ],
      ),
    );
  }
}
