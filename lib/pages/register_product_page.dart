import 'package:flutter/material.dart';
import 'package:proyecto_pam/utils/my_colors.dart';
import 'package:proyecto_pam/utils/responsive.dart';
import 'package:proyecto_pam/widgets/register_product_form.dart';
import '../widgets/circulos_diseno.dart';

class RegistroProducto extends StatefulWidget {
  const RegistroProducto({Key? key}) : super(key: key);
  static const routeName = 'register_product';

  @override
  State<RegistroProducto> createState() => _RegistroProductoState();
}

class _RegistroProductoState extends State<RegistroProducto> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final double longcirculo = responsive.wp(200);

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: responsive.alto,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                    top: -longcirculo * 0.85,
                    child: Circulo(
                      longitud: longcirculo,
                    )),
                Positioned(
                  top: longcirculo * 0.08,
                  child: Column(
                    children: [
                      Container(
                        width: responsive.wp(20),
                        height: responsive.wp(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(responsive.wp(25) * 0.5),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 25,
                              offset: Offset(0, 15),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/food.png',
                            width: responsive.wp(100),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: responsive.dp(2),
                      ),
                      Text(
                        'NUEVO PRODUCTO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: MyColors.primaryColor,
                          fontSize: responsive.dp(2),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const RegistroProductoForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
