import 'package:covid_19/api/covid_api.dart';
import 'package:covid_19/models/covid_model.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<CovidModel> fetchCovidList() {
    return _provider.fetchCovidList();
  }
}

class NetworkError extends Error {}
