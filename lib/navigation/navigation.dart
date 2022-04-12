import 'package:hooks_riverpod/hooks_riverpod.dart';

enum NavigationViews {
  user,
  userDetail,
}

final navigationViewProvider =
    StateProvider<NavigationViews>((_) => NavigationViews.user);
