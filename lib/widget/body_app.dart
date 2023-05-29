import 'package:crm_sahel_telecom/widget/windows_app_bar.dart';
import 'package:fluent_ui/fluent_ui.dart';

class BodyApp extends StatelessWidget {
  final Widget child;
  const BodyApp({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return NavigationView(
        content: Column(children: [
      const WindowsAppBar(),
      Expanded(
          child: Padding(
        padding: const EdgeInsets.only(top: 40, right: 35.0),
        child:
            ClipRRect(borderRadius: BorderRadius.circular(15.0), child: child),
      ))
    ]));
  }
}
