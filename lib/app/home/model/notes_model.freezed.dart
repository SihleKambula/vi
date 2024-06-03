// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotesModel {
  String get title => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get transcript => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotesModelCopyWith<NotesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesModelCopyWith<$Res> {
  factory $NotesModelCopyWith(
          NotesModel value, $Res Function(NotesModel) then) =
      _$NotesModelCopyWithImpl<$Res, NotesModel>;
  @useResult
  $Res call({String title, String date, String transcript});
}

/// @nodoc
class _$NotesModelCopyWithImpl<$Res, $Val extends NotesModel>
    implements $NotesModelCopyWith<$Res> {
  _$NotesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? date = null,
    Object? transcript = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      transcript: null == transcript
          ? _value.transcript
          : transcript // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotesModelImplCopyWith<$Res>
    implements $NotesModelCopyWith<$Res> {
  factory _$$NotesModelImplCopyWith(
          _$NotesModelImpl value, $Res Function(_$NotesModelImpl) then) =
      __$$NotesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String date, String transcript});
}

/// @nodoc
class __$$NotesModelImplCopyWithImpl<$Res>
    extends _$NotesModelCopyWithImpl<$Res, _$NotesModelImpl>
    implements _$$NotesModelImplCopyWith<$Res> {
  __$$NotesModelImplCopyWithImpl(
      _$NotesModelImpl _value, $Res Function(_$NotesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? date = null,
    Object? transcript = null,
  }) {
    return _then(_$NotesModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      transcript: null == transcript
          ? _value.transcript
          : transcript // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotesModelImpl implements _NotesModel {
  _$NotesModelImpl(
      {required this.title, required this.date, required this.transcript});

  @override
  final String title;
  @override
  final String date;
  @override
  final String transcript;

  @override
  String toString() {
    return 'NotesModel(title: $title, date: $date, transcript: $transcript)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.transcript, transcript) ||
                other.transcript == transcript));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, date, transcript);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesModelImplCopyWith<_$NotesModelImpl> get copyWith =>
      __$$NotesModelImplCopyWithImpl<_$NotesModelImpl>(this, _$identity);
}

abstract class _NotesModel implements NotesModel {
  factory _NotesModel(
      {required final String title,
      required final String date,
      required final String transcript}) = _$NotesModelImpl;

  @override
  String get title;
  @override
  String get date;
  @override
  String get transcript;
  @override
  @JsonKey(ignore: true)
  _$$NotesModelImplCopyWith<_$NotesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
