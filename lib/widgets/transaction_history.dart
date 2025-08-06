import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/widgets/transaction_history_list_view.dart';

import '../utils/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 20),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16.copyWith(
            color: Color(0xffaaaaaa),
          ),
        ),
        TransactionHistoryListView(),

      ],
    );
  }
}
