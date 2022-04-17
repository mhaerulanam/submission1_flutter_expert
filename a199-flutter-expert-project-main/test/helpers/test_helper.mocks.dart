// Mocks generated by Mockito 5.1.0 from annotations
// in ditonton/test/helpers/test_helper.dart.
// Do not manually edit this file.

import 'dart:async' as _i8;
import 'dart:convert' as _i28;
import 'dart:typed_data' as _i29;

import 'package:dartz/dartz.dart' as _i2;
import 'package:ditonton/common/failure.dart' as _i9;
import 'package:ditonton/common/network_info.dart' as _i27;
import 'package:ditonton/data/datasources/db/database_helper.dart' as _i16;
import 'package:ditonton/data/datasources/db/database_helper_tv_series.dart'
    as _i26;
import 'package:ditonton/data/datasources/movie_local_data_source.dart' as _i14;
import 'package:ditonton/data/datasources/movie_remote_data_source.dart'
    as _i12;
import 'package:ditonton/data/datasources/tv_series_local_data_source.dart'
    as _i24;
import 'package:ditonton/data/datasources/tv_series_remote_data_source.dart'
    as _i22;
import 'package:ditonton/data/models/episode_response.dart' as _i5;
import 'package:ditonton/data/models/movie_detail_model.dart' as _i3;
import 'package:ditonton/data/models/movie_model.dart' as _i13;
import 'package:ditonton/data/models/movie_table.dart' as _i15;
import 'package:ditonton/data/models/tv_series_detail_model.dart' as _i4;
import 'package:ditonton/data/models/tv_series_model.dart' as _i23;
import 'package:ditonton/data/models/tv_series_table.dart' as _i25;
import 'package:ditonton/domain/entities/episode.dart' as _i21;
import 'package:ditonton/domain/entities/movie.dart' as _i10;
import 'package:ditonton/domain/entities/movie_detail.dart' as _i11;
import 'package:ditonton/domain/entities/tv_series.dart' as _i19;
import 'package:ditonton/domain/entities/tv_series_detail.dart' as _i20;
import 'package:ditonton/domain/repositories/movie_repository.dart' as _i7;
import 'package:ditonton/domain/repositories/tv_series_repository.dart' as _i18;
import 'package:http/http.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:sqflite/sqflite.dart' as _i17;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

class _FakeMovieDetailResponse_1 extends _i1.Fake
    implements _i3.MovieDetailResponse {}

class _FakeDetailTvSeriesModel_2 extends _i1.Fake
    implements _i4.DetailTvSeriesModel {}

class _FakeEpisodeResponse_3 extends _i1.Fake implements _i5.EpisodeResponse {}

class _FakeResponse_4 extends _i1.Fake implements _i6.Response {}

class _FakeStreamedResponse_5 extends _i1.Fake implements _i6.StreamedResponse {
}

