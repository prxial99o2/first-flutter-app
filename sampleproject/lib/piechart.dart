import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sampleproject/indicator.dart';

class PieChartS extends StatefulWidget {
  @override
  _PieChartState createState() => _PieChartState();
}

class _PieChartState extends State<PieChartS> {
  int _touchedIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        color: Colors.grey[200],
      ),
      margin: EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            width: 250,
            // Pie Chart is available in fl_chart package
            child: PieChart(
              PieChartData(
                borderData: FlBorderData(show: false),
                centerSpaceRadius: 50.0,
                sectionsSpace: 0.0,
                startDegreeOffset: 30,
                // actual curves and data come from this function result.
                sections: _buildPieChartCurves(),
                // This is to make chart interactive when someone touch
                pieTouchData: PieTouchData(
                  touchCallback: (pieTouchResponse) {
                    setState(() {
                      if (pieTouchResponse.touchInput is FlLongPressEnd ||
                          pieTouchResponse.touchInput is FlPanEnd) {
                        _touchedIndex = -1;
                      } else {
                        _touchedIndex = pieTouchResponse.touchedSectionIndex;
                      }
                    });
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 100),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IndicatorWidget(
                    title: 'Promoting',
                    subtitle: '40%/Rm29,9000',
                  ),
                  IndicatorWidget(
                    title: 'Trading',
                    subtitle: '20.7%/RM19,000',
                  ),
                  IndicatorWidget(
                    title: 'Investment',
                    subtitle: '10%/RM12,000',
                  ),
                  IndicatorWidget(
                    title: 'Buy Sell',
                    subtitle: '29.3%/RM25,500',
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // Here we will show different type of graph on different scenario touch and non touch
  List<PieChartSectionData> _buildPieChartCurves() {
    return List.generate(4, (i) {
      final isTouched = i == _touchedIndex;
      // Increase the radius of section when touched.
      final double radius = isTouched ? 60 : 50;

      // Ideally this data come from API and then returned, or you can modify it any way as per the data arranged in your app :)
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Color(0xffF3BBEC),
            value: 40.00,
            title: '40.0', // this cannot be left blank
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            color: Color(0xff39439f),
            value: 20.70,
            title: '20.7', // this cannot be left blank
            radius: radius,
          );
        case 2:
          return PieChartSectionData(
            color: Color(0xff00ffff),
            value: 10.00,
            title: '10.0', // this cannot be left blank
            radius: radius,
          );

        case 3:
          return PieChartSectionData(
            color: Color(0xff888888),
            value: 29.30,
            title: '29.3', // this cannot be left blank
            radius: radius,
          );

        default:
          return null;
      }
    });
  }
}
