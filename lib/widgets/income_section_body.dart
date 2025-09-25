import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/detailed_income_chart.dart';

import '../utils/size_config.dart';
import 'income_chart.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= SizeConfig.desktop && width < 1400
        ? Expanded(child: DetailedIncomeChart())
        : Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: SizedBox()),
              Expanded(flex: 6, child: IncomeChart()),
              Expanded(child: SizedBox()),
              Expanded(flex:6, child: IncomeDetails()),
              Expanded(child: SizedBox()),
            ],
          );
    Row(
      children: [
        Expanded(child: IncomeChart()),
        Expanded(child: IncomeDetails()),
      ],
    );
  }
}
