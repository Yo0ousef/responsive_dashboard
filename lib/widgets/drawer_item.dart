import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_moel.dart';
import 'package:responsive_dashboard/widgets/active_inactive_list_tile.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});

  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: ActiveListTile(drawerItemModel: drawerItemModel),
      secondChild: InActiveDrawerItem(drawerItemModel: drawerItemModel),
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 600),
    );
  }
}
