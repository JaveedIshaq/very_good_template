## Flutter Project Settig Up Commands
- While creating a new Flutter Projects there are some necessory packages dependencies and dev-dependencies are required to be added

### app dependencies
`flutter pub add cached_network_image carousel_slider connectivity_plus equatable firebase_auth firebase_core flutter_svg get_it http logger path_provider sentry_flutter shared_preferences simple_animations stacked_services url_launcher`

### dev dependencies
`flutter pub add --dev change_app_package_name flutter_launcher_icons build_runner`

### change Package Name Command
`flutter pub run change_app_package_name:main com.domain.app`

### Create App Launcher Icons

```
flutter_icons:
  #  image_path: "assets/images/icon-128x128.png"
  image_path_android: "assets/images/sabroso-app-icon.png"
  image_path_ios: "assets/images/sabroso-app-icon.png"
  android: true # can specify file name here e.g. "ic_launcher"
  ios: true # can specify file name here e.g. "My-Launcher-Icon"
  adaptive_icon_background: "assets/images/app-icon-background.png" # only available for Android 8.0 devices and above
  adaptive_icon_foreground: "assets/images/app-icon-foreground.png" # only available for Android 8.0 devices and above
```
  
`flutter pub run flutter_launcher_icons:main`
