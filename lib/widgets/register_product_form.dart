// ignore_for_file: deprecated_member_use, prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:proyecto_pam/utils/responsive.dart';
import 'package:proyecto_pam/widgets/input_image.dart';
import 'package:proyecto_pam/widgets/input_text.dart';
import 'package:proyecto_pam/utils/my_colors.dart';

class RegistroProductoForm extends StatefulWidget {
  const RegistroProductoForm({Key? key}) : super(key: key);

  @override
  State<RegistroProductoForm> createState() => _RegistroProductoFormState();
}

class _RegistroProductoFormState extends State<RegistroProductoForm> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    List _categorias = ['Bebidas', 'Comida Rápida'];
    Object? _catvalue;

    return Positioned(
      bottom: responsive.dp(3),
      child: Container(
        constraints: BoxConstraints(maxWidth: responsive.isTablet ? 480 : 360),
        child: Column(
          children: <Widget>[
            InputText(
              label: "* Nombre",
              letra: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
              lineas: 1,
              alto: responsive.dp(6),
              vimagen: 'assets/product_name.png',
            ),
            SizedBox(height: responsive.dp(2)),
            InputText(
                label: "* Descripción",
                letra: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                lineas: 3,
                alto: responsive.dp(10),
                vimagen: 'assets/product_description.png'),
            SizedBox(height: responsive.dp(2)),
            InputText(
                label: "* Precio",
                letra: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                lineas: 1,
                tipo_campo: TextInputType.number,
                alto: responsive.dp(6),
                vimagen: 'assets/product_price.png'),
            SizedBox(height: responsive.dp(2.5)),
            InputImage(),
            SizedBox(height: responsive.dp(2)),
            Container(
              height: responsive.dp(6),
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
              child: DropdownButton(
                hint: Text(
                  '  Selecciona una categoría',
                  style: TextStyle(
                    color: MyColors.primaryColor,
                  ),
                ),
                value: _catvalue,
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: MyColors.primaryColor,
                ),
                iconSize: responsive.dp(4),
                isExpanded: true,
                style: TextStyle(
                  color: MyColors.primaryColor,
                  fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                ),
                onChanged: (value) {
                  setState(() {
                    _catvalue = value;
                  });
                },
                items: _categorias.map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: responsive.dp(2)),
            SizedBox(
              width: double.infinity,
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: responsive.dp(1.5)),
                child: Text(
                  "REGISTRAR PRODUCTO",
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
