import 'package:challenge/models/user_detail_info.dart';
import 'package:challenge/repository/user_repository_impl.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../repository/account_repository_impl.dart';
import '../../response/user.dart';

final userUseCaseProvider = Provider<UserUseCase>(
  (ref) => UserUseCase(ref: ref),
);

class UserUseCase {
  UserUseCase({
    required ProviderRef ref,
  }) : _ref = ref;

  final ProviderRef _ref;

  Future<List<User>> getUsers() async {
    final result = await _ref.read(userRepositoryProvider).fetchUsers();
    return result.when(
        success: (users) {
          return users;
        },
        failure: (error) {
          if (kDebugMode) {
            print(error.message);
          }
          throw error;
        },
    );
  }

  Future<UserDetailInfo> getUserDetailInfoByUserId({required User user}) async {
    final userId = user.id;
    final userName = user.name;
    final result =
        await _ref.read(accountRepositoryProvider).fetchUserAccount(userId: userId);
    return result.when(
      success: (userAccounts) {
        int total = 0;
        for (var element in userAccounts) {
          total = total + element.balance;
        }
        final userDetailInfo = UserDetailInfo(
            userName: userName,
            total: total,
            accounts: userAccounts
        );
        return userDetailInfo;
      },
      failure: (error) {
        if (kDebugMode) {
          print(error.message);
        }
        throw error;
      },
    );
  }
}
