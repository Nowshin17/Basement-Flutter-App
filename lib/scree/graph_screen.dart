import 'package:basement_app/widgets/custom_AppBar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'custom_spine_graph_list.dart';

class GraphScreen extends StatelessWidget {
  const GraphScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appBarTitle: 'Spline Chart'),
      body: Card(
        elevation: 4,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                child: SfCartesianChart(
                  title: ChartTitle(text: 'Spline Chart'),
                  primaryXAxis: CategoryAxis(
                      labelRotation: -90, labelAlignment:
                       LabelAlignment.start),
                  primaryYAxis: NumericAxis(
                    interval: 2,
                  ),
                  series: splineSeriesList,
                  trackballBehavior: TrackballBehavior(
                    enable: true,
                    tooltipSettings: const InteractiveTooltip(
                      enable: true,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  const SizedBox(width: 25),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Submitted",
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Collected",
                  ),
                ],
              )

              // SizedBox(height: 20),
              // Container(
              //   height: 300,
              //   child: SfCartesianChart(
              //     title: ChartTitle(text: 'Spline Chart 2'),
              //     primaryXAxis: CategoryAxis(),
              //     series: <ChartSeries>[
              //       SplineSeries<SalesData, String>(
              //         dataSource: <SalesData>[
              //           SalesData('Jan', 42),
              //           SalesData('Feb', 38),
              //           SalesData('Mar', 45),
              //           SalesData('Apr', 40),
              //           SalesData('May', 48),
              //         ],
              //         xValueMapper: (SalesData sales, _) => sales.month,
              //         yValueMapper: (SalesData sales, _) => sales.sales,
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class SalesData {
  final String month;
  final double sales;

  SalesData(this.month, this.sales);
}
