import 'package:freezed_annotation/freezed_annotation.dart';

import '../response/account.dart';

part 'user_detail_info.freezed.dart';

@freezed
class UserDetailInfo with _$UserDetailInfo {
  const factory UserDetailInfo({
    required String userName, required int total, required List<Account> accounts,
  }) = _UserDetailInfo;
}