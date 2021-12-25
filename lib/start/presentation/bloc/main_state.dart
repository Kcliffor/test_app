import 'package:equatable/equatable.dart';
import 'package:test_app/start/domain/entities/data.dart';

class MainState extends Equatable {
  @override
  List<Object?> get props => [];
}

class EmptyState extends MainState {}

class GetDataState extends MainState {
  final List<Data> data;

  GetDataState({required this.data});

  @override
  List<Object?> get props => [data];
}
