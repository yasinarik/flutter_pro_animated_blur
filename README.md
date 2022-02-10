<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# ProAnimatedBlur

ProAnimatedBlur is a Flutter package very similar to other 'Animated' widgets
such as AnimatedContainer, AnimatedOpacity, etc. (without a dedicated animation
controller because it is auto-handled)

It blurs the background of the child widget.

**Some usecases:**

- When a modal (popup window) is used, wrap the route with ProAnimatedBlur in order to blur the rest of the screen
  (you can blur the dark shaded dismissible barrier area)
- Wrap any of your containers to make a frosted glass style.

## Features

## Getting started

Add the dependency in **pubspec.yaml**:

```yaml
dependencies:
  pro_animated_blur: ^0.0.1

  # It is recommended to use latest version.
```

**Import it**:

Now in your Dart code, you can use:

```dart
import 'package:pro_animated_blur/pro_animated_blur.dart';
```

## Usage

```dart
  return Container(
    clipBehavior: Clip.antiAlias, // Use a clip  option.
    child: ProAnimatedBlur(
      blur: _isBlurred ? 20 : 0,
      duration: Duration(milliseconds: 200),
      curve: Curves.linear,
      child: Container(
        height: 200,
        width: 200,
      ),
    ),
  );
```
