import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Expense {
  Expense({required this.title, required this.amanount, required this.date}): id = uuid.v4();

  final String id;
  final String title;
  final double amanount;
  final DateTime date;
}