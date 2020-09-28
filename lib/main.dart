import 'package:Practice_Stacked/model/hive_Example/person.dart';
import 'package:Practice_Stacked/ui/views/setup_dialogUI.dart';
import 'package:Practice_Stacked/ui/views/setup_snackbarUI.dart';
// import 'package:Practice_Stacked/views/setup_dialogUI.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:stacked_services/stacked_services.dart';
//  import 'App/Router.gr.dart';
import 'App/Router.gr.dart' as auto_router;
import 'App/locator.dart';
// import 'UI/setup_snackbarUI.dart';
 // import 'UI/Views/partial_build_view/partialbuildsView.dart';
// import 'UI/Views/reactive_example /reactive_example_view.dart';
// import 'UI/Views/smart_widget/imagePicker/image_picker_view.dart';
// import 'UI/Views/stream_example/StreamExampleView.dart';
// import 'UI/pages/smart_widget/imagePicker/image_picker_view.dart';

void main() {
  setupLocator();
  setupDialogUi();
  setupSnackbarUi();
  Hive.registerAdapter(PersonAdapter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:auto_router.Routes.homeView,
      navigatorKey: locator<NavigationService>().navigatorKey,
      title: 'Flutter Demo',
      // home: SnackbarView(),
      onGenerateRoute: auto_router.Router(),
      //  builder: ExtendedNavigator<auto_router.Router>(router: auto_router.Router(),),
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
