import 'package:equatable/equatable.dart';

class ResultModel extends Equatable {
  final List<dynamic> data;

  const ResultModel({
    required this.data,
  });

  factory ResultModel.fromJson(List<dynamic> json) => ResultModel(
        data: json,
      );

  @override
  List<Object?> get props => [data];
}
