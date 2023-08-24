import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nima_comunity_member_app/screens/splash_screen.dart';


import 'package:provider/provider.dart';

import 'core/constant/multi_provider.dart';

// void main() {
//   // SystemChrome.setPreferredOrientations([
//   //   DeviceOrientation.portraitUp,
//   // ]);
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   static const double _designWidth = 428;
//   static const double _desigHeight = 926;

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//         designSize: const Size(MyApp._designWidth, MyApp._desigHeight),
//         builder: (context, widget) {
//           return MultiProvider(
//             providers: providers,
//             child: const GetMaterialApp(
//               debugShowCheckedModeBanner: false,
//               home: SplashScreen(),
//             ),
//           );
//         });
//   }
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static const double _designWidth = 375;
  static const double _desigHeight = 812;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: ScreenUtilInit(
          designSize: const Size(MyApp._designWidth, MyApp._desigHeight),
          builder: (context, widget) {
            return
                // MultiProvider(
                //   providers: providers,
                //child:
                 const GetMaterialApp(
              debugShowCheckedModeBanner: false,
              // theme: ThemeData(
              //   primarySwatch: primaryColor,r
              // ),


              home:
                  // TaskAndOrderScreen(),
                  SplashScreen(),

            );
            //  );
          }),
    );
  }
}
