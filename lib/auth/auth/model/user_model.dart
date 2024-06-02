import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
class UserInfor with _$UserInfor {
  factory UserInfor({required String name, required String email}) = _UserInfor;
}
