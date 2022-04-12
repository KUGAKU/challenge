import 'package:challenge/navigation/navigation.dart';
import 'package:challenge/views/user_detail_view.dart';
import 'package:challenge/views/user_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationView = ref.watch(navigationViewProvider);

    return CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: Navigator(
          pages: [
            const CupertinoPage(
              child: UserView(),
            ),
            if (navigationView == NavigationViews.userDetail)
              const CupertinoPage(
                child: UserDetailView(),
              )
          ],
          onPopPage: (route, result) {
            if (!route.didPop(result)) {
              return false;
            }
            ref.read(navigationViewProvider.state).state = NavigationViews.user;
            return true;
          },
        ),
    );
  }
}
