import 'package:basement_app/constants/route_constants.dart';
import 'package:basement_app/scree/dashboard_card.dart';
import 'package:basement_app/widgets/custom_AppBar.dart';
import 'package:basement_app/widgets/user_drawer.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          appBarTitle: "All Widget",
        ),
        drawer: const UserDrawer(),
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 16 / 9,
          ),
          padding: const EdgeInsets.all(10),
          children: [
            DashBoardCard(
              title: "DataTable",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteConstantName.dataTableScreen,
                );
              },
            ),
            DashBoardCard(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteConstantName.formValidationScreen,
                );
              },
              title: "Form Validation",
            ),
            DashBoardCard(
              title: "Tab Controller",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteConstantName.tabControllerScreen,
                );
              },
            ),
            DashBoardCard(
              title: "Image Crop",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteConstantName.imageCropScreen,
                );
              },
            ),
            DashBoardCard(
              title: "Radio Button",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteConstantName.radioButtonScreen,
                );
              },
            ),
            DashBoardCard(
              title: "CheckBox",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteConstantName.checkBoxScreen,
                );
              },
            ),
            DashBoardCard(
              title: "Calender",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteConstantName.calenderScreen,
                );
              },
            ),
            DashBoardCard(
              title: "Date Time ",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteConstantName.dateTimeScreen,
                );
              },
            ),
            DashBoardCard(
              title: "Toast & SnackBar ",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteConstantName.toastSnackBarScreen,
                );
              },
            ),
            DashBoardCard(
              title: "Step pages",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteConstantName.stepPagesScreen,
                );
              },
            ),
            DashBoardCard(
              title: "Dropdown list",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteConstantName.dropdownListScreen,
                );
              },
            ),

            DashBoardCard(
              title: "Dropdown list",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteConstantName.dropdownListScreen,
                );
              },
            ),

            DashBoardCard(
              title: "Bottom NavBar",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteConstantName.bottomNavBarScreen,
                );
              },
            ),

            DashBoardCard(
              title: "Dialog",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteConstantName.dialogScreen,
                );
              },
            ),


            DashBoardCard(
              title: "Curve Nav Bar",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteConstantName.bottomAppBarScreen,
                );
              },
            ),
            DashBoardCard(
              title: "Local DB",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteConstantName.localDbScreen,
                );
              },
            ),
            DashBoardCard(
              title: "Graph",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteConstantName.graphScreen,
                );
              },
            ),
            // Dropdown list
          ],
        ),
      ),
    );
  }
}
