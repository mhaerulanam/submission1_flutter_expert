import 'package:ditonton/common/exception.dart';
import 'package:ditonton/data/datasources/db/database_helper.dart';
import 'package:ditonton/data/datasources/db/database_helper_tv_series.dart';
import 'package:ditonton/data/models/movie_table.dart';
import 'package:ditonton/data/models/tv_series_table.dart';
import 'package:ditonton/data/models/tv_series_table.dart';
import 'package:ditonton/data/models/tv_series_table.dart';
import 'package:ditonton/data/models/tv_series_table.dart';
import 'package:ditonton/data/models/tv_series_table.dart';
import 'package:ditonton/data/models/tv_series_table.dart';
import 'package:ditonton/data/models/tv_series_table.dart';
import 'package:ditonton/data/models/tv_series_table.dart';
import 'package:ditonton/data/models/tv_series_table.dart';

abstract class TvSeriesLocalDataSource {
  Future<String> insertWatchlistTvSeries(TvSeriesTable TvSeries);
  Future<String> removeWatchlistTvSeries(TvSeriesTable TvSeries);
  Future<TvSeriesTable?> getTvSeriesById(int id);
  Future<List<TvSeriesTable>> getWatchlistTvSeries();
}

class TvSeriesLocalDataSourceImpl implements TvSeriesLocalDataSource {
  final DatabaseHelperTvSeries databaseHelperTvSeries;

  TvSeriesLocalDataSourceImpl({required this.databaseHelperTvSeries});

  @override
  Future<String> insertWatchlistTvSeries(TvSeriesTable TvSeries) async {
    try {
      await databaseHelperTvSeries.insertWatchlist(TvSeries);
      return 'Added to Watchlist';
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future<String> removeWatchlistTvSeries(TvSeriesTable TvSeries) async {
    try {
      await databaseHelperTvSeries.removeWatchlist(TvSeries);
      return 'Removed from Watchlist';
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future<TvSeriesTable?> getTvSeriesById(int id) async {
    final result = await databaseHelperTvSeries.getTvSeriesById(id);
    if (result != null) {
      return TvSeriesTable.fromMap(result);
    } else {
      return null;
    }
  }

  @override
  Future<List<TvSeriesTable>> getWatchlistTvSeries() async {
    final result = await databaseHelperTvSeries.getWatchlistTvSeries();
    return result.map((data) => TvSeriesTable.fromMap(data)).toList();
  }
}
