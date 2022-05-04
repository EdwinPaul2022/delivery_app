import 'package:flutter/material.dart';
import 'package:proyecto_pam/utils/my_colors.dart';

class Circulo extends StatelessWidget {
  final double longitud;

  const Circulo({Key? key, required this.longitud})
      : assert(longitud > 0.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: longitud,
      height: longitud,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: MyColors.primaryColor,
      ),
    );
  }
}
