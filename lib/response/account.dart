import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Account {
  final int id;
  final int userId;
  final String name;
  final int balance;

  Account({required this.id, required this.userId, required this.name, required this.balance});

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
  Map<String, dynamic> toJson() => _$AccountToJson(this);
}