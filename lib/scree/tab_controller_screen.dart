import 'package:flutter/material.dart';

class TabControllerScreen extends StatefulWidget {
  const TabControllerScreen({Key? key}) : super(key: key);

  @override
  State<TabControllerScreen> createState() => _TabControllerScreenState();
}

class _TabControllerScreenState extends State<TabControllerScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  color: Colors.green,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Tab Controller",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TabBar(
                        controller: tabController,
                        tabs: const [
                          Tab(
                            icon: Icon(Icons.directions_car),
                            text: "Buss",
                          ),
                          Tab(
                            icon: Icon(Icons.directions_transit),
                            text: "Train",
                          ),
                          Tab(
                            icon: Icon(Icons.directions_bike),
                            text: "BiCycle",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
          body: TabBarView(
            controller: tabController,
            children: const [
              Icon(Icons.flight, size: 350),
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.directions_car, size: 350),
            ],
          ),
        ),
      ),
    );
  }
}
