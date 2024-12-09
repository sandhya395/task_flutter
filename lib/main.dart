import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_task_design/GetxState/ui_screen/ui_screen.dart';
import 'package:test_task_design/lib/api_get_screen/get_data_screen.dart';
import 'package:test_task_design/view/Wlc_2/welcome_2_screen.dart';
import 'package:test_task_design/view/animation/animation_1_screen.dart';
import 'package:test_task_design/view/animation/animation_screen.dart';
import 'package:test_task_design/view/animation/hero_animation.dart';
import 'package:test_task_design/view/animation/hero_animation_2_screen.dart';
import 'package:test_task_design/view/bottom_navigation/bottom_navigation_screen.dart';
import 'package:test_task_design/view/bottom_navigation/line_charts_screen.dart';
import 'package:test_task_design/view/bottom_navigation/pie_charts_screen.dart';
import 'package:test_task_design/view/calc/calc_screen.dart';
import 'package:test_task_design/view/charts/animation_line_chart.dart';
import 'package:test_task_design/view/charts/charts_screen.dart';
import 'package:test_task_design/view/flutter_table/flutter_table_screen.dart';
import 'package:test_task_design/view/flutter_themes/flutter_themes_screen.dart';
import 'package:test_task_design/view/navigator/navigator_pop/navigator_pop_screen.dart';
import 'package:test_task_design/view/navigator/navigator_pop_and_push_named/navigator_pop_and_push_named_screen.dart';
import 'package:test_task_design/view/navigator/navigator_pop_until/navigator_pop_until_screen.dart';
import 'package:test_task_design/view/pet_care_app/first_welcome_screen.dart';
import 'package:test_task_design/view/progress_bar/circular_indicator_screen.dart';
import 'package:test_task_design/view/progress_bar/progress_bar_screen.dart';
import 'package:test_task_design/view/radio_button/radio_button_screen.dart';
import 'package:test_task_design/view/slider/slider_screen.dart';
import 'package:test_task_design/view/slivers/sliver_app_bar_builder_screen.dart';
import 'package:test_task_design/view/slivers/slivers_app_bar_screen.dart';
import 'package:test_task_design/view/snack_bar/snack_bar_screen.dart';
import 'package:test_task_design/view/splash_screen.dart';
import 'package:test_task_design/view/sqflite/db_helper/Ui_Sqflite/ui_sqflite.dart';
import 'package:test_task_design/view/switch/switch_screen.dart';
import 'package:test_task_design/view/test_task/bottom_navigation_2_screen.dart';
import 'package:test_task_design/view/test_task/home_screen.dart';
import 'package:test_task_design/view/test_task/item_widget.dart';
import 'package:test_task_design/view/test_task/item_widget2_screen.dart';
import 'package:test_task_design/view/test_task/list_view_screen.dart';
import 'package:test_task_design/view/test_task/ratting_star_screen.dart';
import 'package:test_task_design/view/test_task_2/cart_page_screen.dart';
import 'package:test_task_design/view/test_task_2/home_screen_2.dart';
import 'package:test_task_design/view/test_task_2/profile_page_screen.dart';
import 'package:test_task_design/view/toast/toast_notification.dart';
import 'package:test_task_design/view/tooltip/tooltip_screen.dart';
import 'package:test_task_design/view/ui_design/ui_design_2_screen.dart';
import 'package:test_task_design/view/ui_design/ui_design_screen.dart';
import 'package:test_task_design/view/ui_design/ui_design_screen_3.dart';
import 'package:test_task_design/view/wlc_screen_design/firestore_database.dart';
import 'package:test_task_design/view/wlc_screen_design/google_login.dart';
import 'package:test_task_design/view/wlc_screen_design/login_screen.dart';
import 'package:test_task_design/view/wlc_screen_design/welcome_screen.dart';
import 'package:test_task_design/wls_screen_design/check_box/check_box_screen.dart';

