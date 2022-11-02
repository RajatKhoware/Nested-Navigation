import 'package:flutter/material.dart';

import '../../navigation.dart';

class Play1 extends StatefulWidget {
  const Play1({Key? key}) : super(key: key);

  @override
  State<Play1> createState() => _Play1State();
}

class _Play1State extends State<Play1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Wrap(
          children: [
            Column(
              children: [
                Text("Play Page 1"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigation.mainNavigation.currentState!
                              .pushNamed("/play/2");
                        },
                        child: Text("Next"))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
