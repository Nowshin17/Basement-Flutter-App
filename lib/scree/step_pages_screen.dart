import 'package:basement_app/widgets/custom_AppBar.dart';
import 'package:flutter/material.dart';

import '../model/step_of_content.dart';
import '../widgets/custom_stepper.dart';

class StepPagesScreen extends StatefulWidget {
  const StepPagesScreen({Key? key}) : super(key: key);

  @override
  State<StepPagesScreen> createState() => _StepPagesScreenState();
}

class _StepPagesScreenState extends State<StepPagesScreen> {
  final int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          appBarTitle: 'StepPages Widget',
        ),
        body:   CustomStepper(
          type: stepperType,
          physics: const AlwaysScrollableScrollPhysics(),
          currentStep: _currentStep,

          steps: [
            for (var item in listOfStepContent) ...[
              Step(
                  title: Text(
                    item.title,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  content: Column(
                    children: [
                      Text(
                        item.details,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Time : ${item.time}",
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )
                    ],
                  ),
                  isActive: true,
                  state: StepState.indexed),
            ]
          ],
        ),
      ),
    );
  }
}
