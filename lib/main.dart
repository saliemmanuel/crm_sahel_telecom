import 'package:crm_sahel_telecom/views/login.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'config/theme.dart';
import 'provider/auth_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  doWhenWindowReady(() {
    final win = appWindow;
    win.alignment = Alignment.center;
    win.title = "crm sahel telecom";
    win.show();
  });
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: FluentApp(
        themeMode: ThemeMode.dark,
        title: "crm sahel telecom",
        theme: FluentThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const Login(),
      )));
}
