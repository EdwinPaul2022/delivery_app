import 'package:flutter/material.dart';
import 'package:proyecto_pam/utils/responsive.dart';
import 'package:proyecto_pam/widgets/input_text.dart';
import 'package:proyecto_pam/utils/my_colors.dart';

class RegistroDireccionForm extends StatefulWidget {
  const RegistroDireccionForm({Key? key}) : super(key: key);

  @override
  State<RegistroDireccionForm> createState() => _RegistroDireccionFormState();
}

class _RegistroDireccionFormState extends State<RegistroDireccionForm> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Positioned(
      bottom: responsive.dp(22),
      child: Container(
        constraints: BoxConstraints(maxWidth: responsive.isTablet ? 480 : 360),
        child: Column(
          children: <Widget>[
            InputText(
              label: "* DIRECCION",
              letra: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
              lineas: 1,
              alto: responsive.dp(6),
              vimagen: 'assets/direccion.png',
            ),
            SizedBox(height: responsive.dp(2)),
            InputText(
              label: "* ZONA",
              letra: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
              lineas: 1,
              alto: responsive.dp(6),
              vimagen: 'assets/zona.png',
            ),
            SizedBox(height: responsive.dp(2)),
            InputText(
              label: "* PUNTO DE REFERENCIA",
              letra: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
              lineas: 1,
              alto: responsive.dp(6),
              vimagen: 'assets/referencia.png',
            ),
            SizedBox(height: responsive.dp(2)),
            SizedBox(
              width: double.infinity,
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: responsive.dp(1.5)),
                child: Text(
                  "CREAR DIRECCION",
                  style: TextStyle(
                    fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
                color: MyColors.primaryColor,
              ),
            ),
            SizedBox(height: responsive.dp(1)),
          ],
        ),
      ),
    );
  }
}
