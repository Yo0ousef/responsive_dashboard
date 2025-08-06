

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData());
  }
int touchedSection = -1;
  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0,pieTouchResponse){
       touchedSection =   pieTouchResponse?.touchedSection?.touchedSectionIndex ??-1;
       setState(() {

       });
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          value: 40,
          color: Color(0xff208CC8),
          radius:touchedSection ==0 ? 50: 40,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 25,
          color: Color(0xff4EB7F2),
          radius:touchedSection ==1 ? 50: 40,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 22,
          color: Color(0xff064061),
          radius:touchedSection ==2 ? 50: 40,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 20,
          color: Color(0xffE2DECD),
          radius:touchedSection ==3 ? 50: 40,
          showTitle: false,
        ),
      ],
    );
  }
}
