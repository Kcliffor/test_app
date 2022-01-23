import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/features/users_list/domain/usecases/get_data.dart';
import 'package:test_app/features/users_list/domain/usecases/send_data.dart';

import 'users_list_event.dart';
import 'users_list_state.dart';

class UsersListBloc extends Bloc<UsersListEvent, FirstState> {
  final GetData getData;
  final SendData sendData;

  UsersListBloc({
    required this.sendData,
    required this.getData,
  }) : super(EmptyState());

  FirstState get initialState => EmptyState();

  @override
  Stream<FirstState> mapEventToState(UsersListEvent event) async* {
    if (event is GetDataEvent) {
      var data = await getData.call();
      yield GetDataState(data: data);
    } else if (event is SendDataEvent) {
      sendData.call(event.data);
    } else if (event is GetUserInfo) {
      yield UserInfoState(id: event.id);
    }
  }
}
