import 'dart:io';
import 'package:basement_app/screen/riverpod/registrationProvider.dart';
import 'package:basement_app/screen/steeper_page/Test1.dart';
import 'package:basement_app/screen/steeper_page/Test2.dart';
import 'package:basement_app/screen/steeper_page/Test3.dart';
import 'package:checkbox_grouped/checkbox_grouped.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../scree/data_table_widget.dart';
import '../functions/library.dart';
import '../utils/assets/assets.dart';
import '../utils/constant/textConstant/String_constant.dart';
import '../utils/constant/widgetConstant/constant.dart';
import '../widgets/Custom_date_picker.dart';
import '../widgets/customIconTextLabelButton.dart';
import '../widgets/customPercentageIndicator.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/custom_card_using_builder.dart';
import '../widgets/custom_form_titile_label.dart';
import '../widgets/custom_phone_country_code.dart';
import '../widgets/custom_radio_button.dart';
import '../widgets/custom_reuseable_label_check_box.dart';
import '../widgets/custom_search_dropdown.dart';
import '../widgets/custom_search_dropdown_with_model.dart';
import '../widgets/custom_text_field_widgets.dart';
import '../widgets/question_button.dart';
import '../widgets/showDialog.dart';
import '../widgets/time_picker_with_text_field.dart';

class DashBoard extends ConsumerStatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  DashBoardState createState() => DashBoardState();
}

class DashBoardState extends ConsumerState<DashBoard> {
  TextEditingController phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isCheckedReminer = false;
  List<DropDownOptions> usr2 = [
    DropDownOptions("10", "200"),
    DropDownOptions("2", "400"),
    DropDownOptions("40", "600")
  ];
  final _pageViewController = PageController();
  GroupController multipleCheckController = GroupController(
    isMultipleSelection: true,
  );
  Map x = {};
  List<String> Test = [
    "Test1",
    "Test2",
    "Test3",
    "Test4",
    "Test5",
  ];

  /// image picker code start
  late File imageFile;
  // int imageFileInitialized = 0;
  bool _load = false;

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    _cropImage(pickedFile?.path);

