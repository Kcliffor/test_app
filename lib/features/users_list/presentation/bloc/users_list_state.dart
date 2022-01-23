import 'package:equatable/equatable.dart';
import 'package:test_app/features/users_list/domain/entities/user_data.dart';

class FirstState extends Equatable {
  @override
  List<Object?> get props => [];
}

class EmptyState extends FirstState {}

class GetDataState extends FirstState {
  final List<UserData> data;

  GetDataState({required this.data});

  @override
  List<Object?> get props => [data];
}

class UserInfoState extends FirstState {
  final int id;

  UserInfoState({required this.id});

  @override
  List<Object?> get props => [id];
}
