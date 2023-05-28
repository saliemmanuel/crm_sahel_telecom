import 'package:fluent_ui/fluent_ui.dart';

class CommandBarWidget extends StatelessWidget {
  const CommandBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final simpleCommandBarItems = <CommandBarItem>[
      CommandBarButton(
        icon: const Icon(FluentIcons.add),
        label: const Text('New'),
        onPressed: () {},
      ),
      CommandBarButton(
        icon: const Icon(FluentIcons.delete),
        label: const Text('Delete'),
        onPressed: () {},
      ),
      CommandBarButton(
        icon: const Icon(FluentIcons.archive),
        label: const Text('Archive'),
        onPressed: () {},
      ),
      CommandBarButton(
        icon: const Icon(FluentIcons.move),
        label: const Text('Move'),
        onPressed: () {},
      ),
      const CommandBarButton(
        icon: Icon(FluentIcons.cancel),
        label: Text('Disabled'),
        onPressed: null,
      ),
    ];

    final moreCommandBarItems = <CommandBarItem>[
      CommandBarButton(
        icon: const Icon(FluentIcons.reply),
        label: const Text('Reply'),
        onPressed: () {},
      ),
      CommandBarButton(
        icon: const Icon(FluentIcons.reply_all),
        label: const Text('Reply All'),
        onPressed: () {},
      ),
      CommandBarButton(
        icon: const Icon(FluentIcons.forward),
        label: const Text('Forward'),
        onPressed: () {},
      ),
      CommandBarButton(
        icon: const Icon(FluentIcons.search),
        label: const Text('Search'),
        onPressed: () {},
      ),
      CommandBarButton(
        icon: const Icon(FluentIcons.pin),
        label: const Text('Pin'),
        onPressed: () {},
      ),
      CommandBarButton(
        icon: const Icon(FluentIcons.unpin),
        label: const Text('Unpin'),
        onPressed: () {},
      ),
    ];

    final evenMoreCommandBarItems = <CommandBarItem>[
      CommandBarButton(
        icon: const Icon(FluentIcons.accept),
        label: const Text('Accept'),
        onPressed: () {},
      ),
      CommandBarButton(
        icon: const Icon(FluentIcons.calculator_multiply),
        label: const Text('Reject'),
        onPressed: () {},
      ),
      CommandBarButton(
        icon: const Icon(FluentIcons.share),
        label: const Text('Share'),
        onPressed: () {},
      ),
      CommandBarButton(
        icon: const Icon(FluentIcons.add_favorite),
        label: const Text('Add Favorite'),
        onPressed: () {},
      ),
      CommandBarButton(
        icon: const Icon(FluentIcons.back),
        label: const Text('Backward'),
        onPressed: () {},
      ),
      CommandBarButton(
        icon: const Icon(FluentIcons.forward),
        label: const Text('Forward'),
        onPressed: () {},
      ),
    ];
    return CommandBarCard(
      child: Row(
        children: [
          Expanded(
            child: CommandBar(
              overflowBehavior: CommandBarOverflowBehavior.dynamicOverflow,
              overflowItemAlignment: MainAxisAlignment.end,
              primaryItems: [
                ...simpleCommandBarItems,
                const CommandBarSeparator(),
                ...moreCommandBarItems,
              ],
              secondaryItems: evenMoreCommandBarItems,
            ),
          ),
          // End-aligned button(s)
          CommandBar(
            overflowBehavior: CommandBarOverflowBehavior.noWrap,
            primaryItems: [
              CommandBarButton(
                icon: const Icon(FluentIcons.refresh),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
