import 'package:flutter/material.dart';
import 'package:proyecto_pam/utils/responsive.dart';
import 'package:proyecto_pam/widgets/input_text.dart';
import 'package:proyecto_pam/utils/my_colors.dart';

class RegistroCategoriaForm extends StatefulWidget {
  const RegistroCategoriaForm({Key? key}) : super(key: key);

  @override
  State<RegistroCategoriaForm> createState() => _RegistroCategoriaFormState();
}

class _RegistroCategoriaFormState extends State<RegistroCategoriaForm> {
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
              label: "* Nombre",
              letra: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
              lineas: 1,
              alto: responsive.dp(6),
              vimagen: 'assets/category_name.png',
            ),
            SizedBox(height: responsive.dp(2)),
            InputText(
                label: "* Descripción",
                letra: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                lineas: 3,
                alto: responsive.dp(10),
                vimagen: 'assets/product_description.png'),
            SizedBox(height: responsive.dp(10)),
            SizedBox(
              width: double.infinity,
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: responsive.dp(1.5)),
                child: Text(
                  "REGISTRAR CATEGORIA",
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
