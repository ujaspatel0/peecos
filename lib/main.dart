import 'package:flutter/material.dart';
// import 'package:peecos/ui/splash/splash_view.dart';
// import 'package:peecos/app/router.dart' as router;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // MobileAds.instance.initialize();
  // setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PEecoS APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashView(),
      // navigatorKey: getIt<NavigationService>().navigatorKey,
      // onGenerateRoute: router.generateRoute,
      // initialRoute: splashRoute,
    );
  }
}

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("This is my New App"),
    );
  }
}
