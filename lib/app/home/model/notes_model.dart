import 'package:freezed_annotation/freezed_annotation.dart';

part 'notes_model.freezed.dart';

@freezed
class NotesModel with _$NotesModel {
  factory NotesModel(
      {required String title,
      required String date,
      required String transcript}) = _NotesModel;
}
