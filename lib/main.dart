import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyecto_pam/pages/register_address_page.dart';
import 'package:proyecto_pam/pages/register_category_page.dart';
import 'package:proyecto_pam/pages/register_product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const RegistroCategoria(),
      routes: {
        RegistroProducto.routeName: (_) => const RegistroProducto(),
        RegistroCategoria.routeName: (_) => const RegistroCategoria()
      },
    );
  }
}
