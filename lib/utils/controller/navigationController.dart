import 'package:flutter/cupertino.dart';

class NavigationController {
  static Map<String, Widget Function(BuildContext)> projectRouts = {
    // '/landingPage': (context) => const LandingScreen(),
    // '/registration': (context) => const Registration(),
    // '/login': (context) => const EmailLoginScreen(),
    // '/signUp': (context) => const SignUpPage(),
    // '/percentageProgressIndicator': (context) =>
    //     const PercentageProgressIndicatior(),
    // '/successfullyDone': (context) => const SuccessfullyDone(),
    // '/notificationPage': (context) => const NotificationPage(),
  };

  static navigateWithValidate(BuildContext context, String route) {
    print("calling routing function");
    Navigator.pushNamed(context, route);
  }
}
