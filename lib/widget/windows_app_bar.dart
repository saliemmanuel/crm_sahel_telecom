import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

import 'custom_windows_button.dart';

class WindowsAppBar extends StatelessWidget {
  const WindowsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return WindowTitleBarBox(
      child: Container(
        color: Colors.white,
        child: Row(children: [
          Expanded(
              child: MoveWindow(
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
                  child: Image.asset(
                    'assets/logo.png',
                    height: 30.0,
                    width: 30.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const Text("Sahel Telecom"),
              ],
            ),
          )),
          const WindowButtons()
        ]),
      ),
    );
  }
}