/// A class which mocks [MovieRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRepository extends _i1.Mock implements _i7.MovieRepository {
  MockMovieRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i10.Movie>>> getNowPlayingMovies() =>
      (super.noSuchMethod(Invocation.method(#getNowPlayingMovies, []),
          returnValue: Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>.value(
              _FakeEither_0<_i9.Failure, List<_i10.Movie>>())) as _i8
          .Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i10.Movie>>> getPopularMovies() =>
      (super.noSuchMethod(Invocation.method(#getPopularMovies, []),
          returnValue: Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>.value(
              _FakeEither_0<_i9.Failure, List<_i10.Movie>>())) as _i8
          .Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i10.Movie>>> getTopRatedMovies() =>
      (super.noSuchMethod(Invocation.method(#getTopRatedMovies, []),
          returnValue: Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>.value(
              _FakeEither_0<_i9.Failure, List<_i10.Movie>>())) as _i8
          .Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, _i11.MovieDetail>> getMovieDetail(
          int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieDetail, [id]),
          returnValue: Future<_i2.Either<_i9.Failure, _i11.MovieDetail>>.value(
              _FakeEither_0<_i9.Failure, _i11.MovieDetail>())) as _i8
          .Future<_i2.Either<_i9.Failure, _i11.MovieDetail>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i10.Movie>>> getMovieRecommendations(
          int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieRecommendations, [id]),
          returnValue: Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>.value(
              _FakeEither_0<_i9.Failure, List<_i10.Movie>>())) as _i8
          .Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i10.Movie>>> searchMovies(
          String? query) =>
      (super.noSuchMethod(Invocation.method(#searchMovies, [query]),
          returnValue: Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>.value(
              _FakeEither_0<_i9.Failure, List<_i10.Movie>>())) as _i8
          .Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, String>> saveWatchlist(
          _i11.MovieDetail? movie) =>
      (super.noSuchMethod(Invocation.method(#saveWatchlist, [movie]),
              returnValue: Future<_i2.Either<_i9.Failure, String>>.value(
                  _FakeEither_0<_i9.Failure, String>()))
          as _i8.Future<_i2.Either<_i9.Failure, String>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, String>> removeWatchlist(
          _i11.MovieDetail? movie) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlist, [movie]),
              returnValue: Future<_i2.Either<_i9.Failure, String>>.value(
                  _FakeEither_0<_i9.Failure, String>()))
          as _i8.Future<_i2.Either<_i9.Failure, String>>);
  @override
  _i8.Future<bool> isAddedToWatchlist(int? id) =>
      (super.noSuchMethod(Invocation.method(#isAddedToWatchlist, [id]),
          returnValue: Future<bool>.value(false)) as _i8.Future<bool>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i10.Movie>>> getWatchlistMovies() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistMovies, []),
          returnValue: Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>.value(
              _FakeEither_0<_i9.Failure, List<_i10.Movie>>())) as _i8
          .Future<_i2.Either<_i9.Failure, List<_i10.Movie>>>);
}

/// A class which mocks [MovieRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRemoteDataSource extends _i1.Mock
    implements _i12.MovieRemoteDataSource {
  MockMovieRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<List<_i13.MovieModel>> getNowPlayingMovies() =>
      (super.noSuchMethod(Invocation.method(#getNowPlayingMovies, []),
              returnValue:
                  Future<List<_i13.MovieModel>>.value(<_i13.MovieModel>[]))
          as _i8.Future<List<_i13.MovieModel>>);
  @override
  _i8.Future<List<_i13.MovieModel>> getPopularMovies() => (super.noSuchMethod(
          Invocation.method(#getPopularMovies, []),
          returnValue: Future<List<_i13.MovieModel>>.value(<_i13.MovieModel>[]))
      as _i8.Future<List<_i13.MovieModel>>);
  @override
  _i8.Future<List<_i13.MovieModel>> getTopRatedMovies() => (super.noSuchMethod(
          Invocation.method(#getTopRatedMovies, []),
          returnValue: Future<List<_i13.MovieModel>>.value(<_i13.MovieModel>[]))
      as _i8.Future<List<_i13.MovieModel>>);
  @override
  _i8.Future<_i3.MovieDetailResponse> getMovieDetail(int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieDetail, [id]),
              returnValue: Future<_i3.MovieDetailResponse>.value(
                  _FakeMovieDetailResponse_1()))
          as _i8.Future<_i3.MovieDetailResponse>);
  @override
  _i8.Future<List<_i13.MovieModel>> getMovieRecommendations(int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieRecommendations, [id]),
              returnValue:
                  Future<List<_i13.MovieModel>>.value(<_i13.MovieModel>[]))
          as _i8.Future<List<_i13.MovieModel>>);
  @override
  _i8.Future<List<_i13.MovieModel>> searchMovies(String? query) =>
      (super.noSuchMethod(Invocation.method(#searchMovies, [query]),
              returnValue:
                  Future<List<_i13.MovieModel>>.value(<_i13.MovieModel>[]))
          as _i8.Future<List<_i13.MovieModel>>);
}

/// A class which mocks [MovieLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieLocalDataSource extends _i1.Mock
    implements _i14.MovieLocalDataSource {
  MockMovieLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<String> insertWatchlist(_i15.MovieTable? movie) =>
      (super.noSuchMethod(Invocation.method(#insertWatchlist, [movie]),
          returnValue: Future<String>.value('')) as _i8.Future<String>);
  @override
  _i8.Future<String> removeWatchlist(_i15.MovieTable? movie) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlist, [movie]),
          returnValue: Future<String>.value('')) as _i8.Future<String>);
  @override
  _i8.Future<_i15.MovieTable?> getMovieById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieById, [id]),
              returnValue: Future<_i15.MovieTable?>.value())
          as _i8.Future<_i15.MovieTable?>);
  @override
  _i8.Future<List<_i15.MovieTable>> getWatchlistMovies() => (super.noSuchMethod(
          Invocation.method(#getWatchlistMovies, []),
          returnValue: Future<List<_i15.MovieTable>>.value(<_i15.MovieTable>[]))
      as _i8.Future<List<_i15.MovieTable>>);
}

