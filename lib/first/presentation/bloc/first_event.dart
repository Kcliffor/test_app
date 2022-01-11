import 'package:equatable/equatable.dart';
import 'package:test_app/first/domain/entities/user_data.dart';

class FirstEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetDataEvent extends FirstEvent {}

class SendDataEvent extends FirstEvent {
  final List<UserData> data;

  SendDataEvent({required this.data});

  @override
  List<Object?> get props => [data];
}
