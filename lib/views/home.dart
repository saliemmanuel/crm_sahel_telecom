import 'package:crm_sahel_telecom/config/palette.dart';
import 'package:crm_sahel_telecom/views/components/comptabilite.dart';
import 'package:crm_sahel_telecom/views/components/dash_board.dart';
import 'package:crm_sahel_telecom/views/components/detail.dart';
import 'package:crm_sahel_telecom/views/components/settings.dart';
import 'package:crm_sahel_telecom/views/components/versement.dart';
import 'package:crm_sahel_telecom/widget/widget.dart';
import 'package:fluent_ui/fluent_ui.dart';

import 'components/abonnes.dart';
import 'components/facture.dart';
import 'components/micro_zone.dart';
import 'components/users.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int topIndex = 0;

  @override
  Widget build(BuildContext context) {
    final content = [
      const DashBoard(),
      const UsersViews(),
      const MicroZone(),
      const Abonnes(),
      const Facture(),
      const VersementViews(),
      const Comptabilite(),
      const Settings(),
      const Detail(),
    ];

    List<NavigationPaneItem> items = [
      PaneItem(
          icon: const Icon(FluentIcons.personalize),
          title: const Text('Accueil'),
          body: content[topIndex],
          selectedTileColor:
              ButtonState.all(Palette.primaryColor.withOpacity(0.3))),
      PaneItem(
          icon: const Icon(FluentIcons.user_window),
          title: const Text('Utilisateurs'),
          body: content[topIndex],
          selectedTileColor:
              ButtonState.all(Palette.primaryColor.withOpacity(0.3))),
      PaneItem(
          icon: const Icon(FluentIcons.map_layers),
          title: const Text('Micro-zône'),
          body: content[topIndex],
          selectedTileColor:
              ButtonState.all(Palette.primaryColor.withOpacity(0.3))),
      PaneItem(
          icon: const Icon(FluentIcons.reminder_group),
          title: const Text('Abonnés'),
          body: content[topIndex],
          selectedTileColor:
              ButtonState.all(Palette.primaryColor.withOpacity(0.3))),
      PaneItem(
          icon: const Icon(FluentIcons.ticket),
          title: const Text('Ticket'),
          body: content[topIndex],
          selectedTileColor:
              ButtonState.all(Palette.primaryColor.withOpacity(0.3))),
      PaneItem(
          icon: const Icon(FluentIcons.folder_open),
          title: const Text('Requête'),
          body: content[topIndex],
          selectedTileColor:
              ButtonState.all(Palette.primaryColor.withOpacity(0.3))),
      PaneItem(
          icon: const Icon(FluentIcons.mail),
          title: const Text('Courier'),
          body: content[topIndex],
          selectedTileColor:
              ButtonState.all(Palette.primaryColor.withOpacity(0.3))),
      PaneItem(
          icon: const Icon(FluentIcons.fabric_folder),
          title: const Text('Dossier'),
          body: content[topIndex],
          selectedTileColor:
              ButtonState.all(Palette.primaryColor.withOpacity(0.3))),
      PaneItem(
          icon: const Icon(FluentIcons.repeat_all),
          title: const Text('Transaction'),
          body: content[topIndex],
          selectedTileColor:
              ButtonState.all(Palette.primaryColor.withOpacity(0.3))),
      PaneItem(
          icon: const Icon(FluentIcons.money),
          title: const Text('Comptabilité'),
          body: content[topIndex],
          selectedTileColor:
              ButtonState.all(Palette.primaryColor.withOpacity(0.3))),
    ];
    return BodyApp(
        child: NavigationView(
      transitionBuilder: null,
      pane: NavigationPane(
        indicator: const StickyNavigationIndicator(color: Palette.primaryColor),
        // menuButton: const SizedBox(),
        size: const NavigationPaneSize(openMaxWidth: 160.0),
        selected: topIndex,
        onChanged: (index) => setState(() => topIndex = index),
        displayMode: PaneDisplayMode.open,
        items: items,
        footerItems: [
          PaneItem(
            icon: const Icon(FluentIcons.settings),
            title: const Text('Paramèttres'),
            body: content[topIndex],
          ),
          PaneItem(
            icon: const Icon(FluentIcons.info),
            title: const Text('Info'),
            body: content[topIndex],
          ),
        ],
      ),
    ));
  }
}
