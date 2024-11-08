import 'package:intl/intl.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class NoteModel {
  int id;
  String title;
  String comment;
  DateTime? date;

  NoteModel({
    this.id = 0,
    required this.title,
    required this.comment,
    this.date,
  });

  String get dateFormat => DateFormat.MMMd().format(date!);
}
