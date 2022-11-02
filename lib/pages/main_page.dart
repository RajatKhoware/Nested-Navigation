import 'package:flutter/material.dart';
import 'package:flutter_nested_navigaton/pages/page1.dart';
import 'package:flutter_nested_navigaton/pages/page2.dart';
import 'package:flutter_nested_navigaton/pages/page3.dart';
import 'package:flutter_nested_navigaton/pages/page4.dart';
import 'package:flutter_nested_navigaton/pages/play/play_page_1.dart';
import 'package:flutter_nested_navigaton/pages/play/play_page_2.dart';
import 'package:flutter_nested_navigaton/pages/play/play_page_3.dart';
import 'package:flutter_nested_navigaton/pages/play/play_page_4.dart';

import '../navigation.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color _iconColor = Color.fromARGB(255, 192, 191, 191);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: Navigator(
              key: Navigation.mainNavigation,
              initialRoute: "/",
              onGenerateRoute: (RouteSettings settings) {
                Widget page;

                switch (settings.name) {
                  case "/":
                    {
                      page = Page1();
                      break;
                    }
                  case "/main/2":
                    {
                      page = Page2();
                      break;
                    }
                  case "/main/3":
                    {
                      page = Page3();
                      break;
                    }
                  case "/main/4":
                    {
                      page = Page4();
                      break;
                    }
                     case "/play/1":
                    {
                      page = Play1();
                      break;
                    }
                    case "/play/2":
                    {
                      page = Play2();
                      break;
                    }
                  case "/play/3":
                    {
                      page = Play3();
                      break;
                    }
                  case "/play/4":
                    {
                      page = Play4();
                      break;
                    }

                  default:
                    {
                      page = Page1();
                    }
                }

                return PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => page,
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
            Divider(),
            Container(
              height: 82,
              color: Colors.deepPurple,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 74,
                    width: 73,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 53, 53, 53),
                        borderRadius: BorderRadius.circular(20)),
                    child: IconButton(
                      icon: Icon(
                        Icons.play_arrow,
                        color: _iconColor,
                        size: 40,
                      ),
                      onPressed: () {
                        setState(() {
                          _iconColor = Colors.yellow;
                        });
                        Navigation.mainNavigation.currentState!
                            .pushReplacementNamed("/");
                      },
                    ),
                  )),
                  Expanded(
                    child: Container(
                      height: 74,
                      width: 73,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 53, 53, 53),
                          borderRadius: BorderRadius.circular(20)),
                      child: IconButton(
                        icon: Icon(
                          Icons.wallet,
                          color: _iconColor,
                          size: 40,
                        ),
                        onPressed: () {
                          setState(() {
                            _iconColor = Colors.yellow;
                          });
                          Navigation.mainNavigation.currentState!
                              .pushReplacementNamed("/main/2");
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 74,
                      width: 73,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 53, 53, 53),
                          borderRadius: BorderRadius.circular(20)),
                      child: IconButton(
                        icon: Icon(
                          Icons.leaderboard,
                          color: _iconColor,
                          size: 40,
                        ),
                        onPressed: () {
                          setState(() {
                            _iconColor = Colors.yellow;
                          });
                          Navigation.mainNavigation.currentState!
                              .pushReplacementNamed("/main/3");
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 74,
                      width: 73,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 53, 53, 53),
                          borderRadius: BorderRadius.circular(20)),
                      child: IconButton(
                        icon: Icon(
                          Icons.account_box_rounded,
                          color: _iconColor,
                          size: 40,
                        ),
                        onPressed: () {
                          setState(() {
                            _iconColor = Colors.yellow;
                          });
                          Navigation.mainNavigation.currentState!
                              .pushReplacementNamed("/main/4");
                        },
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
