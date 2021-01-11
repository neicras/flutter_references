
Flutter---Google推出的跨平台框架，Android、iOS一起搞定 系列
https://ithelp.ithome.com.tw/users/20119550/ironman/2221


### Flutter Installation
1. copy stable flutter version from git
- MacBook-Pro-2:Flutter-QuickStart EricSan$ git clone https://github.com/flutter/flutter.git -b stable --depth 1

2. update path and run flutter
- export PATH="$PATH:`pwd`/flutter/bin"
- flutter
- flutter doctor

>[!] Android Studio (version 4.1)
>    ✗ Flutter plugin not installed; this adds Flutter specific functionality.
>    ✗ Dart plugin not installed; this adds Dart specific functionality.
- just run in the terminal this command
`ln -s ~/Library/Application\ Support/Google/AndroidStudio4.1/plugins ~/Library/Application\ Support/AndroidStudio4.1` ([StackOverflow](https://stackoverflow.com/questions/51860845/flutter-plugin-not-installed-error-when-running-flutter-doctor))

### Create an app
- flutter create myapp

### Boot up the app
1. export PATH="$PATH:`pwd`/flutter/bin"
2. cd decg_main
3. andriod studio
    Android Studio > Any Project > Wait for "loading devices"
    Device > AVD Manager > Run
4. flutter devices 
    MacBook-Pro-2:decg_main EricSan$ flutter devices
    3 connected devices:

    sdk gphone x86 (mobile) • emulator-5554 • android-x86    • Android 11 (API 30) (emulator)
    Web Server (web)        • web-server    • web-javascript • Flutter Tools
    Chrome (web)            • chrome        • web-javascript • Google Chrome 87.0.4280.88
5. flutter run
    Using hardware rendering with device sdk gphone x86. If you notice graphics artifacts, consider enabling software rendering with
    "--enable-software-rendering".
    Launching lib/main.dart on sdk gphone x86 in debug mode...
    Running Gradle task 'assembleDebug'...                                 ⣻

### Turn on Android Emulators in Android Studio 
(
    <problem with running android studio>
    questions/63517294/the-ide-cannot-create-the-directory-possible-reason-parent-directory-is-read-o/64802591#64802591
    give permission for the cache file
)

Android Studio > Any Project > Wait for "loading devices"
Device > AVD Manager > Run

flutter emulators (list and start any available device emulators)
flutter emulators --create Pixel_2_API_30

flutter devices
flutter run -d <device name>

Flutter run key commands.
r Hot reload. 🔥🔥🔥
R Hot restart.
h Repeat this help message.
d Detach (terminate "flutter run" but leave application running).
c Clear the screen
q Quit (terminate the application on the device).
An Observatory debugger and profiler on sdk gphone x

### VS Code
- install flutter and reload

### Run Chrome Webapp
- https://flutter.dev/docs/get-started/codelab-web

flutter emulators --launch  Pixel_2_API_30
flutter devices
flutter run -d "sdk gphone x86"
flutter run -d chrome


### Flutter release web project
https://itnext.io/setup-a-flutter-web-project-on-github-pages-58b3118b0a28

flutter build web --release
cd build/web
git commit -m "xxx"
git push

git push -f origin