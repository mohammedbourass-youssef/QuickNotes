import 'package:hive_flutter/hive_flutter.dart';

part 'NotesModal.g.dart';

@HiveType(typeId: 0)
class Notesmodal extends HiveObject{
  @HiveField(0)
  String? title;
  @HiveField(1)
  String? note;
  @HiveField(2)
  final String? date;
  @HiveField(3)
  final int? color;

  Notesmodal({this.title, this.note, this.date, this.color});
}
