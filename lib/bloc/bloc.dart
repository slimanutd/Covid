import 'package:bloc/bloc.dart';
import 'package:covid_19/repository/covid_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:covid_19/bloc/event.dart';
import 'package:covid_19/bloc/state.dart';

class CovidBloc extends Bloc<CovidEvent, CovidState> {
  CovidBloc() : super(CovidInitial()) {
    final ApiRepository _apiRepository = ApiRepository();

    on<GetCovidList>((event, emit) async {
      try {
        emit(CovidLoading());
        final mList = await _apiRepository.fetchCovidList();
        emit(CovidLoaded(mList));
        if (mList.error != null) {
          emit(CovidError(mList.error));
        }
      } on NetworkError {
        emit(CovidError("Failed to fetch data. is your device online?"));
      }
    });
  }
}
