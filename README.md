# **ProAnimatedBlur**
- **pub.dev page**: https://pub.dev/packages/pro_animated_blur

- ProAnimatedBlur is a Flutter package that is very similar to other 'Animated' widgets
  such as AnimatedContainer, AnimatedOpacity, etc. \*

- Animates between different blur properties without needing a dedicated animation
  controller because it is auto-handled\*

- It blurs the background of the child widget.

**Some usecases:**

- When a modal (popup window) is used, wrap the route with ProAnimatedBlur in order to blur the rest of the screen
  (you can blur the dark shaded dismissible barrier area)
- Wrap any of your containers to make a frosted glass style.

## Features

> The example app looks like this:

![ProAnimatedBlur_short_gif](https://raw.githubusercontent.com/yasinarik/flutter_pro_animated_blur/master/example/assets/ProAnimatedBlur_short.gif)

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

## Author

**Yasin Arık**

Email: [yasin.ariky@gmail.com](mailto:yasin.ariky@gmail.com)

GitHub: [github.com/yasinarik](https://github.com/yasinarik)

LinkedIn: [linkedin.com/in/yasinarik](https://www.linkedin.com/in/yasinarik)
