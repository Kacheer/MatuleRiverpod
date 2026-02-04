import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Предполагаем, что у тебя есть inputProvider
final inputProvider = StateProvider<String>((ref) => '');

class BeautifulSearch extends ConsumerStatefulWidget {
  const BeautifulSearch({super.key});

  @override
  ConsumerState<BeautifulSearch> createState() => _BeautifulSearchState();
}

class _BeautifulSearchState extends ConsumerState<BeautifulSearch> {
  final _searchController = SearchController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _searchController.text = ref.read(inputProvider);
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(inputProvider, (prev, next) {
      if (next != _searchController.text) {
        _searchController.text = next;
      }
    });
    final query = ref.watch(inputProvider);
    return SearchAnchor(
      searchController: _searchController,
      builder: (context, controller) {
        return SearchBar(
          controller: controller,
          // ... все стили те же
          trailing: [
            if (query.isNotEmpty)
              IconButton(
                icon: const Icon(Icons.clear_rounded),
                onPressed: () {
                  controller.clear();
                  ref.read(inputProvider.notifier).state = '';
                },
              ),
          ],
          onChanged: (value) => ref.read(inputProvider.notifier).state = value,
          onTap: () => controller.openView(),
        );
      },
      suggestionsBuilder: (context, controller) {
        return [
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('Недавний запрос'),
            onTap: () {
              controller.text = 'Недавний запрос';
              ref.read(inputProvider.notifier).state = 'Недавний запрос';
              controller.closeView("");
            },
          ),
        ];
      },
    );
  }
}