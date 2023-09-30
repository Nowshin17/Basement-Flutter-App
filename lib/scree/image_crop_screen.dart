import 'dart:io';
import 'package:basement_app/widgets/custom_AppBar.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageCropScreen extends StatefulWidget {
  const ImageCropScreen({super.key});

  @override
  State<ImageCropScreen> createState() => _ImageCropScreenState();
}

class _ImageCropScreenState extends State<ImageCropScreen> {
  late File imageFile;

  bool _load = false;

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    _cropImage(pickedFile?.path);
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
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          appBarTitle: "Image Crop Screen",
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              IconButton(
                icon: Image.asset('assets/Images/gallery.jfif'),
                iconSize: 50,
                onPressed: () {
                  _getFromGallery();
                },
              ),
              IconButton(
                icon: Image.asset('assets/Images/camera.jfif'),
                iconSize: 50,
                onPressed: () {
                  // log("sdfsdf");
                  _getFromCamera();
                },
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
