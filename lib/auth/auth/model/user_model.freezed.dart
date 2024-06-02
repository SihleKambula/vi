// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserInfor {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserInforCopyWith<UserInfor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInforCopyWith<$Res> {
  factory $UserInforCopyWith(UserInfor value, $Res Function(UserInfor) then) =
      _$UserInforCopyWithImpl<$Res, UserInfor>;
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class _$UserInforCopyWithImpl<$Res, $Val extends UserInfor>
    implements $UserInforCopyWith<$Res> {
  _$UserInforCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInforImplCopyWith<$Res>
    implements $UserInforCopyWith<$Res> {
  factory _$$UserInforImplCopyWith(
          _$UserInforImpl value, $Res Function(_$UserInforImpl) then) =
      __$$UserInforImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class __$$UserInforImplCopyWithImpl<$Res>
    extends _$UserInforCopyWithImpl<$Res, _$UserInforImpl>
    implements _$$UserInforImplCopyWith<$Res> {
  __$$UserInforImplCopyWithImpl(
      _$UserInforImpl _value, $Res Function(_$UserInforImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$UserInforImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserInforImpl implements _UserInfor {
  _$UserInforImpl({required this.name, required this.email});

  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'UserInfor(name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInforImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInforImplCopyWith<_$UserInforImpl> get copyWith =>
      __$$UserInforImplCopyWithImpl<_$UserInforImpl>(this, _$identity);
}

abstract class _UserInfor implements UserInfor {
  factory _UserInfor(
      {required final String name,
      required final String email}) = _$UserInforImpl;

  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$UserInforImplCopyWith<_$UserInforImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
