import 'package:crm_sahel_telecom/views/login.dart';
import 'package:fluent_ui/fluent_ui.dart';

import 'package:bitsdojo_window/bitsdojo_window.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  doWhenWindowReady(() {
    final win = appWindow;
    win.alignment = Alignment.center;
    win.title = "crm sahel telecom";
    win.show();
  });
  runApp(const FluentApp(debugShowCheckedModeBanner: false, home: Login()));
}
