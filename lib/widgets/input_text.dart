import 'package:flutter/material.dart';
import 'package:proyecto_pam/utils/my_colors.dart';
import 'package:proyecto_pam/utils/responsive.dart';

class InputText extends StatelessWidget {
  final String label;
  final double alto;
  final double letra;
  final int lineas;
  final TextInputType? tipo_campo;
  final String vimagen;
  const InputText({
    Key? key,
    this.label = '',
    this.alto = 0,
    this.letra = 0,
    this.vimagen = '',
    this.tipo_campo,
    this.lineas = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Container(
      height: alto,
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        border: Border.all(
          color: MyColors.primaryColor,
          width: responsive.dp(0.2),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(responsive.dp(1.5)),
        ),
      ),
      child: TextField(
        style: TextStyle(
          fontSize: letra,
        ),
        keyboardType: tipo_campo,
        maxLines: lineas,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color: MyColors.primaryColor,
          ),
          prefixIcon: Image.asset(
            vimagen,
          ),
        ),
      ),
    );
  }
}
