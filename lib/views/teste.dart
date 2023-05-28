import 'package:crm_sahel_telecom/widget/custom_windows_button.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

class Testes extends StatefulWidget {
  const Testes({super.key});

  @override
  State<Testes> createState() => _TestesState();
}

class _TestesState extends State<Testes> {
  int topIndex = 0;

  @override
  Widget build(BuildContext context) {
    final content = [
      Container(color: Colors.red),
      Container(color: Colors.yellow),
      Container(color: Colors.orange),
      Container(color: Colors.black),
    ];

    List<NavigationPaneItem> items = [
      PaneItem(
        icon: const Icon(FluentIcons.home),
        title: const Text('Home'),
        body: content[topIndex],
      ),
      PaneItem(
        icon: const Icon(FluentIcons.home),
        title: const Text('Home'),
        body: content[topIndex],
      ),
    ];
    return NavigationView(
      content: Column(children: [
        WindowTitleBarBox(
          child: Row(children: [
            Expanded(
                child: MoveWindow(
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Sahel Telecom"),
              ),
            )),
            const WindowButtons()
          ]),
        ),
        Expanded(
          child: NavigationView(
            pane: NavigationPane(
              leading: Text("Sahel Telecom"),
              menuButton: const SizedBox(),
              size: const NavigationPaneSize(openMaxWidth: 150.0),
              selected: topIndex,
              onChanged: (index) => setState(() => topIndex = index),
              displayMode: PaneDisplayMode.open,
              items: items,
              footerItems: [
                PaneItem(
                  icon: const Icon(FluentIcons.settings),
                  title: const Text('Settings'),
                  body: content[topIndex],
                ),
                PaneItem(
                  icon: const Icon(FluentIcons.settings),
                  title: const Text('Settings'),
                  body: content[topIndex],
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
