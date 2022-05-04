import 'package:flutter/material.dart';
import 'package:proyecto_pam/utils/my_colors.dart';
import 'package:proyecto_pam/widgets/icono_boton.dart';

class InputImage extends StatelessWidget {
  const InputImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(
            'Seleccione imágenes (* min. 1 imagen)',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: MyColors.primaryColor,
              fontSize: 16,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconoBoton(),
              IconoBoton(),
              IconoBoton(),
            ],
          ),
        ],
      ),
    );
  }
}
