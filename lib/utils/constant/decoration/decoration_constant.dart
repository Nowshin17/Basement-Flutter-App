import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//
import '../../assets/assets.dart';
import '../colors/color.dart';

// import '../../all_imports.dart';
const backgroundGradient = BoxDecoration(
  gradient: LinearGradient(
    colors: [Color(0xFFF4F6F9), Color(0xFFF4F6F9)],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  ),
);
const buttonTextStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 15, fontFamily: "Poppins");
const questionTextStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 17, fontFamily: "Poppins");
const textButtonStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: Color(0xFF000000),
    fontFamily: "Poppins");
const textFieldHint = TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 20,
    color: Colors.black54,
    fontWeight: FontWeight.w700);
const cardTextStyle = TextStyle(
    fontSize: 16, color: Color(0xFF394452), fontWeight: FontWeight.w500);
const notificationTextStyle = TextStyle(
    fontSize: 16,
    color: Color(0xFF394452),
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins");
const dateTextStyle = TextStyle(
    fontSize: 12,
    color: Color(0xFFA5ABB3),
    fontWeight: FontWeight.w500,
    fontFamily: "Poppins");
const double loginTextFieldButtonHeight = 50;
const verificationLabelStyle = TextStyle(
  color: Colors.black,
  fontSize: 25,
);
const drawerTextStyle =
    TextStyle(fontSize: 17, color: Color(0xFF394452), fontFamily: "Inter");
const orText = Text(
  "Or",
  style: TextStyle(fontSize: 17, color: Color(0xFFA5ABB3), fontFamily: "Inter"),
);
const spaceBetweenOrText = SizedBox(
  height: 14,
);
const spaceBetweenIconAndTextField = SizedBox(
  height: 30,
);
const questionButtonTextStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 17, fontFamily: "Poppins");
const loginOrSignUpTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: loginOrSignUpColor,
    fontFamily: "Poppins");
const spaceBetweenLoginOrSignUpAndTextField = SizedBox(
  height: 25,
);
const spaceBetweenLoginOrSignUpAndIcon = SizedBox(
  height: 50,
);
const spaceBetweenProgressAndText = SizedBox(
  height: 10,
);
const bottomNavbarTextStyle = TextStyle(
  fontSize: 15,
  color: Color(0xFF858C94),
);
final btrcLogoWithText = Image.asset(Assets.registrationIcon, fit: BoxFit.fill);
final successfullyDoneImage =
    Image.asset(Assets.successfullyDone, fit: BoxFit.fill);
const progressIndicatorTextStyle = TextStyle(
    fontSize: 18,
    color: percentageProgressIndicatorTextCorlor,
    fontWeight: FontWeight.bold);
const successfullyDoneBottomText = Text(
  "Successfully Done",
  style:
      TextStyle(fontSize: 16, fontFamily: "Poppins", color: Color(0xFF06C270)),
);
final landingPageTitle = Row(
  children: [
    Image.asset(
      scale: 3,
      Assets.btrcOnlyLogo,
      fit: BoxFit.fill,
    ),
    const SizedBox(
      width: 20,
    ),
    const Text(
      "Bangladesh Telecommunication\n Regulatory Commission",
      style: TextStyle(
        color: Color(0xFF053E1A),
        fontSize: 13,
      ),
    ),
  ],
);
