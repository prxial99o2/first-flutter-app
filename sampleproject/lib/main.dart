import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sampleproject/goal.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:sampleproject/piechart.dart';
import 'package:sampleproject/dashboard2.dart';
//import 'dart:math';

void main() =>
    runApp(MaterialApp(home: Page1(), routes: <String, WidgetBuilder>{
      '/AddGoal': (context) => AddGoalTask(),
    }));

class Page1 extends StatelessWidget {
  //final data = [55.0, 90.0, 50.0, 40.0, 35.0, 55.0, 70.0, 100.0];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              width: double.infinity,
              child: Row(
                children: [
                  ///Container for Content
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(32),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello, User1 !",
                              style: TextStyle(
                                  fontSize: 18,
                                  height: 1.2,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.blueGrey[300]),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(children: [
                              ///Text
                              Text(
                                'DASHBOARD',
                                style: TextStyle(
                                  fontSize: 40,
                                  height: 1.2,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey[800],
                                ),
                              ),

                              Spacer(),

                              IconButton(
                                icon: Icon(Icons.navigate_next),
                                onPressed: () {
                                  Navigator.of(context)
                                      .push(_createThirdRoute());
                                },
                              ),
                            ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                new CircularPercentIndicator(
                                  radius: 160.0,
                                  lineWidth: 16.0,
                                  animation: true,
                                  percent: 0.8,
                                  center: new Text(
                                    "80.0%",
                                    style: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  footer: new Text(
                                    " Achieved Goal",
                                    style: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.0),
                                  ),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: Colors.purple,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  child: Text('Details'),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.purple),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).push(_createRoute());
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 200.0,
                                  height: 200.0,
                                  child: SimplePieChart.withSampleData(),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Income anaylsis',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.0),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  child: Text('Details'),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.purple),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(_createSecondRoute());
                                  },
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ),
                ],
              ))),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => AddGoalTask(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

class SimplePieChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimplePieChart(this.seriesList, {this.animate});

  factory SimplePieChart.withSampleData() {
    return new SimplePieChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.PieChart(seriesList, animate: animate);
  }

  static List<charts.Series<GaugeSegment, String>> _createSampleData() {
    //final random = new Random();

    final data = [
      new GaugeSegment('Low', 20, charts.MaterialPalette.yellow.shadeDefault),
      new GaugeSegment(
          'Acceptable', 50, charts.MaterialPalette.deepOrange.shadeDefault),
      new GaugeSegment('High', 50, charts.MaterialPalette.pink.shadeDefault),
      new GaugeSegment(
          'Highly Unusual', 10, charts.MaterialPalette.cyan.shadeDefault),
    ];

    return [
      new charts.Series<GaugeSegment, String>(
        id: 'Segments',
        domainFn: (GaugeSegment segment, _) => segment.segment,
        measureFn: (GaugeSegment segment, _) => segment.size,
        colorFn: (GaugeSegment segment, _) => segment.color,
        data: data,
      )
    ];
  }
}

class GaugeSegment {
  final String segment;
  final int size;
  final charts.Color color;

  GaugeSegment(this.segment, this.size, this.color);
}

Route _createSecondRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => PieChartS(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

Route _createThirdRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => DashboardTwo(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
