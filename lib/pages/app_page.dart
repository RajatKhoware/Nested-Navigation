import 'package:flutter/material.dart';
import 'package:flutter_nested_navigaton/pages/home_page.dart';
import 'package:flutter_nested_navigaton/pages/page2.dart';
import 'package:flutter_nested_navigaton/pages/page3.dart';
import 'package:flutter_nested_navigaton/pages/page4.dart';

import '../navigation.dart';

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Navigator(
            key: Navigation.appNavigation,
            initialRoute: "//",
            onGenerateRoute: (RouteSettings settingss) {
              Widget appPage;

              switch (settingss.name) {
                case "//":
                  {
                    appPage = MyHomePage();
                    break;
                  }

                case "/app/4":
                  {
                    appPage = Page4();
                    break;
                  }

                default:
                  {
                    appPage = MyHomePage();
                  }
              }

              return PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    appPage,
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  const begin = Offset(1.0, 0.0);
                  const end = Offset.zero;
                  final tween = Tween(begin: begin, end: end);
                  final offsetAnimation = animation.drive(tween);
                  return SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  );
                },
              );
            },
          )),
        ],
      ),
    ));
  }
}
