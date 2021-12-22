import 'dart:math';

class LogModel {
  late final int id;
  final String massage;
  final String stackTrace;
  final int createdAt;

  LogModel({
    required this.massage,
    required this.stackTrace,
    required this.createdAt,
  }) {
    this.id = Random.secure().nextInt(100000);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'message': this.massage,
      'stackTrace': this.stackTrace,
      'createdAt': this.createdAt,
    };
  }

  static LogModel frontMap(Map<String, dynamic> data) {
    return LogModel(
      massage: data['massage'] ?? 'Undifined exception',
      stackTrace: data['stackTrace'] ?? StackTrace.current.toString(),
      createdAt: data['createdAt'] ?? 00,
    );
  }

  List<String> stackTraceList() {
    String pattern = '(#[0-9\\s]*)';
    List<String> s = stackTrace.split(
      RegExp(pattern, multiLine: true),
    );
    return s;
  }

  String formatDate() {
    return DateTime.fromMicrosecondsSinceEpoch(this.createdAt).toString();
  }
}
