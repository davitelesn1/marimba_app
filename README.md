# app_marimba
# What I Learned from the Marimba App Project

During the development of this project, I gained important knowledge about several Flutter and Dart concepts:

## 🟣 Flutter Widgets
- **`MaterialApp`**: Provides the main structure for the app, including navigation and themes.
- **`Scaffold`**: Used as the basic visual structure for the app's layout.
- **`SafeArea`**: Ensures UI elements are positioned within the safe display boundaries.
- **`Column`** and **`Expanded`**: Help organize widgets in a flexible vertical layout.
- **`TextButton`**: Utilized to create clickable buttons that trigger sound playback.

## 🔵 Functions in Dart
- I practiced creating functions to improve code structure and readability.
- The `playSong` function was designed to handle audio playback efficiently:

```dart
void playSong(int songNumber) async {
  await _player.play(AssetSource('nota$songNumber.wav'));
}
```

- This helped me understand parameter passing and asynchronous programming using `async` and `await`.

## 🟠 Using External Packages
- I learned how to integrate the **audioplayers** package for audio playback.
- I practiced initializing an `AudioPlayer` instance and calling its `.play()` method to load and play audio files.

## 🟢 Error Handling & Debugging
- I improved my ability to identify and fix issues such as:
  - Ensuring required parameters were properly defined.
  - Correctly configuring asset paths in the `pubspec.yaml` file.

This project provided valuable hands-on experience with Flutter and improved my understanding of core development principles. 🚀

