# Integrating Flutter inside iOS native application(Swift).

## IMPORTANT
After cloning the repository some **flutter files may be missing**:
- Clone the repository and open the Xcode project using HelloWorld.xcworkspace
- If compiler gives you some error about missing Flutter package do that:
    - open with Android Studio flutter_module_ios project and run *flutter pub get* or *get dependencies* and check that flutter sdk is correctly set in project settings
    - open terminal and go to the project root directory and run *pod install* to install all Xcode project
    dependencies
    - now open Xcode project using HelloWorld.xcworkspace.
- This problem is due to some missing file in .ios directory inside flutter_module_ios.

## Simple guide for the integration.

- Create a new Xcode project
- Open terminal and go to the project directory.
- Run command *pod init* to create a Pod file.
- Run command *open -a Xcode PodFile* to edit the PodFile with Xcode.
**IMPORTANT: do not edit PodFile with TextEdit because it replaces standard quotes with more graphically-appealing typeset quotes.**
- Add this two lines at the start of PodFile properly changing the path to the flutter module path:
```
flutter_application_path = '../my_flutter' #Change this to your path
load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')
```
- Embed flutter inside the project by adding these lines of code:
```
target 'MyApp' do #MyApp is Xcode project name
  install_all_flutter_pods(flutter_application_path)
end
```
- Save and close and then run command *pod install*
- From now you need to open the project using the *MyApp.xcworkspace* and every time Flutter plugin
dependencies in *pubsec.yaml* get changed you need to run *flutter pub get* and then *pod install*.

## CocoaPods (or Pod) commands.

A **pod** file contains references to libraries that must be include in the Xcode projects.
- *pod init* to create a new Pod file
- *open -a Xcode PodFile* to edit the Pod file
- Add dependencies after *use_frameworks!* line, like this *pod 'Alamofire', '4.9.1'*
- Run *pod install* in your project directory to install dependencies.

