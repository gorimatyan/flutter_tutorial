import 'package:riverpod_annotation/riverpod_annotation.dart';
part 's2.g.dart';

class StateModel {
  StateModel({required this.count, required this.text});
  final int count;
  final String text;
}

@riverpod
class S2Notifier extends _$S2Notifier {
  @override
  StateModel build() {
    // 最初のデータ
    return StateModel(count: 0, text: 'はじめましてて');
  }

  // countを増加させる関数
  void increment() {
    state = StateModel(count: state.count + 1, text: state.text);
  }

  // textを更新する関数
  void updateText(String newText) {
    state = StateModel(count: state.count, text: newText);
  }
}
