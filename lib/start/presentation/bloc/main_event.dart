import 'package:equatable/equatable.dart';
import 'package:test_app/start/domain/entities/data.dart';

class MainEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetDataEvent extends MainEvent {}

class SendDataEvent extends MainEvent {
  final List<Data> data;

  SendDataEvent({required this.data});

  @override
  List<Object?> get props => [data];
}
