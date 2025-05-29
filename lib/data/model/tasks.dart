// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';
import 'package:todo/utils/utils.dart';

class Task extends Equatable {
  final int? id;
  final String title;
  final String note;
  final TaskCategories category;
  final String time;
  final String date;
  final bool isCompleted;
  const Task({
    this.id,
    required this.title,
    required this.category,
    required this.time,
    required this.date,
    required this.note,
    required this.isCompleted,
  });

  @override
  List<Object> get props {
    return [
    
      title,
      note,
      time,
      date,
      isCompleted,
    ];
  }
}
