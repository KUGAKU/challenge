import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../response/user.dart';

final globalUserProvider =
StateProvider<User>((_) => User(id: 0, name: '',accountIds: []));
