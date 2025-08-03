import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_moel.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> drawerItemModel = [
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
    return SliverList.builder(
      itemCount: drawerItemModel.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              if (activeIndex != index) {
                activeIndex = index;
              }
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: DrawerItem(
              drawerItemModel: drawerItemModel[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
