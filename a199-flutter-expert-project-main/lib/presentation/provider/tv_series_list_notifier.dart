import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/get_tv_on_the_air.dart';
import 'package:flutter/cupertino.dart';

class TvSeriesListNotifier extends ChangeNotifier {
  var _tvOnTheAir = <TvSeries>[];
  List<TvSeries> get tvOnTheAir => _tvOnTheAir;

  RequestState _tvOnTheAirState = RequestState.Empty;
  RequestState get tvOnTheAirState => _tvOnTheAirState;

  String _message = '';
  String get message => _message;

  TvSeriesListNotifier({
    required this.getTvOnTheAir,
  });

  final GetTvOnTheAir getTvOnTheAir;

  Future<void> fetchTvOnTheAir() async {
    _tvOnTheAirState = RequestState.Loading;
    notifyListeners();

    final result = await getTvOnTheAir.execute();
    result.fold(
      (failure) {
        _tvOnTheAirState = RequestState.Error;
        _message = failure.message;
        notifyListeners();
      },
      (moviesData) {
        _tvOnTheAirState = RequestState.Loaded;
        _tvOnTheAir = moviesData;
        notifyListeners();
      },
    );
  }
}