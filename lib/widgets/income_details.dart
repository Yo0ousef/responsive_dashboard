import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_details_model.dart';
import 'package:responsive_dashboard/widgets/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    IncomeDetailsModel(
      value: '%40',
      title: 'Design service',
      color: Color(0xff208CC8),
    ),
    IncomeDetailsModel(
      value: '%25',
      title: 'Design product',
      color: Color(0xff4EB7F2),
    ),
    IncomeDetailsModel(
      value: '%22',
      title: 'Product royalti',
      color: Color(0xff064061),
    ),
    IncomeDetailsModel(
      value: '%20',
      title: 'Other',
      color: Color(0xffE2DECD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: items.map((e)=>IncomeDetailsItem(incomeDetailsModel: e)).toList(),);
    // return ListView.builder(
    //     shrinkWrap: true,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IncomeDetailsItem(incomeDetailsModel: items[index]);
    //     });
  }
}
