import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_medel.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel});
final AllExpensesItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: itemModel.image,),
          SizedBox(height: 34,),
          Text(itemModel.title,style: AppStyles.styleMedium16,),
          SizedBox(height: 8,),
          Text(itemModel.date,style: AppStyles.styleRegular14,),
          SizedBox(height: 16,),
          Text(itemModel.price,style: AppStyles.styleSemiBold24,),

        ],
      ),
    );
  }
}
