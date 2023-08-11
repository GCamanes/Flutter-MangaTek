#! /bin/bash

# DEV

flutterfire configure -p fangapp-988d5 -a com.groupany.mangatek.dev -i com.groupany.mangatek.dev -o lib/core/config/firebase_configuration.dev.dart
mkdir -p android/app/src/dev/ && mv android/app/google-services.json android/app/src/dev/google-services.json
mkdir -p ios/config/dev/ && mv ios/firebase_app_id_file.json  ios/config/dev/firebase_app_id_file.json
mkdir -p ios/config/dev/ && mv ios/Runner/GoogleService-Info.plist  ios/config/dev/GoogleService-Info.plist

# PROD

flutterfire configure -p fangapp-988d5 -a com.groupany.mangatek -i com.groupany.mangatek -o lib/core/config/firebase_configuration.prod.dart
mkdir -p android/app/src/prod/ && mv android/app/google-services.json android/app/src/prod/google-services.json
mkdir -p ios/config/prod/ && mv ios/firebase_app_id_file.json  ios/config/prod/firebase_app_id_file.json
mkdir -p ios/config/prod/ && mv ios/Runner/GoogleService-Info.plist  ios/config/prod/GoogleService-Info.plist