/// A class which mocks [DatabaseHelper].
///
/// See the documentation for Mockito's code generation for more information.
class MockDatabaseHelper extends _i1.Mock implements _i16.DatabaseHelper {
  MockDatabaseHelper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i17.Database?> get database =>
      (super.noSuchMethod(Invocation.getter(#database),
              returnValue: Future<_i17.Database?>.value())
          as _i8.Future<_i17.Database?>);
  @override
  _i8.Future<int> insertWatchlist(_i15.MovieTable? movie) =>
      (super.noSuchMethod(Invocation.method(#insertWatchlist, [movie]),
          returnValue: Future<int>.value(0)) as _i8.Future<int>);
  @override
  _i8.Future<int> removeWatchlist(_i15.MovieTable? movie) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlist, [movie]),
          returnValue: Future<int>.value(0)) as _i8.Future<int>);
  @override
  _i8.Future<Map<String, dynamic>?> getMovieById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieById, [id]),
              returnValue: Future<Map<String, dynamic>?>.value())
          as _i8.Future<Map<String, dynamic>?>);
  @override
  _i8.Future<List<Map<String, dynamic>>> getWatchlistMovies() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistMovies, []),
              returnValue: Future<List<Map<String, dynamic>>>.value(
                  <Map<String, dynamic>>[]))
          as _i8.Future<List<Map<String, dynamic>>>);
}

