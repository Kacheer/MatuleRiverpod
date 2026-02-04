
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'input_provider.g.dart';

@riverpod
class InputProvider extends _$InputProvider {
  @override
  String build() => "";

  void update(String newState) => state = newState;

  void clear() => state = "";
}
