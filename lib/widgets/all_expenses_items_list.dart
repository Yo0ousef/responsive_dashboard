import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_medel.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemsList extends StatefulWidget {
  const AllExpensesItemsList({super.key});

  @override
  State<AllExpensesItemsList> createState() => _AllExpensesItemsListState();
}

class _AllExpensesItemsListState extends State<AllExpensesItemsList> {
  final items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        price: r'$20,129',
        date: 'April 2022'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        price: r'$20,129',
        date: 'April 2022'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        price: r'$20,129',
        date: 'April 2022'),
  ];
   int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: items.asMap().entries.map((e) {
          int index = e.key;
          var item = e.value;
          if (index == 1) {
            return Expanded(
              child: GestureDetector(
                onTap: (){
                  updateIndex(index);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: AllExpensesItem(
                    itemModel: item,
                    isActive: selectedIndex == index,
                  ),
                ),
              ),
            );
          } else {
            return Expanded(
              child: GestureDetector(
                  onTap: (){
                    updateIndex(index);
                  },
                  child: AllExpensesItem(
                itemModel: item,
                isActive: selectedIndex == index,
              )),
            );
          }
        }).toList(),
      ),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
