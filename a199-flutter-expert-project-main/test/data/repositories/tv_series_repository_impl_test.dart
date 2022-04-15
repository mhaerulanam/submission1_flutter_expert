// import 'dart:io';
//
// import 'package:dartz/dartz.dart';
// import 'package:ditonton/data/models/episode_response.dart';
// import 'package:ditonton/data/models/genre_model.dart';
// import 'package:ditonton/data/models/movie_detail_model.dart';
// import 'package:ditonton/data/models/movie_model.dart';
// import 'package:ditonton/data/models/tv_series_model.dart';
// import 'package:ditonton/data/repositories/movie_repository_impl.dart';
// import 'package:ditonton/common/exception.dart';
// import 'package:ditonton/common/failure.dart';
// import 'package:ditonton/data/repositories/tv_series_repository_impl.dart';
// import 'package:ditonton/domain/entities/movie.dart';
// import 'package:ditonton/domain/entities/tv_series.dart';
// import 'package:ditonton/domain/entities/tv_series_detail.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
//
// import '../../dummy_data/dummy_objects.dart';
// import '../../helpers/test_helper.mocks.dart';
//
// void main() {
//   late TvSeriesRepositoryImpl repository;
//   late MockTvSeriesRemoteDataSource mockRemoteDataSource;
//   late MockTvSeriesLocalDataSource mockLocalDataSource;
//   late MockNetworkInfo mockNetworkInfo;
//
//   setUp(() {
//     mockRemoteDataSource = MockTvSeriesRemoteDataSource();
//     mockLocalDataSource = MockTvSeriesLocalDataSource();
//     repository = TvSeriesRepositoryImpl(
//       remoteDataSource: mockRemoteDataSource,
//       localDataSource: mockLocalDataSource,
//     );
//   });
//
//   final tTvModel = TvSeriesModel(
//     voteCount: 29,
//     voteAverage: 5.8,
//     backdropPath: '/oC9SgtJTDCEpWnTBtVGoAvjl5hb.jpg',
//     posterPath: '/dsAJhCLYX1fiNRoiiJqR6Up4aJ.jpg',
//     popularity: 2907.317,
//     overview:
//     "Rachael Ray, also known as The Rachael Ray Show, is an American talk show starring Rachael Ray that debuted in syndication in the United States and Canada on September 18, 2006. It is filmed at Chelsea Television Studios in New York City. The show's 8th season premiered on September 9, 2013, and became the last Harpo show in syndication to switch to HD with a revamped studio.",
//     originalName: 'Rachael Ray',
//     originalLanguage: 'en',
//     originCountry: const ['US'],
//     name: 'Rachael Ray',
//     id: 1991,
//     genreIds: const [10767],
//     firstAirDate: '2006-09-18',
//   );
//
//   final tTv = TvSeries(
//     voteCount: 29,
//     voteAverage: 5.8,
//     backdropPath: '/oC9SgtJTDCEpWnTBtVGoAvjl5hb.jpg',
//     posterPath: '/dsAJhCLYX1fiNRoiiJqR6Up4aJ.jpg',
//     popularity: 2907.317,
//     overview:
//     "Rachael Ray, also known as The Rachael Ray Show, is an American talk show starring Rachael Ray that debuted in syndication in the United States and Canada on September 18, 2006. It is filmed at Chelsea Television Studios in New York City. The show's 8th season premiered on September 9, 2013, and became the last Harpo show in syndication to switch to HD with a revamped studio.",
//     originalName: 'Rachael Ray',
//     originalLanguage: 'en',
//     originCountry: const ['US'],
//     name: 'Rachael Ray',
//     id: 1991,
//     genreIds: const [10767],
//     firstAirDate: '2006-09-18',
//   );
//
//   final tTvEpisode = Episode(
//     airDate: "2006-09-18",
//     episodeNumber: 1,
//     id: 24809,
//     name: "Rachael's Premiere",
//     overview: "",
//     productionCode: "",
//     seasonNumber: 1,
//     stillPath: null,
//     voteAverage: 0.0,
//     voteCount: 0.0,
//   );
//
//   final tTvModelList = <TvSeriesModel>[tTvModel];
//   final tTvList = <TvSeries>[tTv];
//   final tTvEpisodeList = <Episode>[tTvEpisode];
//   group('On The Air Tv', () {
//     test(
//         'should return remote data when the call to remote data source is successful',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.getTvOnTheAir())
//               .thenAnswer((_) async => tTvModelList);
//           // act
//           final result = await repository.getTvOnTheAir();
//           // assert
//           verify(mockRemoteDataSource.getTvOnTheAir());
//           /* workaround to test List in Right. Issue: https://github.com/spebbe/dartz/issues/80 */
//           final resultList = result.getOrElse(() => []);
//           expect(resultList, tTvList);
//         });
//
//     test(
//         'should return server failure when the call to remote data source is unsuccessful',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.getTvOnTheAir())
//               .thenThrow(ServerException());
//           // act
//           final result = await repository.getTvOnTheAir();
//           // assert
//           verify(mockRemoteDataSource.getTvOnTheAir());
//           expect(
//               result,
//               equals(
//                   const Left(ServerFailure('Failed to connect to the server'))));
//         });
//
//     test(
//         'should return connection failure when the device is not connected to internet',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.getTvOnTheAir()).thenThrow(
//               const SocketException('Failed to connect to the network'));
//           // act
//           final result = await repository.getTvOnTheAir();
//           // assert
//           verify(mockRemoteDataSource.getTvOnTheAir());
//           expect(
//               result,
//               equals(const Left(
//                   ConnectionFailure('Failed to connect to the network'))));
//         });
//   });
//
//   group('Popular Tv', () {
//     test('should return tv list when call to data source is success',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.getPopularTvSeries())
//               .thenAnswer((_) async => tTvModelList);
//           // act
//           final result = await repository.getPopularTvSeries();
//           // assert
//           /* workaround to test List in Right. Issue: https://github.com/spebbe/dartz/issues/80 */
//           final resultList = result.getOrElse(() => []);
//           expect(resultList, tTvList);
//         });
//
//     test(
//         'should return server failure when call to data source is unsuccessful',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.getPopularTvSeries()).thenThrow(ServerException());
//           // act
//           final result = await repository.getPopularTvSeries();
//           // assert
//           expect(result,
//               const Left(ServerFailure('Failed to connect to the server')));
//         });
//
//     test(
//         'should return connection failure when device is not connected to the internet',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.getPopularTvSeries()).thenThrow(
//               const SocketException('Failed to connect to the network'));
//           // act
//           final result = await repository.getPopularTvSeries();
//           // assert
//           expect(result,
//               const Left(ConnectionFailure('Failed to connect to the network')));
//         });
//   });
//
//   group('Top Rated Tv', () {
//     test('should return tv list when call to data source is successful',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.getTopRatedTvSeries())
//               .thenAnswer((_) async => tTvModelList);
//           // act
//           final result = await repository.getTopRatedTvSeries();
//           // assert
//           /* workaround to test List in Right. Issue: https://github.com/spebbe/dartz/issues/80 */
//           final resultList = result.getOrElse(() => []);
//           expect(resultList, tTvList);
//         });
//
//     test(
//         'should return ServerFailure when call to data source is unsuccessful',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.getTopRatedTvSeries()).thenThrow(ServerException());
//           // act
//           final result = await repository.getTopRatedTvSeries();
//           // assert
//           expect(result,
//               const Left(ServerFailure('Failed to connect to the server')));
//         });
//
//     test(
//         'should return ConnectionFailure when device is not connected to the internet',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.getTopRatedTvSeries()).thenThrow(
//               const SocketException('Failed to connect to the network'));
//           // act
//           final result = await repository.getTopRatedTvSeries();
//           // assert
//           expect(result,
//               const Left(ConnectionFailure('Failed to connect to the network')));
//         });
//   });
//
//   group('Get Tv Detail', () {
//     const tId = 1991;
//     final tTvResponse = DetailTvSeries(
//       voteCount: 29,
//       voteAverage: 5.8,
//       backdropPath: '/oC9SgtJTDCEpWnTBtVGoAvjl5hb.jpg',
//       posterPath: '/dsAJhCLYX1fiNRoiiJqR6Up4aJ.jpg',
//       popularity: 2907.317,
//       overview:
//       "Rachael Ray, also known as The Rachael Ray Show, is an American talk show starring Rachael Ray that debuted in syndication in the United States and Canada on September 18, 2006. It is filmed at Chelsea Television Studios in New York City. The show's 8th season premiered on September 9, 2013, and became the last Harpo show in syndication to switch to HD with a revamped studio.",
//       originalName: 'Rachael Ray',
//       originalLanguage: 'en',
//       originCountry: const ['US'],
//       name: 'Rachael Ray',
//       id: 1991,
//       genres: const [GenreModel(id: 10767, name: "Talk")],
//       firstAirDate: DateTime(2006, 09, 18),
//       lastAirDate: DateTime(2021, 10, 19),
//       episodeRunTime: const [60, 42],
//       homepage: "http://www.rachaelrayshow.com/",
//       type: "Talk Show",
//       tagline: "",
//       status: "Returning Series",
//       inProduction: true,
//       numberOfSeasons: 13,
//       numberOfEpisodes: 1051,
//       languages: const ["en"],
//       nextEpisodeToAir: const {
//         "air_date": "2021-10-20",
//         "episode_number": 28,
//         "id": 3286382,
//         "name":
//         "Jeremy Sisto Dishes on \"Law & Order\" Revival + Rach's Greek-Style Burger Patties",
//         "overview":
//         "\"FBI's\" Jeremy Sisto is talking about the newest season of the hit show and dishing on the \"Law & Order\" revival. Plus, makeovers are BACK! Clinton Kelly is hooking up an inspiring Philadelphia police officer with our first makeover back in the studio. Later, a real-life spy shares safety tips. For dinner, Rachael's making delish Greek-style burger patties.",
//         "production_code": "",
//         "season_number": 16,
//         "still_path": null,
//         "vote_average": 0.0,
//         "vote_count": 0
//       }, adult: null, productionCountries: [], spokenLanguages: [], createdBy: [], seasons: [],
//     );
//
//     test(
//         'should return Tv data when the call to remote data source is successful',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.getTvDetail(tId))
//               .thenAnswer((_) async => tTvResponse);
//           // act
//           final result = await repository.getTvDetail(tId);
//           // assert
//           verify(mockRemoteDataSource.getTvDetail(tId));
//           expect(result, equals(Right(testTvDetail)));
//         });
//
//     test(
//         'should return Server Failure when the call to remote data source is unsuccessful',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.getTvDetail(tId))
//               .thenThrow(ServerException());
//           // act
//           final result = await repository.getTvDetail(tId);
//           // assert
//           verify(mockRemoteDataSource.getTvDetail(tId));
//           expect(
//               result,
//               equals(
//                   const Left(ServerFailure('Failed to connect to the server'))));
//         });
//
//     test(
//         'should return connection failure when the device is not connected to internet',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.getTvDetail(tId)).thenThrow(
//               const SocketException('Failed to connect to the network'));
//           // act
//           final result = await repository.getTvDetail(tId);
//           // assert
//           verify(mockRemoteDataSource.getTvDetail(tId));
//           expect(
//               result,
//               equals(const Left(
//                   ConnectionFailure('Failed to connect to the network'))));
//         });
//   });
//
//   group('Get Tv Recommendations', () {
//     final tTvList = <TvModel>[];
//     const tId = 1;
//
//     test('should return data (tv list) when the call is successful',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.getTvRecommendations(tId))
//               .thenAnswer((_) async => tTvList);
//           // act
//           final result = await repository.getTvRecommendations(tId);
//           // assert
//           verify(mockRemoteDataSource.getTvRecommendations(tId));
//           /* workaround to test List in Right. Issue: https://github.com/spebbe/dartz/issues/80 */
//           final resultList = result.getOrElse(() => []);
//           expect(resultList, equals(tTvList));
//         });
//
//     test(
//         'should return server failure when call to remote data source is unsuccessful',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.getTvRecommendations(tId))
//               .thenThrow(ServerException());
//           // act
//           final result = await repository.getTvRecommendations(tId);
//           // assert
//           verify(mockRemoteDataSource.getTvRecommendations(tId));
//           expect(
//               result,
//               equals(
//                   const Left(ServerFailure('Failed to connect to the server'))));
//         });
//
//     test(
//         'should return connection failure when the device is not connected to the internet',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.getTvRecommendations(tId)).thenThrow(
//               const SocketException('Failed to connect to the network'));
//           // act
//           final result = await repository.getTvRecommendations(tId);
//           // assert
//           verify(mockRemoteDataSource.getTvRecommendations(tId));
//           expect(
//               result,
//               equals(const Left(
//                   ConnectionFailure('Failed to connect to the network'))));
//         });
//   });
//
//   group('Search Tv', () {
//     const tQuery = 'spiderman';
//
//     test('should return tv list when call to data source is successful',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.searchTv(tQuery))
//               .thenAnswer((_) async => tTvModelList);
//           // act
//           final result = await repository.searchTv(tQuery);
//           // assert
//           /* workaround to test List in Right. Issue: https://github.com/spebbe/dartz/issues/80 */
//           final resultList = result.getOrElse(() => []);
//           expect(resultList, tTvList);
//         });
//
//     test(
//         'should return ServerFailure when call to data source is unsuccessful',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.searchTv(tQuery))
//               .thenThrow(ServerException());
//           // act
//           final result = await repository.searchTv(tQuery);
//           // assert
//           expect(result,
//               const Left(ServerFailure('Failed to connect to the server')));
//         });
//
//     test(
//         'should return ConnectionFailure when device is not connected to the internet',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.searchTv(tQuery)).thenThrow(
//               const SocketException('Failed to connect to the network'));
//           // act
//           final result = await repository.searchTv(tQuery);
//           // assert
//           expect(result,
//               const Left(ConnectionFailure('Failed to connect to the network')));
//         });
//   });
//
//   group('save watchlist', () {
//     test('should return success message when saving successful', () async {
//       // arrange
//       when(mockLocalDataSource.insertWatchlist(testTvTable))
//           .thenAnswer((_) async => 'Added to Watchlist');
//       // act
//       final result = await repository.saveTvWatchlist(testTvDetail);
//       // assert
//       expect(result, const Right('Added to Watchlist'));
//     });
//
//     test('should return DatabaseFailure when saving unsuccessful', () async {
//       // arrange
//       when(mockLocalDataSource.insertWatchlist(testTvTable))
//           .thenThrow(DatabaseException('Failed to add watchlist'));
//       // act
//       final result = await repository.saveTvWatchlist(testTvDetail);
//       // assert
//       expect(result, const Left(DatabaseFailure('Failed to add watchlist')));
//     });
//   });
//
//   group('remove watchlist', () {
//     test('should return success message when remove successful', () async {
//       // arrange
//       when(mockLocalDataSource.removeWatchlist(testTvTable))
//           .thenAnswer((_) async => 'Removed from watchlist');
//       // act
//       final result = await repository.removeTvWatchlist(testTvDetail);
//       // assert
//       expect(result, const Right('Removed from watchlist'));
//     });
//
//     test('should return DatabaseFailure when remove unsuccessful', () async {
//       // arrange
//       when(mockLocalDataSource.removeWatchlist(testTvTable))
//           .thenThrow(DatabaseException('Failed to remove watchlist'));
//       // act
//       final result = await repository.removeTvWatchlist(testTvDetail);
//       // assert
//       expect(
//           result, const Left(DatabaseFailure('Failed to remove watchlist')));
//     });
//   });
//
//   group('get watchlist status', () {
//     test('should return watch status whether data is found', () async {
//       // arrange
//       const tId = 1;
//       when(mockLocalDataSource.getTvById(tId)).thenAnswer((_) async => null);
//       // act
//       final result = await repository.isAddedToTvWatchlist(tId);
//       // assert
//       expect(result, false);
//     });
//   });
//
//   group('get watchlist tvs', () {
//     test('should return list of Tv', () async {
//       // arrange
//       when(mockLocalDataSource.getWatchlistFilms())
//           .thenAnswer((_) async => [testTvTable]);
//       // act
//       final result = await repository.getWatchlistFilms();
//       // assert
//       final resultList = result.getOrElse(() => []);
//       expect(resultList, [testWatchlistTv]);
//     });
//   });
//
//   group('Get Tv Episodes', () {
//     final tTvEpisode = EpisodeResponse(
//       id: "52571e1819c2957114101a1a",
//       airDate: DateTime(2006, 09, 18),
//       episodes: tTvEpisodeList,
//       name: "Season 1",
//       overview: "",
//       episodeResponseId: 1438,
//       posterPath: null,
//       seasonNumber: 1,
//     );
//     const tId = 500;
//     const tEpisode = 0;
//
//     test('should return data (episode tv list) when the call is successful',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.getTvEpisode(tId, tEpisode))
//               .thenAnswer((_) async => tTvEpisode);
//           // act
//           final result = await repository.getTvEpisode(tId, tEpisode);
//           // assert
//           verify(mockRemoteDataSource.getTvEpisode(tId, tEpisode));
//           /* workaround to test List in Right. Issue: https://github.com/spebbe/dartz/issues/80 */
//           final resultList = result.getOrElse(() => []);
//           expect(resultList, equals(tTvEpisodeList));
//         });
//
//     test(
//         'should return server failure when call to remote data source is unsuccessful',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.getTvEpisode(tId, tEpisode))
//               .thenThrow(ServerException());
//           // act
//           final result = await repository.getTvEpisode(tId, tEpisode);
//           // assert
//           verify(mockRemoteDataSource.getTvEpisode(tId, tEpisode));
//           expect(
//               result,
//               equals(
//                   const Left(ServerFailure('Failed to connect to the server'))));
//         });
//
//     test(
//         'should return connection failure when the device is not connected to the internet',
//             () async {
//           // arrange
//           when(mockRemoteDataSource.getTvEpisode(tId, tEpisode)).thenThrow(
//               const SocketException('Failed to connect to the network'));
//           // act
//           final result = await repository.getTvEpisode(tId, tEpisode);
//           // assert
//           verify(mockRemoteDataSource.getTvEpisode(tId, tEpisode));
//           expect(
//               result,
//               equals(const Left(
//                   ConnectionFailure('Failed to connect to the network'))));
//         });
//   });
// }
