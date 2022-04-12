import 'package:challenge/use_case/user/user_use_case.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../global/global_user.dart';
import '../../models/user_detail_info.dart';
import '../../response/user.dart';

final userDetailViewModelProvider =
    StateNotifierProvider.autoDispose<UserDetailViewModel, AsyncValue<UserDetailInfo>>(
  (ref) => UserDetailViewModel(ref: ref, user: ref.read(globalUserProvider.state).state),
);

class UserDetailViewModel extends StateNotifier<AsyncValue<UserDetailInfo>> {
  UserDetailViewModel({
    required AutoDisposeStateNotifierProviderRef ref,
    required User user,
  })  : _ref = ref, _user = user,
        super(const AsyncLoading()) {
    load();
  }

  final AutoDisposeStateNotifierProviderRef _ref;
  final User _user;

  void load() async {
    final userDetailInfo = await _ref
        .read(userUseCaseProvider)
        .getUserDetailInfoByUserId(user: _user);
    state = AsyncValue.data(userDetailInfo);
  }
}
