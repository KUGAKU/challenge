import 'package:challenge/global/global_user.dart';
import 'package:challenge/navigation/navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../constants/app_color.dart';
import '../constants/app_font.dart';
import '../response/user.dart';
import '../view_models/user/user_view_model.dart';

class UserView extends HookConsumerWidget {
  const UserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userViewModelProvider);

    void goToUserDetail({required User user}) {
      ref.read(globalUserProvider.state).state = user;
      ref.read(navigationViewProvider.state).state = NavigationViews.userDetail;
    }

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
            'User',
          style: TextStyle(
            fontSize: fontSizeMedium
          ),
        ),
        border: Border(bottom: BorderSide.none),
        backgroundColor: challengeWhite,
      ),
      child: SafeArea(
        child: state.when(
          data: (users) {
            return Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: CupertinoScrollbar(
                child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        goToUserDetail(user: users[index]);
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 0.1,
                              ),
                          ),
                        ),
                        padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                        child: Text(
                            users[index].name,
                          style: const TextStyle(
                            fontSize: fontSizeMedium
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          },
          error: (e, msg) => Text(e.toString()),
          loading: () {
            return const Center(
                child: CupertinoActivityIndicator(),
            );
          },
        ),
      ),
    );
  }
}
