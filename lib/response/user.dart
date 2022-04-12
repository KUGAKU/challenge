import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class User {
final int id;
final String name;
final List<int> accountIds;


User({required this.id, required this.name, required this.accountIds});

factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

Map<String, dynamic> toJson() => _$UserToJson(this);
}