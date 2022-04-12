import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../response/user.dart';
import '../../use_case/user/user_use_case.dart';

final userViewModelProvider =
    StateNotifierProvider.autoDispose<UserViewModel, AsyncValue<List<User>>>(
  (ref) => UserViewModel(ref: ref),
);

class UserViewModel extends StateNotifier<AsyncValue<List<User>>> {
  UserViewModel({
    required AutoDisposeStateNotifierProviderRef ref,
  })  : _ref = ref,
        super(const AsyncLoading()) {
    load();
  }

  final AutoDisposeStateNotifierProviderRef _ref;

  Future<void> load() async {
    final users = await _ref.read(userUseCaseProvider).getUsers();
    state = AsyncValue.data(users);
  }
}
