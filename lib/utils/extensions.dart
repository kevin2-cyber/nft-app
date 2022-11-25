

// extensions for our build-in classes
// this adds additional functionality to the classes
import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
// instance of current theme, using the this keyword since we are
// in the [BuildContext] scope
  ThemeData get theme => Theme.of(this);

  // color scheme of current theme
  ColorScheme get colorScheme => theme.colorScheme;

  // media queries
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  //height
  double get height => mediaQuery.size.height;

  // width
  double get width => mediaQuery.size.width;
}