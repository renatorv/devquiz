import 'package:flutter/material.dart';
import 'dart:math' as math;

class Responsive {
  double _width = 0, _height = 0, _diagonal = 0;
  //bool _isTablet;
  Size _size = Size(0.0, 0.0);

  double get width => _width;
  double get height => _height;
  double get diagonal => _diagonal;
  Size get size => _size;

  static Responsive of(BuildContext context) => Responsive(context);

  Responsive(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    this._width = size.width;
    this._height = size.height;

    this._diagonal = math.sqrt(math.pow(_width, 2) + math.pow(_height, 2));

    //this._isTablet = size.shortestSide >= 600;

    this._size = size;
  }

  double wp(double percent) => _width * percent / 100;
  double hp(double percent) => _height * percent / 100;
  double dp(double percent) => _diagonal * percent / 100;
}
