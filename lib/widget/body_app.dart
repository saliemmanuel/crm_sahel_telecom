import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluent_ui/fluent_ui.dart';

import 'custom_windows_button.dart';

class BodyApp extends StatelessWidget {
  final Widget child;
  const BodyApp({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return NavigationView(
        content: Column(children: [
      WindowTitleBarBox(
        child: Container(
          color: Colors.white,
          child: Row(children: [
            Expanded(
                child: MoveWindow(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 2),
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
      ),
      Expanded(child: Container(color: Colors.white, child: child))
    ]));
  }
}
