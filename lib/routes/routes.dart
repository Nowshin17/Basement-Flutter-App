import 'package:basement_app/scree/local_databse_screen.dart';
import 'package:basement_app/scree/toast_snackBar_Screen.dart';
import 'package:flutter/material.dart';

import '../constants/route_constants.dart';
import '../scree/bottom_appbar_screen.dart';
import '../scree/bottom_navBar_screen.dart';
import '../scree/calender_screen.dart';
import '../scree/checkbox_screen.dart';
import '../scree/custom_dialog_widget.dart';
import '../scree/data_table_widget.dart';
import '../scree/date_time_screen.dart';
import '../scree/dropdown_list_screen.dart';
import '../scree/form_validation_screen.dart';
import '../scree/graph_screen.dart';
import '../scree/image_crop_screen.dart';
import '../scree/radio_button_screen.dart';
import '../scree/step_pages_screen.dart';
import '../scree/tab_controller_screen.dart';

class RouterGenerator {
  static Route<String>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstantName.dataTableScreen:
        return MaterialPageRoute(
          builder: (context) => const CustomTable(),
        );

      case RouteConstantName.formValidationScreen:
        return MaterialPageRoute(
          builder: (context) => const FormValidationScreen(),
        );

      case RouteConstantName.tabControllerScreen:
        return MaterialPageRoute(
          builder: (context) => const TabControllerScreen(),
        );

      case RouteConstantName.imageCropScreen:
        return MaterialPageRoute(
          builder: (context) => const ImageCropScreen(),
        );

      case RouteConstantName.radioButtonScreen:
        return MaterialPageRoute(
          builder: (context) => const RadioButtonScreen(),
        );
      case RouteConstantName.checkBoxScreen:
        return MaterialPageRoute(
          builder: (context) => const CheckBoxScreen(),
        );

      case RouteConstantName.calenderScreen:
        return MaterialPageRoute(
          builder: (context) => const CalenderScreen(),
        );

      case RouteConstantName.dateTimeScreen:
        return MaterialPageRoute(
          builder: (context) => const DateTimeScreen(),
        );

      case RouteConstantName.toastSnackBarScreen:
        return MaterialPageRoute(
          builder: (context) => const ToastSnackBarScreen(),
        );
      case RouteConstantName.stepPagesScreen:
        return MaterialPageRoute(
          builder: (context) => const StepPagesScreen(),
        );

      case RouteConstantName.dropdownListScreen:
        return MaterialPageRoute(
          builder: (context) => const DropdownListScreen(),
        );

      case RouteConstantName.bottomNavBarScreen:
        return MaterialPageRoute(
          builder: (context) => const BottomNavBarScreen(),
        );
      case RouteConstantName.dialogScreen:
        return MaterialPageRoute(
          builder: (context) => const DialogScreen(),
        );
      case RouteConstantName.bottomAppBarScreen:
        return MaterialPageRoute(
          builder: (context) => const BottomAppBarScreen(),
        );
      case RouteConstantName.localDbScreen:
        return MaterialPageRoute(
          builder: (context) => const LocalDatabaseScreen(),
        );
      case RouteConstantName.graphScreen:
        return MaterialPageRoute(
          builder: (context) => const GraphScreen(),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<String> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return const Scaffold(
        body: Center(
          child: Text('Page not found'),
        ),
      );
    });
  }
}
