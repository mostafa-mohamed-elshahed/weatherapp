import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:weatherapp/provder/weather_provder.dart';
import 'package:weatherapp/screens/home.dart';
import 'package:weatherapp/screens/search_page.dart';

main() {
  runApp(SplashScreens());
}



class SplashScreens extends StatefulWidget {
  @override
  _SplashScreensState createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(
          seconds: 7,
          navigateAfterSeconds: WeatherApp(),
          title: Text(
            " Welcome In AM App \n 🌓 ☀ ☁ ⛈ ❄ 🌪 ",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
          ),
          imageBackground: AssetImage("images/Splash/Splash3.jpg"),
          loaderColor: Colors.transparent,
          loadingText: Text(
            "Please Wait",
            style: TextStyle(color: Colors.white),
          ),
        ),);
  }
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WeatherData>(
      create: (context) => WeatherData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomePage.id,
        routes: {
          HomePage.id: (context) => HomePage(),
          SearchPage.id: (context) => SearchPage(),
        },
      ),
    );
  }
}










//
// // main() {
// //   runApp(Home());
// // }
// //
// class SplashScreens extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: SplashScreen(
//           title: Text(
//             "Welcome ♥ To Weather App 😉",
//             style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//           ),
//           seconds: 10,
//           navigateAfterSeconds: WeatherApp(),
//           imageBackground: AssetImage("images/1.jpg"),
//           loaderColor: Colors.transparent,
//         ));
// //   }
// // }
// //
// // class Home1 extends StatefulWidget {
// //   @override
// //   _Home1State createState() => _Home1State();
// // }
// //
// // class _Home1State extends State<Home1> {
// //   @override
// //   Widget build(BuildContext context) => Scaffold(
// //         backgroundColor: Colors.white,
// //         appBar: AppBar(
// //           title: Text("Weather"),
// //           actions: [
// //             Padding(
// //               padding: const EdgeInsets.only(right: 32.0),
// //               child: GestureDetector(
// //                   onTap: () {
// //                     Navigator.push(
// //                       context,
// //                       MaterialPageRoute(builder: (context) => SearchPage()),
// //                     );
// //                   },
// //                   child: Icon(Icons.search)),
// //             ),
// //           ],
// //         ),
// //         body: Center(
// //           child: Container(
// //             height: 500,
// //             width: double.infinity,
// //             child: Center(
// //                 child: Padding(
// //               padding: const EdgeInsets.only(left: 8.0, right: 8.0),
// //               child: Center(
// //                 child: Text(
// //                   "There Is No Weather 😂 Start \n Searching 🔎 Now ",
// //                   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
// //                 ),
// //               ),
// //             )),
// //           ),
// //         ),
// //       );
// // }
// //
// // class SearchPage extends StatefulWidget {
// //   @override
// //   _SearchPageState createState() => _SearchPageState();
// // }
// //
// // class _SearchPageState extends State<SearchPage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Search a City"),
// //         backgroundColor: Colors.orangeAccent,
// //       ),
// //       body: Center(
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: TextField(
// //             decoration: InputDecoration(
// //               enabledBorder: OutlineInputBorder(
// //                 borderSide: BorderSide(color: Colors.orangeAccent),
// //                 borderRadius: BorderRadius.circular(5),
// //               ),
// //               hintText: "Enter Your city",
// //               hintStyle: TextStyle(color: Colors.black54),
// //               alignLabelWithHint: true,
// //               focusedBorder: OutlineInputBorder(
// //                 borderSide: BorderSide(color: Colors.orangeAccent),
// //                 borderRadius: BorderRadius.circular(5),
// //               ),
// //               suffixIcon: Icon(
// //                 Icons.search,
// //                 color: Colors.black,
// //               ),
// //               labelText: "Search",
// //               labelStyle: TextStyle(color: Colors.orangeAccent),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // // SplashScreen(
// // //   seconds: 10,
// // //   navigateAfterSeconds: Home1(),
// // //   imageBackground: AssetImage("images/1.jpg"),
// // // ),