    // if (pickedFile != null) {
    //   // File imageFile = File(pickedFile.path);
    //   log(pickedFile.path);
    //
    //   // final bytes = await File(pickedFile.path).readAsBytesSync();
    //   // String img64 = base64Encode(bytes);
    //
    //   // log(img64);
    //
    //   setState(() {
    //     imageFile = File(pickedFile.path);
    //     _load = true;
    //   });
    // }
  }

  _cropImage(filePath) async {
    CroppedFile? croppedImage = await ImageCropper().cropImage(
      sourcePath: filePath,
      aspectRatio: const CropAspectRatio(ratioX: 1.0, ratioY: 1.0),
      aspectRatioPresets: [CropAspectRatioPreset.square],
      compressFormat: ImageCompressFormat.png,
    );

    if (croppedImage != null) {
      imageFile = File(croppedImage.path);
      setState(() {
        _load = true;
      });
    }
  }

  _getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    _cropImage(pickedFile?.path);

    // if (pickedFile != null) {
    //   // File imageFile = File(pickedFile.path);
    //   setState(() {
    //     imageFile = File(pickedFile.path);
    //     _load = true;
    //   });
    // }
  }

  /// image picker code end
  TextEditingController testController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var registrationProviderInstance = ref.watch(registrationProvider);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Center(
                child: Column(
                  children: [
                    const CustomTextField(
                      labelName: 'Name',
                      textInputType: TextInputType.text,
                      readOnly: false,
                    ),

                    CustomButton(
                      onPressed: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 15),
                        child: const Text("Save"),
                      ),
                    ),
                    shortVerticalGap(),
                    CustomSearchDropDown(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null) {
                          return 'Select Contact Person';
                        }
                        return null;
                      },
                      onSelected: (String value) {},
                      selectedItem: "Test1",
                      searchBox: false,
                      title: "Test Title",
                      items: const [
                        "Test1",
                        "Test2",
                        "Test3",
                        "Test4",
                        "Test5",
                      ],
                    ),
                    shortVerticalGap(),
                    const CustomPercentageIndicator(
                      percentage: 1,
                    ),
                    shortVerticalGap(),
                    QuestionButton(
                      questionString: 'Do you want to test?',
                      buttonString: 'Yes Test',
                      buttonPress: () {},
                    ),
                    shortVerticalGap(),
                    const CustomCardListForNotification(
                      dataLists: [
                        "Test1",
                        "Test2",
                        "Test3",
                        "Test4",
                        "Test5",
                      ],
                    ),
                    shortVerticalGap(),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CustomRadio(
                            onChange:
                                registrationProviderInstance.controllChange,
                            radioButtonContainerHeight: 50,
                            radiobButtonActiveColor: Colors.indigo,
                            radioButtonGroupValue:
                                registrationProviderInstance.genderTypeValue,
                            radioButtonValue: 'Male',
                            radioButtonLebelText: 'Male',
                            fontSize: 16,
                          ),
                          CustomRadio(
                            onChange:
                                registrationProviderInstance.controllChange,
                            radioButtonContainerHeight: 50,
                            radiobButtonActiveColor: Colors.indigo,
                            radioButtonGroupValue:
                                registrationProviderInstance.genderTypeValue,
                            radioButtonValue: 'Female',
                            radioButtonLebelText: 'Female',
                            fontSize: 16,
                          ),
                          CustomRadio(
                            onChange:
                                registrationProviderInstance.controllChange,
                            radioButtonContainerHeight: 50,
                            radiobButtonActiveColor: Colors.indigo,
                            radioButtonGroupValue:
                                registrationProviderInstance.genderTypeValue,
                            radioButtonValue: 'Others',
                            radioButtonLebelText: 'Others',
                            fontSize: 16,
                          ),
                          CustomRadio(
                            onChange:
                                registrationProviderInstance.controllChange2,
                            radioButtonContainerHeight: 50,
                            radiobButtonActiveColor: Colors.indigo,
                            radioButtonGroupValue:
                                registrationProviderInstance.genderTypeValue1,
                            radioButtonValue: 'Test1',
                            radioButtonLebelText: 'Test',
                            fontSize: 16,
                          ),
                        ],
                      ),
                    ),
                    shortVerticalGap(),
                    IconTextLabelButton(
                      buttonPress: () {},
                      buttonLabel: loginWithMobile,
                      buttonIcon: Image.asset(
                        Assets.phoneButtonIcon,
                        scale: 3,
                      ),
                    ),
                    const CustomFormLabel(
                      label: 'Mobile Number',
                      isMandatory: false,
                    ),
                    shortVerticalGap(),
                    PhoneNumberWithCountry(
                      title: 'Phone',
                      controller: phoneController,
                    ),
                    LabeledCheckbox(
                      padding: const EdgeInsets.only(top: 10),
                      value: isCheckedReminer,
                      onChanged: (bool value) {
                        setState(() {
                          isCheckedReminer = value;
                        });
                      },
                      label: const CustomFormLabel(
                        label: "Reminder",
                        isMandatory: false,
                      ),
                    ),
                    SimpleGroupedCheckbox(
                      isLeading: true,
                      groupTitleAlignment: Alignment.topRight,
                      controller: multipleCheckController,
                      itemsTitle:
                          List.generate(Test.length, (index) => Test[index]),
                      values:
                          List.generate(Test.length, (index) => Test[index]),
                      groupStyle: GroupStyle(
                          activeColor: Colors.grey,
                          groupTitleStyle: boldNormalTextStyle),
                      groupTitle: "Test",
                      checkFirstElement: false,
                      helperGroupTitle: true,
                      onItemSelected: (data) {
                        print(data);
                      },
                      isExpandableTitle: true,
                    ),
                    CustomButton(
                      onPressed: () {
                        Library.createSnackBar("It is tested", context);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 15),
                        child: const Text("Test Snakbar"),
                      ),
                    ),
                    CustomButton(
                      onPressed: () {
                        customToast(
                            message: 'This section is under construction.',
                            textColor: Colors.white,
                            backgroundColor: Colors.red);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 15),
                        child: const Text("Test Snakbar"),
                      ),
                    ),
                    CustomSearchDropDownModel(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null) {
                            return 'Need to select a value';
                          }
                          return null;
                        },
                        onSelected: (String value) {
                          print(value);
                        },
                        // selectedItem: usr2[2],
                        searchBox: true,
                        title: "Select one",
                        items: usr2),

                    /// adding image picker from file and camera
                    _load == false
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset('assets/Images/background.jpg'),
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.file(imageFile,
                                width: 200, height: 200, fit: BoxFit.fill),
                          ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                              icon: Image.asset('assets/Images/gallery.jfif'),
                              iconSize: 50,
                              onPressed: () {
                                // log("sdfsdf");
                                _getFromGallery();
                              }),
                          IconButton(
                              icon: Image.asset('assets/Images/camera.jfif'),
                              iconSize: 50,
                              onPressed: () {
                                // log("sdfsdf");
                                _getFromCamera();
                              }),
                        ]),

                    /// adding page steeper
                    SizedBox(
                      height: 300,
                      child: PageView(
                          controller: _pageViewController,
                          children: const [Page1(), Page2(), Page3()]),
                    ),
                    shortVerticalGap(),
                    SmoothPageIndicator(
                        controller: _pageViewController, // PageController
                        count: 3,
                        effect: WormEffect(), // your preferred effect
                        onDotClicked: (index) {}),
                    shortVerticalGap(),
                    CustomTimePicker(),
                    shortVerticalGap(),
                    CustomDatePicker(
                      contactTracker: false,
                      TextLebel: "Test date picker",
                      onTap: (DateTime formattedDate) {
                        setState(
                          () {
                            String pickDate =
                                DateFormat('yyyy-MM-dd').format(formattedDate);
                            testController.text = pickDate;
                          },
                        );
                      },
                      Controller: testController,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1998),
                      lastDate: DateTime(2045),
                    ),
                    shortVerticalGap(),
                    CustomFormLabel(
                      label: 'Test validation',
                      isMandatory: false,
                    ),
                    CustomButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 15),
                        child: const Text("Test Validation"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
