import 'package:flutter/material.dart';

class TextThemeStyles {
  static TextStyle bbTextStyleReverse(BuildContext context) {
    return const TextStyle(
      color: Colors.white,
      fontSize: 14,
    );
  }

  TextStyle bbTextStyleReverseBold(BuildContext context) {
    return const TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle bbTextStyle16(BuildContext context) {
    return TextStyle(
      color: ThemeData().primaryColor,
      fontSize: 16,
    );
  }

  TextStyle bbTextStyle18(BuildContext context) {
    return const TextStyle(
      //color: Theme.of(context).primaryColor,
      fontSize: 16,
    );
  }

  TextStyle labelTextStyle(BuildContext context) {
    return const TextStyle(
      fontFamily: 'PT Sans',
      fontSize: 16,
     // color: Color(0xff666666),
      overflow: TextOverflow.ellipsis,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle bbTextStyle16Accent(BuildContext context) {
    return const TextStyle(
      //color: Colors.green,
      fontSize: 16,
    );
  }

  static TextStyle bbTextStyle18Bold(BuildContext context) {
    return const TextStyle(
     // color: ThemeData().primaryColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle bbHeading1(BuildContext context) {
    return const TextStyle(

        //color: Colors.white,
        fontSize: 18);
  }

  TextStyle bbLeading(BuildContext context) {
    return const TextStyle(
        //color: Colors.white,
        fontSize: 20);
  }

  TextStyle bbLeadingLink(BuildContext context) {
    return const TextStyle(
     // color: Colors.white,
      fontSize: 16,
    );
  }

  TextStyle buttonOfSetLocation(BuildContext context) {
    return const TextStyle(
     // color: Theme.of(context).primaryColor,
      fontSize: 18,
    );
  }

  static TextStyle appBarStyle(BuildContext context) {
    return const TextStyle(
      fontFamily: 'PT Sans',
      fontSize: 14,
     // color: Color(0xff444444),
    );
  }

  TextStyle bbRowStyle(BuildContext context) {
    return const TextStyle(
      fontFamily: 'PT Sans',
      fontSize: 14,
     // color: Color(0xff555555),
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle bbButtonReverse() {
    return const TextStyle(
      //color: Colors.white,
    );
  }

  TextStyle bbRowRight(BuildContext context) {
    return const TextStyle(
      fontFamily: 'PT Sans',
      fontSize: 16,
    //  color: Colors.white,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle bbSearchLocation(BuildContext context) {
    return const TextStyle(
      fontFamily: 'PT Sans',
      fontSize: 20,
     // color: Color(0xff444444),
    );
  }

  TextStyle bbStyle(BuildContext context) {
    return const TextStyle(
      fontFamily: 'PT Sans',
      fontSize: 16,
    //  color: Color(0xff555555),
    );
  }

  TextStyle bbLeadingFont(BuildContext context) {
    return const TextStyle(
      //  color: Color(0xff444444),
        textBaseline: TextBaseline.alphabetic,
        decoration: TextDecoration.underline,
        fontSize: 20);
  }
}

TextStyle labelTextStyleForSignUP =const  TextStyle(
    //color: Colors.grey.shade800,
    fontWeight: FontWeight.w700,
    fontSize: 18);

const bbTextStyle16Reverse = TextStyle(
 // color: Colors.white,
  fontSize: 16,
);

const bbTextStyle16Reverse_bold = TextStyle(
 // color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

const bbTextStyle16 = TextStyle(
 // color: Colors.blue,
  fontSize: 16,
);
const bbTextStyle16Bold = TextStyle(
 // color: Colors.blue,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);
const bbTextStyle16BoldBlack = TextStyle(
 // color: Colors.black,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);
const bbTextStyle16Black = TextStyle(
 // color: Colors.black,
  fontSize: 16,
);

const bbTextStyle18 = TextStyle(
 // color: Colors.blue,
  fontSize: 18,
);
const bbTextStyle18Bold = TextStyle(
 // color: Colors.blue,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
const bbSextStyle18BoldBlack = TextStyle(
 // color: Colors.black,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

 TextStyle labelTextStyle = const TextStyle(
  fontFamily: 'PT Sans',
  fontSize: 16,
 // color: Color(0xff666666),
  fontWeight: FontWeight.w700,
);

const bbtextstyle18Accent = TextStyle(
 // color: Colors.green,
  fontSize: 16,
);

const TextStyle bbHeading1 = TextStyle(

    //color: Colors.white,
    fontSize: 18);
const TextStyle bbLeading = TextStyle(
   // color: Colors.white,
    fontSize: 20);

const TextStyle bbLeadingLink = TextStyle(
   // color: Colors.blue,
    textBaseline: TextBaseline.alphabetic,
    decoration: TextDecoration.underline,
    fontSize: 20);

const TextStyle button_of_set_location =
    TextStyle(
       // color: Colors.blue,
        fontSize: 18);

const TextStyle appBarStyle = TextStyle(
  fontFamily: 'PT Sans',
  fontSize: 16,
 // color:  Colors.white,
);

const TextStyle bb_row_style = TextStyle(
  fontFamily: 'PT Sans',
  fontSize: 16,
 // color: const Color(0xff555555),
  fontWeight: FontWeight.w700,
);

const TextStyle bb_row_right = TextStyle(
  fontFamily: 'PT Sans',
  fontSize: 16,
 // color: Colors.white,
  fontWeight: FontWeight.w700,
);

const TextStyle bb_search_location = TextStyle(
  fontFamily: 'PT Sans',
  fontSize: 20,
 // color: const Color(0xff444444),
);

const TextStyle bb_style = TextStyle(
  fontFamily: 'PT Sans',
  fontSize: 16,
 // color: const Color(0xff555555),
);
const TextStyle bb_account_style = TextStyle(
  fontFamily: 'PT Sans',
  fontSize: 24,
 // color: const Color(0xff2a2a2a),
);
const TextStyle bb_account_style_20 = TextStyle(
    fontFamily: 'PT Sans',
    fontSize: 24,
   // color: Colors.blue,
    fontWeight: FontWeight.bold);
