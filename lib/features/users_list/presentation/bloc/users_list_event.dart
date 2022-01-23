import 'package:equatable/equatable.dart';
import 'package:test_app/features/users_list/domain/entities/user_data.dart';

class UsersListEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetDataEvent extends UsersListEvent {}

class GetUserInfo extends UsersListEvent {
  final int id;

  GetUserInfo({required this.id});

  @override
  List<Object?> get props => [id];
}

class SendDataEvent extends UsersListEvent {
  final List<UserData> data;

  SendDataEvent({required this.data});

  @override
  List<Object?> get props => [data];
}
