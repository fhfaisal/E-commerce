import 'package:ecommerce/app/modules/networkManager/bindings/network_manager_binding.dart';
import 'package:ecommerce/app/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/data/repository/authentication/authentication_repository.dart';
import 'app/routes/app_pages.dart';
import 'firebase_options.dart';

Future<void> main() async {
  ///Widgets Binding
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  ///Get-x local storage
  await GetStorage.init();

  ///Flutter native splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  ///Initiate Firebase and auth repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
  .then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialBinding: NetworkManagerBinding(),
      //initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      home: const Scaffold(body: Center(child: CircularProgressIndicator())),
    ),
  );
}