import 'GetxState/ui_screen/ui_screen_2.dart';
import 'GetxState/ui_screen/ui_screen_4.dart';
import 'GetxState/ui_screen/ui_screen_design_1.dart';
import 'GetxState/ui_screen/ui_screen_design_2.dart';
import 'get_api/PostModel/post_api_2.dart';
import 'get_api/get_api_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(apiKey: 'AIzaSyBg67xFPOoLq0Hah7CcjwezFG1y8UKrGa8',
          appId: '1:375078256086:android:693e00119fc08f6919b877',
          messagingSenderId: '375078256086-9na9601nhvc8lpes9j24ipb6ptpvvjb1.apps.googleusercontent.com',
          projectId: 'test1-19746')
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // initialRoute: '/first',
        routes: {
          '/first': (context) => AnimationScreen(),
          '/second': (context) => HeroAnimation(),
        },
        title: 'Flutter Design',
        theme: ThemeData(
          bottomAppBarTheme: BottomAppBarTheme(
            color: Colors.grey,
            elevation: 4,
            padding: EdgeInsets.all(3),
            shadowColor: Colors.blue,
          ),
          buttonTheme: ButtonThemeData(
            alignedDropdown: true,
            buttonColor: Colors.teal,
            highlightColor: Colors.grey,
            minWidth: 10,
          ),
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.grey,
          ),
          cardTheme: CardTheme(
              shape: ShapeBorder.lerp(
                  InputBorder.none,
                  Border.symmetric(vertical: BorderSide.none),
                  CircularProgressIndicator.strokeAlignOutside)),
          actionIconTheme: ActionIconThemeData(),
          bannerTheme: MaterialBannerThemeData(
              backgroundColor: Colors.blue,
              shadowColor: Colors.grey,
              padding: EdgeInsetsGeometry.infinity),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.grey,
              elevation: 20,
              centerTitle: true,
              iconTheme: IconThemeData(
                color: Colors.black,
                size: 13,
              )),
          // checkboxTheme: CheckboxThemeData(
          //     materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          //     splashRadius: 30,
          //     side: BorderSide(
          //       width: 15,
          //       color: Colors.blue,
          //       style: BorderStyle.none,
          //       strokeAlign: 28,
          //     )),
          drawerTheme: DrawerThemeData(
            backgroundColor: Colors.grey,
            shadowColor: Colors.green,
            surfaceTintColor: Colors.black,
            width: 10,
          ),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            bodySmall: TextStyle(
                color: Colors.black, fontSize: 19, fontWeight: FontWeight.w400),
          ),
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue,
              primary: Colors.black,
              secondary: Colors.greenAccent),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home:
        // FirestoreDatabase()
        // ProductListScreen()
        // DateTimelineScreen(),
        // SplashScreen(),
        // GetDataScreen(),
        // HomeScreen(),////////
        // ProfilePageScreen(),
        // CartPageScreen(),
        // HomeScreen2(),
        // ListViewScreen(),
        // RattingStarScreen(),
        // ItemWidget2Screen(),
        // BottomNavigation2Screen(),
        // BottomNavigation2Screen(),
        // ItemWidget(),
        // PostApi2(),
        // PostApi2(),
        // Welcome2Screen(),
        // GetDataScreen(),
        // UiScreen(),
        // SplashScreen(),
        // UiScreen2(),
        // UiScreen4(),
        // UiDesignScreen3(),
        // UiDesign2Screen(),//
        // UiDesignScreen(),
        // SqlDesign(),
        // SliverAppBarBuilderScreen(),
        // SliversAppBarScreen(),
        // GoogleMapScreen(),
        // AnimationScreen(),
        // LoginScreen(),
        UiScreenDesign1(),///////////
        // ItemWidget2Screen()
        // ItemWidget()
        // UiScreenDesign2()
        // GoogleLoginScreen()
        // WelcomeScreen(),////
        // NavigatorOffScreen()
        // NavigatorPopUntilScreen()
        // NavigatorPushScreen(),
        // NavigatorPop1Screen(),
        // NavigatorPopAndPushNamedScreen(),
        // CalcScreen(),
        // ItemWidget2Screen()
        // FirstWelcomeScreen(),
        // ui_sqflite(),//
        // ToastNotification(),
        // CheckBoxScreen(),
        // RadioButtonScreen(),
        // ProgressBarScreen(),
        // SnackBarScreen(),
        // SliderScreen(),
        // TooltipScreen(),
        // CircularIndicatorScreen(),
          // SwitchScreen(),
        // ChartsScreen(),
        // MyNavigationBar(),
        // const FlutterThemesScreen(),
        // FlutterTableScreen(),
        // CalenderScreen(),
        // AnimationScreen(),
        // PieChartSample3(),
          // BarChartSample1(),
        // LineChartSample10(),
        // Animation1Screen(),
        //     HeroAnimation()
        );
  }
}
