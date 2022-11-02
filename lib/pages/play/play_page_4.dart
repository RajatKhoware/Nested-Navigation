import 'package:flutter/material.dart';

import '../../navigation.dart';

class Play4 extends StatefulWidget {
  const Play4({Key? key}) : super(key: key);

  @override
  State<Play4> createState() => _Play4State();
}

class _Play4State extends State<Play4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Wrap(
          children: [
            Column(
              children: [
                Text("Play Page 4"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: (){
                          Navigation.mainNavigation.currentState!.pushNamed("/main/2");
                        },
                        child: Text("Next")
                    )
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
