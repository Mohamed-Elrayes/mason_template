
import 'package:equatable/equatable.dart';

class {{name.pascalCase()}}Model extends Equatable {
  const {{name.pascalCase()}}Model({
    required this.success,
    required this.status,
    required this.message,
    });

  final bool success;
  final String status;
  final String message;

  factory {{name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) => {{name.pascalCase()}}Model(
        message: json['message'],
        success: json['success'],
        status: json['status'],
      );

  @override
  List<Object> get props => [
        success,
        status,
        message,
      ];
}