/// A class which mocks [TvSeriesRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvSeriesRepository extends _i1.Mock
    implements _i18.TvSeriesRepository {
  MockTvSeriesRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i19.TvSeries>>> getTvOnTheAir() =>
      (super.noSuchMethod(Invocation.method(#getTvOnTheAir, []),
              returnValue:
                  Future<_i2.Either<_i9.Failure, List<_i19.TvSeries>>>.value(
                      _FakeEither_0<_i9.Failure, List<_i19.TvSeries>>()))
          as _i8.Future<_i2.Either<_i9.Failure, List<_i19.TvSeries>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i19.TvSeries>>>
      getPopularTvSeries() => (super.noSuchMethod(
              Invocation.method(#getPopularTvSeries, []),
              returnValue:
                  Future<_i2.Either<_i9.Failure, List<_i19.TvSeries>>>.value(
                      _FakeEither_0<_i9.Failure, List<_i19.TvSeries>>()))
          as _i8.Future<_i2.Either<_i9.Failure, List<_i19.TvSeries>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i19.TvSeries>>>
      getTopRatedTvSeries() => (super.noSuchMethod(
              Invocation.method(#getTopRatedTvSeries, []),
              returnValue:
                  Future<_i2.Either<_i9.Failure, List<_i19.TvSeries>>>.value(
                      _FakeEither_0<_i9.Failure, List<_i19.TvSeries>>()))
          as _i8.Future<_i2.Either<_i9.Failure, List<_i19.TvSeries>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, _i20.DetailTvSeries>> getTvSeriesDetail(
          int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvSeriesDetail, [id]),
              returnValue:
                  Future<_i2.Either<_i9.Failure, _i20.DetailTvSeries>>.value(
                      _FakeEither_0<_i9.Failure, _i20.DetailTvSeries>()))
          as _i8.Future<_i2.Either<_i9.Failure, _i20.DetailTvSeries>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i19.TvSeries>>>
      getTvSeriesRecommendations(int? id) => (super.noSuchMethod(
              Invocation.method(#getTvSeriesRecommendations, [id]),
              returnValue:
                  Future<_i2.Either<_i9.Failure, List<_i19.TvSeries>>>.value(
                      _FakeEither_0<_i9.Failure, List<_i19.TvSeries>>()))
          as _i8.Future<_i2.Either<_i9.Failure, List<_i19.TvSeries>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, String>> saveWatchlistTvSeries(
          _i20.DetailTvSeries? movie) =>
      (super.noSuchMethod(Invocation.method(#saveWatchlistTvSeries, [movie]),
              returnValue: Future<_i2.Either<_i9.Failure, String>>.value(
                  _FakeEither_0<_i9.Failure, String>()))
          as _i8.Future<_i2.Either<_i9.Failure, String>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, String>> removeWatchlistTvSeries(
          _i20.DetailTvSeries? movie) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlistTvSeries, [movie]),
              returnValue: Future<_i2.Either<_i9.Failure, String>>.value(
                  _FakeEither_0<_i9.Failure, String>()))
          as _i8.Future<_i2.Either<_i9.Failure, String>>);
  @override
  _i8.Future<bool> isAddedToWatchlistTvSeries(int? id) =>
      (super.noSuchMethod(Invocation.method(#isAddedToWatchlistTvSeries, [id]),
          returnValue: Future<bool>.value(false)) as _i8.Future<bool>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i19.TvSeries>>>
      getWatchlistTvSeries() => (super.noSuchMethod(
              Invocation.method(#getWatchlistTvSeries, []),
              returnValue:
                  Future<_i2.Either<_i9.Failure, List<_i19.TvSeries>>>.value(
                      _FakeEither_0<_i9.Failure, List<_i19.TvSeries>>()))
          as _i8.Future<_i2.Either<_i9.Failure, List<_i19.TvSeries>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i21.Episode>>> getTvEpisode(
          int? idTv, int? idEpisode) =>
      (super.noSuchMethod(Invocation.method(#getTvEpisode, [idTv, idEpisode]),
              returnValue:
                  Future<_i2.Either<_i9.Failure, List<_i21.Episode>>>.value(
                      _FakeEither_0<_i9.Failure, List<_i21.Episode>>()))
          as _i8.Future<_i2.Either<_i9.Failure, List<_i21.Episode>>>);
  @override
  _i8.Future<_i2.Either<_i9.Failure, List<_i19.TvSeries>>> searchTv(
          String? query) =>
      (super.noSuchMethod(Invocation.method(#searchTv, [query]),
              returnValue:
                  Future<_i2.Either<_i9.Failure, List<_i19.TvSeries>>>.value(
                      _FakeEither_0<_i9.Failure, List<_i19.TvSeries>>()))
          as _i8.Future<_i2.Either<_i9.Failure, List<_i19.TvSeries>>>);
}

/// A class which mocks [TvSeriesRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvSeriesRemoteDataSource extends _i1.Mock
    implements _i22.TvSeriesRemoteDataSource {
  MockTvSeriesRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<List<_i23.TvSeriesModel>> getTvOnTheAir() => (super.noSuchMethod(
          Invocation.method(#getTvOnTheAir, []),
          returnValue:
              Future<List<_i23.TvSeriesModel>>.value(<_i23.TvSeriesModel>[]))
      as _i8.Future<List<_i23.TvSeriesModel>>);
  @override
  _i8.Future<List<_i23.TvSeriesModel>> getPopularTvSeries() =>
      (super.noSuchMethod(Invocation.method(#getPopularTvSeries, []),
          returnValue: Future<List<_i23.TvSeriesModel>>.value(
              <_i23.TvSeriesModel>[])) as _i8.Future<List<_i23.TvSeriesModel>>);
  @override
  _i8.Future<List<_i23.TvSeriesModel>> getTopRatedTvSeries() =>
      (super.noSuchMethod(Invocation.method(#getTopRatedTvSeries, []),
          returnValue: Future<List<_i23.TvSeriesModel>>.value(
              <_i23.TvSeriesModel>[])) as _i8.Future<List<_i23.TvSeriesModel>>);
  @override
  _i8.Future<_i4.DetailTvSeriesModel> getTvSeriesDetail(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvSeriesDetail, [id]),
              returnValue: Future<_i4.DetailTvSeriesModel>.value(
                  _FakeDetailTvSeriesModel_2()))
          as _i8.Future<_i4.DetailTvSeriesModel>);
  @override
  _i8.Future<List<_i23.TvSeriesModel>> getTvSeriesRecommendations(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvSeriesRecommendations, [id]),
          returnValue: Future<List<_i23.TvSeriesModel>>.value(
              <_i23.TvSeriesModel>[])) as _i8.Future<List<_i23.TvSeriesModel>>);
  @override
  _i8.Future<_i5.EpisodeResponse> getTvEpisode(int? idTv, int? season) =>
      (super.noSuchMethod(Invocation.method(#getTvEpisode, [idTv, season]),
              returnValue:
                  Future<_i5.EpisodeResponse>.value(_FakeEpisodeResponse_3()))
          as _i8.Future<_i5.EpisodeResponse>);
  @override
  _i8.Future<List<_i23.TvSeriesModel>> searchTv(String? query) =>
      (super.noSuchMethod(Invocation.method(#searchTv, [query]),
          returnValue: Future<List<_i23.TvSeriesModel>>.value(
              <_i23.TvSeriesModel>[])) as _i8.Future<List<_i23.TvSeriesModel>>);
}

/// A class which mocks [TvSeriesLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvSeriesLocalDataSource extends _i1.Mock
    implements _i24.TvSeriesLocalDataSource {
  MockTvSeriesLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<String> insertWatchlistTvSeries(_i25.TvSeriesTable? tvSeries) =>
      (super.noSuchMethod(
          Invocation.method(#insertWatchlistTvSeries, [tvSeries]),
          returnValue: Future<String>.value('')) as _i8.Future<String>);
  @override
  _i8.Future<String> removeWatchlistTvSeries(_i25.TvSeriesTable? tvSeries) =>
      (super.noSuchMethod(
          Invocation.method(#removeWatchlistTvSeries, [tvSeries]),
          returnValue: Future<String>.value('')) as _i8.Future<String>);
  @override
  _i8.Future<_i25.TvSeriesTable?> getTvSeriesById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvSeriesById, [id]),
              returnValue: Future<_i25.TvSeriesTable?>.value())
          as _i8.Future<_i25.TvSeriesTable?>);
  @override
  _i8.Future<List<_i25.TvSeriesTable>> getWatchlistTvSeries() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistTvSeries, []),
          returnValue: Future<List<_i25.TvSeriesTable>>.value(
              <_i25.TvSeriesTable>[])) as _i8.Future<List<_i25.TvSeriesTable>>);
}

/// A class which mocks [DatabaseHelperTvSeries].
///
/// See the documentation for Mockito's code generation for more information.
class MockDatabaseHelperTvSeries extends _i1.Mock
    implements _i26.DatabaseHelperTvSeries {
  MockDatabaseHelperTvSeries() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i17.Database?> get database =>
      (super.noSuchMethod(Invocation.getter(#database),
              returnValue: Future<_i17.Database?>.value())
          as _i8.Future<_i17.Database?>);
  @override
  _i8.Future<int> insertWatchlist(_i25.TvSeriesTable? tvSeries) =>
      (super.noSuchMethod(Invocation.method(#insertWatchlist, [tvSeries]),
          returnValue: Future<int>.value(0)) as _i8.Future<int>);
  @override
  _i8.Future<int> removeWatchlist(_i25.TvSeriesTable? tvSeries) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlist, [tvSeries]),
          returnValue: Future<int>.value(0)) as _i8.Future<int>);
  @override
  _i8.Future<Map<String, dynamic>?> getTvSeriesById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvSeriesById, [id]),
              returnValue: Future<Map<String, dynamic>?>.value())
          as _i8.Future<Map<String, dynamic>?>);
  @override
  _i8.Future<List<Map<String, dynamic>>> getWatchlistTvSeries() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistTvSeries, []),
              returnValue: Future<List<Map<String, dynamic>>>.value(
                  <Map<String, dynamic>>[]))
          as _i8.Future<List<Map<String, dynamic>>>);
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i27.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<bool> get isConnected =>
      (super.noSuchMethod(Invocation.getter(#isConnected),
          returnValue: Future<bool>.value(false)) as _i8.Future<bool>);
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpClient extends _i1.Mock implements _i6.Client {
  MockHttpClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i6.Response> head(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#head, [url], {#headers: headers}),
              returnValue: Future<_i6.Response>.value(_FakeResponse_4()))
          as _i8.Future<_i6.Response>);
  @override
  _i8.Future<_i6.Response> get(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#get, [url], {#headers: headers}),
              returnValue: Future<_i6.Response>.value(_FakeResponse_4()))
          as _i8.Future<_i6.Response>);
  @override
  _i8.Future<_i6.Response> post(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i28.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#post, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i6.Response>.value(_FakeResponse_4()))
          as _i8.Future<_i6.Response>);
  @override
  _i8.Future<_i6.Response> put(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i28.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#put, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i6.Response>.value(_FakeResponse_4()))
          as _i8.Future<_i6.Response>);
  @override
  _i8.Future<_i6.Response> patch(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i28.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#patch, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i6.Response>.value(_FakeResponse_4()))
          as _i8.Future<_i6.Response>);
  @override
  _i8.Future<_i6.Response> delete(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i28.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#delete, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i6.Response>.value(_FakeResponse_4()))
          as _i8.Future<_i6.Response>);
  @override
  _i8.Future<String> read(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#read, [url], {#headers: headers}),
          returnValue: Future<String>.value('')) as _i8.Future<String>);
  @override
  _i8.Future<_i29.Uint8List> readBytes(Uri? url,
          {Map<String, String>? headers}) =>
      (super.noSuchMethod(
              Invocation.method(#readBytes, [url], {#headers: headers}),
              returnValue: Future<_i29.Uint8List>.value(_i29.Uint8List(0)))
          as _i8.Future<_i29.Uint8List>);
  @override
  _i8.Future<_i6.StreamedResponse> send(_i6.BaseRequest? request) =>
      (super.noSuchMethod(Invocation.method(#send, [request]),
              returnValue:
                  Future<_i6.StreamedResponse>.value(_FakeStreamedResponse_5()))
          as _i8.Future<_i6.StreamedResponse>);
  @override
  void close() => super.noSuchMethod(Invocation.method(#close, []),
      returnValueForMissingStub: null);
}
