import 'package:flutter/material.dart';

import '../../navigation.dart';

class Play2 extends StatefulWidget {
  const Play2({Key? key}) : super(key: key);

  @override
  State<Play2> createState() => _Play2State();
}

class _Play2State extends State<Play2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Wrap(
          children: [
            Column(
              children: [
                Text("Play Page 2"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigation.mainNavigation.currentState!
                            .pushNamed("/main/2");
                      },
                      child: Text("Next"),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigation.mainNavigation.currentState!
                        .pushNamed("/play/3");
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    color: Colors.black,
                    child: const Center(
                      child: Text(
                        "Play Page 3",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    // Navigation.appNavigation.currentState!
                    //     .pushReplacementNamed("/app/4");
                    Navigation.appNavigation.currentState!.pushNamed("//");
                    //  Navigator.of(context).pushNamed("/");
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    color: Colors.black,
                    child: const Center(
                      child: Text(
                        "Play Page 4",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
