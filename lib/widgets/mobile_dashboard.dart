

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoice_section.dart' show AllExpensesAndQuickInvoiceSection;
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_cards_and_transaction_history_section.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 8, right: 8,bottom: 10),
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 20,),
          MyCardsAndTransactionHistorySection(),
          SizedBox(height: 20,),
          IncomeSection()
        ],
      ),
    );
  }
}
