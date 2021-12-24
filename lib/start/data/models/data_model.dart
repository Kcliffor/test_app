import 'package:test_app/start/domain/entities/data.dart';

class DataModel extends Data {
  final int modelId;
  final int modelOrder;
  final String? modelOrderPrefix;

  const DataModel({
    required this.modelId,
    required this.modelOrder,
    required this.modelOrderPrefix,
  }) : super(
          id: modelId,
          order: modelOrder,
          orderPrefix: modelOrderPrefix,
        );

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        modelId: json['id'],
        modelOrder: json['order'],
        modelOrderPrefix:  json['order_prefix'],
      );
}
