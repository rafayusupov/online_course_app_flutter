import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:hometask_nurlan/HomePage.dart';

import '../Draft.dart';

class RouteHelper{
   static const String initial = '/';
   static const String PageDisgn = '/HomePageDesign';



   static List<GetPage> routes = [
      GetPage(name:  '/', page: () => MyApp()),
      // GetPage(name:  PageDisgn, page: () => HomePageDisgn()),
      GetPage(name:  '/', page: () => HomePage()),
   ];
}