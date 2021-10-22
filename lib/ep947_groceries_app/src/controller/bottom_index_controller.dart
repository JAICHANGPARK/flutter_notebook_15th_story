import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomIndexProvider = StateNotifierProvider((ref) => 0);

class BottomIndexController extends StateNotifier<int> {
  BottomIndexController(int state) : super(state);
  setIndex(int i) => state = i;
}
