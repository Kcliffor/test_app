import 'package:equatable/equatable.dart';

class Data extends Equatable {
  final int id;
  final int order;
  final String? orderPrefix;

  const Data({
    required this.id,
    required this.order,
    required this.orderPrefix,
  });

  @override
  List<Object?> get props => [
        id,
        order,
        orderPrefix,
      ];
}
