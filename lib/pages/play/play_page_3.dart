import 'package:flutter/material.dart';

import '../../navigation.dart';

class Play3 extends StatefulWidget {
  const Play3({Key? key}) : super(key: key);

  @override
  State<Play3> createState() => _Play3State();
}

class _Play3State extends State<Play3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Wrap(
          children: [
            Column(
              children: [
                Text("Play Page 3"),
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
