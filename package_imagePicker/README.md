# package image picker
* source [Official Doc - Image Picker plugin for Flutter](https://pub.dev/packages/image_picker)
* source [using image picker with shared prefs, by muyasser](https://github.com/muyasser/image-shared-prefs)

## package in use: image picker
* `image_picker: ^0.6.7` at pubspec.yaml
* `import 'package:image_picker/image_picker.dart';`
* `final pickedFile = await picker.getImage(source: ImageSource.camera);`
* full code block (called under onPressed, `onPressed: getImage`)
```
  final picker = ImagePicker();
  
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
```

## using with Provider
* create /Providers/imageProvider.dart with setImage() func
* call `setImage(File(pickedFile.path))` with `Provider.of<MyImageChangeNotifier>(context)`

## using Shared Preferences
* create /Utility/shared_prefs.dart with saveImageToPrefs(), emptyPrefs(), loadImageFromPrefs(), base64String(), imageFromBase64String()
* on Screen, call saveImageToPrefs() on pickImage() and loadImageFromPrefs() with setSate() and emptyPrefs() directly on delete icon