import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List userList = [
    UserInfoModel(
      name: 'Tharwat Samy',
      email: 'tharwat@gmail.com',
      image: Assets.imagesAvatar3,
    ),
    UserInfoModel(
      name: 'Tharwat Samy',
      email: 'tharwat@gmail.com',
      image: Assets.imagesAvatar1,
    ),
    UserInfoModel(
      name: 'Tharwat Samy',
      email: 'tharwat@gmail.com',
      image: Assets.imagesAvatar2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return
    ///TODO: use this solution if the number of children is limited.
      SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: userList
              .map((e) => IntrinsicWidth(
                    child: UserInfoListTile(userInfoModel: e),
                  ))
              .toList()),
    );

    ///TODO:this solution if I have to use listview horizontally and the height is given based on the height of the children by simple calculation.
    ///TODO: tip you will need to use listview.builder if the number of children is high.
    //   SizedBox(
    //   height: 85,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: userList.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(
    //           userInfoModel: userList[index],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
