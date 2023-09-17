import 'package:hive/hive.dart';
part 'NoteModel.g.dart';

@HiveType(typeId: 0)
class NoteModel {
  @HiveField(0)
  String? title;
  @HiveField(1)
  String? subTitle;
  @HiveField(2)
  String? Date;
  @HiveField(3)
  int? color;

  NoteModel({
    this.title,
    this.subTitle,
    this.Date,
    this.color,
  });
}
