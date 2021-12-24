import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/start/domain/usecases/get_data.dart';
import 'package:test_app/start/presentation/bloc/main_event.dart';
import 'package:test_app/start/presentation/bloc/main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final GetData getData;

  MainBloc({required this.getData}) : super(EmptyState());

  MainState get initialState => EmptyState();

  @override
  Stream<MainState> mapEventToState(MainEvent event) async* {
    if (event is GetDataEvent) {
      var data = getData.call();
      yield GetDataState(data: data);
    }
  }
}
