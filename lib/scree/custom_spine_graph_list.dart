import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'graph_screen.dart';

List<SplineSeries<SalesData, String>> splineSeriesList = [
  SplineSeries<SalesData, String>(
    dataSource: <SalesData>[
      SalesData('2020H2', 0),
      SalesData('2021H1', 10),
      SalesData('2021H2', 4),
      SalesData('2022H1', 15),
      SalesData('2022H2', 3),
    ],
    xValueMapper: (SalesData sales, _) => sales.month,
    yValueMapper: (SalesData sales, _) => sales.sales,
    dataLabelSettings: const DataLabelSettings(isVisible: true),
    color: Colors.blue,
  ),
  SplineSeries<SalesData, String>(
    dataSource: <SalesData>[
      SalesData('2020H2', 13.1),
      SalesData('2021H1', 7.3),
      SalesData('2021H2', 7.4),
      SalesData('2022H1', 15.8),
      SalesData('2022H2', 5),
    ],
    xValueMapper: (SalesData sales, _) => sales.month,
    yValueMapper: (SalesData sales, _) => sales.sales,
    dataLabelSettings: const DataLabelSettings(isVisible: true),
    color: Colors.red,
  ),
];
