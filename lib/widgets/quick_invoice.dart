import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/latest_transation_listview.dart';
import 'package:responsive_dashboard/widgets/quick_invoive_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24,),
          LatestTransactionListView(),
        ],
      ),
    );
  }
}

