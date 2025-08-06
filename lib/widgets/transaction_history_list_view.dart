


import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
static const items = [
  TransactionModel(title: 'Cash Withdrawal', date: '13 Apr, 2022 at 2:29 PM', amount: r'$20,129', isWithdrawal: true),
  TransactionModel(title: 'Landing Page project', date: '13 Apr, 2022 at 3:30 PM', amount: r'$229', isWithdrawal: false),
  TransactionModel(title: 'Juni Mobile App project', date: '13 Apr, 2022 at 6:50 PM', amount: r'$2,000', isWithdrawal: false),
];
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context , index){
      return TransactionItem(transactionModel: items[index]);
    });
  }
}
