# flutter_music

## Preview

<img src="https://github.com/alzaichsank/flutter_music/blob/master/preview/main.png" width=176/>&nbsp; 

## Supported Devices

The code has been tested on:
1. Google Pixel (Android)

## Supported Features
1. User can search songs by artist.
2. If results found, it will populate song list.
3. If not will show empty screen.
4. On click of song , music player while play. Music player which persists throughout the lifetime
5. On click of song, song list indicates which song is being played
6. Music player allows you to pause and play the song via a toggle button
7. Music player allows you to go go back and forward the list via a previous and forward button
8. Always on portrait mode.

## Requirements to build the app
The application is dependent on a few external libraries .
1. `video_player` and `http` and flutter native libraries required for video playing capability and http requests respectively
2. `flutter_bloc` and `get_it` are 3rd party libraries which are used for code architeure and to use the [provider pattern](https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple)
3. `network_image_mock` is used as dev dependency to mock network image in testing scripts
4.  `other library` is for the widget or something to make clean architecture.

## Instructions to build and deploy the app.
 `video_player` related settings specific to android and ios have already been done. A reference could be found [here](https://pub.dev/packages/video_player#installation)
Steps to build and deploy
1. Ensure flutter 2.0+ installed
2. `git clone https://github.com/alzaichsank/flutter_music`
2. `cd flutter_music`
3. `flutter pub get`
4. `flutter run`


note for first run :

`flutter packages pub run build_runner build`

if conflict

`flutter packages pub run build_runner build --delete-conflicting-outputs`

All files will generated, you can just use it, cheers!

