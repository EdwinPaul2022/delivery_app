import 'package:flutter/material.dart';
import 'dart:math' as math;

class Responsive {
  double _ancho = 0.0, _alto = 0.0, _diagonal = 0.0;
  bool _isTablet = false;

  double get ancho => _ancho;
  double get alto => _alto;
  double get diagonal => _diagonal;
  bool get isTablet => _isTablet;

  static Responsive of(BuildContext context) => Responsive(context);

  Responsive(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    _ancho = size.width;
    _alto = size.height;
    _diagonal = math.sqrt(math.pow(_ancho, 2) + math.pow(_alto, 2));
    _isTablet = size.shortestSide >= 600;
  }

  double wp(double porcentaje) => _ancho * porcentaje / 100;
  double hp(double porcentaje) => _alto * porcentaje / 100;
  double dp(double porcentaje) => _diagonal * porcentaje / 100;
}
