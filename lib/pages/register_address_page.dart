import 'package:flutter/material.dart';
import 'package:proyecto_pam/utils/my_colors.dart';
import 'package:proyecto_pam/utils/responsive.dart';
import '../widgets/circulos_diseno.dart';
import '../widgets/register_address_form.dart';

class RegistroDireccion extends StatefulWidget {
  const RegistroDireccion({Key? key}) : super(key: key);
  static const routeName = 'register_adrress';

  @override
  State<RegistroDireccion> createState() => _RegistroDireccionState();
}

class _RegistroDireccionState extends State<RegistroDireccion> {
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
                            'assets/direccionn.png',
                            width: responsive.wp(100),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: responsive.dp(2),
                      ),
                      Text(
                        'NUEVA DIRECCION',
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
                const RegistroDireccionForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
