import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chips_provider.g.dart';

@riverpod 
class SelectedChip extends _$SelectedChip {
  @override 
  String build() {
    return "Всё";
  }
  void update(String label) {
    state = label;
  }
}
