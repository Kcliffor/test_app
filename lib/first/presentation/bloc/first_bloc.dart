import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/first/domain/usecases/get_data.dart';
import 'package:test_app/first/domain/usecases/send_data.dart';

import 'first_event.dart';
import 'first_state.dart';

class FirstBloc extends Bloc<FirstEvent, FirstState> {
  final GetData getData;
  final SendData sendData;

  FirstBloc({
    required this.sendData,
    required this.getData,
  }) : super(EmptyState());

  FirstState get initialState => EmptyState();

  @override
  Stream<FirstState> mapEventToState(FirstEvent event) async* {
    if (event is GetDataEvent) {
      var data = await getData.call();
      yield GetDataState(data: data);
    } else if (event is SendDataEvent) {
      sendData.call(event.data);
    }
  }
}
