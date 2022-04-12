import 'package:challenge/view_models/user/user_detail_view_model.dart';
import 'package:challenge/widgets/price.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../constants/app_color.dart';
import '../constants/app_font.dart';

class UserDetailView extends HookConsumerWidget {
  const UserDetailView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userDetailViewModelProvider);

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        previousPageTitle: 'User',
        middle: Text(
          'Detail',
          style: TextStyle(
              fontSize: fontSizeMedium
          ),
        ),
        border: Border(bottom: BorderSide.none),
        backgroundColor: challengeWhite,
      ),
      child: SafeArea(
        child: state.when(
            data: (userDetailInfo) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'User:',
                          style: TextStyle(
                            fontSize: fontSizeMedium,
                          ),
                        ),
                        Text(
                          userDetailInfo.userName,
                          style: const TextStyle(
                            fontSize: fontSizeMedium,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Total:',
                          style: TextStyle(
                            fontSize: fontSizeMedium,
                          ),
                        ),
                        Price(price: userDetailInfo.total),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: userDetailInfo.accounts.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                index == 0 ? const Divider(
                                  color: challengeBlack,
                                  thickness: 0.1,
                                ) : Container(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      userDetailInfo.accounts[index].name
                                    ),
                                    Price(price: userDetailInfo.accounts[index].balance)
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            );
                          },
                      ),
                    ),
                  ],
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