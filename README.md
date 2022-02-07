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

ProAnimatedBlur is a Flutter package very similar to other 'Animated' widgets
such as AnimatedContainer, AnimatedOpacity, etc. (without a dedicated animation
controller because it is auto-handled)

It blurs the background of the child widget.

Some usecases:

- When a modal (popup window) is used, wrap the route with ProAnimatedBlur in order to blur the rest of the screen
  (you can blur the dark shaded dismissible barrier area)
- Wrap any of your containers to make a frosted glass style.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
