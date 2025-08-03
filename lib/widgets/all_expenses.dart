import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          AllExpensesHeader(),
        ],
      ),
    );
  }
}

