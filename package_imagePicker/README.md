# package image picker
* source [Official Doc - Image Picker plugin for Flutter](https://pub.dev/packages/image_picker)

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
