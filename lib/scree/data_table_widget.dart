import 'package:basement_app/widgets/custom_AppBar.dart';
import 'package:flutter/material.dart';

import '../model/store_data_model.dart';

class CustomTable extends StatelessWidget {
  const CustomTable({super.key});



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          appBarTitle: "Data Table",
        ),
        body: FittedBox(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width - 10),
            child: DataTable(
              columns: const [
                DataColumn(
                  label: Text('sl'),
                ),
                DataColumn(
                  label: Text('Data'),
                ),
                DataColumn(
                  label: Text('Timestamp'),
                ),
              ],
              rows: storeData
                  .map(
                    (element) => DataRow(cells: [
                      DataCell(
                        Text(
                          element.id.toString(),
                        ),
                      ),
                      DataCell(
                        Text(
                          element.storeValue.toString(),
                          maxLines: 5,
                        ),
                      ),
                      DataCell(
                        Text(
                          element.timestamp.toString().toString(),
                        ),
                      ),
                    ]),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}

List<StoreData> storeData = [
  StoreData(
    id: 1,
    storeValue: "Samu Chakraborty",
    timestamp: DateTime.now().toString(),
  ),
  StoreData(
    id: 1,
    storeValue: "Samu Chakraborty",
    timestamp: DateTime.now().toString(),
  ),
  StoreData(
    id: 2,
    storeValue: "Samu Chakraborty",
    timestamp: DateTime.now().toString(),
  ),
  StoreData(
    id: 2,
    storeValue: "Samu Chakraborty",
    timestamp: DateTime.now().toString(),
  ),
  StoreData(
    id: 3,
    storeValue: "Samu Chakraborty",
    timestamp: DateTime.now().toString(),
  ),
  StoreData(
    id: 4,
    storeValue: "Samu Chakraborty",
    timestamp: DateTime.now().toString(),
  ),
  StoreData(
    id: 5,
    storeValue: "Samu Chakraborty",
    timestamp: DateTime.now().toString(),
  ),
];
