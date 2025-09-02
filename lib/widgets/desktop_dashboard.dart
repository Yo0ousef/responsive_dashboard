import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/my_cards_and_transaction_history_section.dart';

import 'income_section.dart';

class DesktopDashboard extends StatelessWidget {
  const DesktopDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: Column(
            children: [
              SizedBox(height: 40,),
              MyCardsAndTransactionHistorySection(),
              SizedBox(height: 24,),
              Expanded(
                child: IncomeSection(),
                // child: MyCardsAndTransactionHistorySection(),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 24,
        ),

      ],
    );
  }
}
