import 'package:basement_app/scree/calender_screen.dart';
import 'package:basement_app/scree/step_pages_screen.dart';
import 'package:flutter/material.dart';
class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {

  List<Widget> pages = const [
    CalenderScreen(),
    StepPagesScreen(),
  ];

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body:  pages[currentIndex],
      bottomNavigationBar: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 90,
        ),
        child: Container(
          margin: const EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 8),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            border: Border.all(color: const Color(0XFFEEDDFF)),
            boxShadow: const [
              BoxShadow(color: Color(0XFFEEDDFF), spreadRadius: 0, blurRadius: 3),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.green,
              fixedColor: Colors.grey,
              items: const [
                BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Icon(
                      Icons.calendar_today,
                    ),
                    activeIcon: Icon(Icons.calendar_today,
                        // color: Color(0xFF004c4c),
                        color: Colors.black),
                    label: ""),
                BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Icon(
                      Icons.library_books,
                      // size: 25,
                    ),
                    activeIcon: Icon(Icons.library_books,
                        // color: Color(0xFF004c4c),
                        color: Colors.black),
                    label: ""),

              ],
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ),
      ),
      ),
    );
  }


}
