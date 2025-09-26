import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  int touchedSection = -1;

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          touchedSection =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          title: touchedSection == 0 ?'Design service': '40%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(color: touchedSection == 0? Colors.black: Colors.white),
          titlePositionPercentageOffset: touchedSection == 0 ? -2 : null,
          value: 40,
          color: Color(0xff208CC8),
          radius: touchedSection == 0 ? 50 : 40,
        ),
        PieChartSectionData(
          title: touchedSection == 1 ?'Design Product': '20%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(color: touchedSection == 1? Colors.black: Colors.white),
          titlePositionPercentageOffset: touchedSection == 1 ? -2 : null,
          value: 25,
          color: Color(0xff4EB7F2),
          radius: touchedSection == 1 ? 50 : 40,
        ),
        PieChartSectionData(
          title: touchedSection == 2 ?'Product royalty': '22%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(color: touchedSection == 2? Colors.black: Colors.white),
          titlePositionPercentageOffset: touchedSection == 2 ? -2 : null,
          value: 22,
          color: Color(0xff064061),
          radius: touchedSection == 2 ? 50 : 40,
        ),
        PieChartSectionData(
          title: touchedSection == 3 ?'Other': '20%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(color: touchedSection == 3? Colors.black: Colors.white),
          titlePositionPercentageOffset: touchedSection == 3 ? -2 : null,
          value: 20,
          color: Color(0xffE2DECD),
          radius: touchedSection == 3 ? 50 : 40,
        ),
      ],
    );
  }
}
