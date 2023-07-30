import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx/helper/init_dependency.dart';

import 'my_home_page.dart';
import 'helper/init_controllers.dart' as di;

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitDep(),
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: MyHomePage()),
    );
  }
}
