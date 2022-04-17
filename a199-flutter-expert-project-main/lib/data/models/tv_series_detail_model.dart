import 'dart:convert';

import 'package:ditonton/data/models/production_country_model.dart';
import 'package:ditonton/data/models/season_model.dart';
import 'package:ditonton/data/models/spoken_language_model.dart';
import 'package:ditonton/domain/entities/tv_series_detail.dart';
import 'package:equatable/equatable.dart';
import 'created_by_model.dart';
import 'genre_model.dart';

class DetailTvSeriesModel extends Equatable {
  DetailTvSeriesModel({
    required this.adult,
    required this.backdropPath,
    required this.createdBy,
    required this.episodeRunTime,
    required this.firstAirDate,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.inProduction,
    required this.languages,
    required this.lastAirDate,
    required this.lastEpisodeToAir,
    required this.name,
    required this.nextEpisodeToAir,
    required this.networks,
    required this.numberOfEpisodes,
    required this.numberOfSeasons,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalName,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.productionCompanies,
    required this.productionCountries,
    required this.seasons,
    required this.spokenLanguages,
    required this.status,
    required this.tagline,
    required this.type,
    required this.voteAverage,
    required this.voteCount,
  });

  final bool? adult;
  final String? backdropPath;
  final List<CreatedByModel>? createdBy;
  final List<int>? episodeRunTime;
  final String? firstAirDate;
  final List<GenreModel>? genres;
  final String homepage;
  final int id;
  final bool? inProduction;
  final List<String>? languages;
  final String lastAirDate;
  final LastEpisodeToAir? lastEpisodeToAir;
  final String? name;
  final dynamic nextEpisodeToAir;
  final List<Network>? networks;
  final int numberOfEpisodes;
  final int numberOfSeasons;
  final List<String>? originCountry;
  final String? originalLanguage;
  final String? originalName;
  final String? overview;
  final double popularity;
  final String? posterPath;
  final List<Network>? productionCompanies;
  final List<ProductionCountryModel>? productionCountries;
  final List<SeasonModel>? seasons;
  final List<SpokenLanguageModel>? spokenLanguages;
  final String? status;
  final String? tagline;
  final String? type;
  final double? voteAverage;
  final int voteCount;

  factory DetailTvSeriesModel.fromJson(String str) =>
      DetailTvSeriesModel.fromMap(json.decode(str));

  factory DetailTvSeriesModel.fromMap(Map<String, dynamic> json) =>
      DetailTvSeriesModel(
        backdropPath: json["backdrop_path"],
        createdBy: json["created_by"] == null
            ? null
            : List<CreatedByModel>.from(
                json["created_by"].map((x) => CreatedByModel.fromJson(x))),
        episodeRunTime: json["episode_run_time"] == null
            ? null
            : List<int>.from(json["episode_run_time"].map((x) => x)),
        firstAirDate:
            json["first_air_date"] == null ? null : json["first_air_date"],
        genres: json["genres"] == null
            ? null
            : List<GenreModel>.from(
                json["genres"].map((x) => GenreModel.fromJson(x))),
        homepage: json["homepage"],
        id: json["id"],
        inProduction: json["in_production"],
        languages: json["languages"] == null
            ? null
            : List<String>.from(json["languages"].map((x) => x)),
        lastAirDate:
            json["last_air_date"] == null ? null : json["last_air_date"],
        lastEpisodeToAir: LastEpisodeToAir.fromMap(json["last_episode_to_air"]),
        name: json["name"],
        nextEpisodeToAir: json["next_episode_to_air"],
        networks: json["networks"] == null
            ? null
            : List<Network>.from(
                json["networks"].map((x) => Network.fromMap(x))),
        numberOfEpisodes: json["number_of_episodes"],
        numberOfSeasons: json["number_of_seasons"],
        originCountry: json["origin_country"] == null
            ? null
            : List<String>.from(json["origin_country"].map((x) => x)),
        originalLanguage: json["original_language"],
        originalName: json["original_name"],
        overview: json["overview"],
        popularity: json["popularity"].toDouble(),
        posterPath: json["poster_path"],
        productionCompanies: json["production_companies"] == null
            ? null
            : List<Network>.from(
                json["production_companies"].map((x) => Network.fromMap(x))),
        productionCountries: json["production_countries"] == null
            ? null
            : List<ProductionCountryModel>.from(json["production_countries"]
                .map((x) => ProductionCountryModel.fromJson(x))),
        seasons: json["seasons"] == null
            ? null
            : List<SeasonModel>.from(
                json["seasons"].map((x) => SeasonModel.fromMap(x))),
        spokenLanguages: json["spoken_languages"] == null
            ? null
            : List<SpokenLanguageModel>.from(json["spoken_languages"]
                .map((x) => SpokenLanguageModel.fromJson(x))),
        status: json["status"],
        tagline: json["tagline"],
        type: json["type"],
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
        adult: json["adult"],
      );

  DetailTvSeries toEntity() {
    return DetailTvSeries(
        adult: adult!,
        backdropPath: backdropPath,
        createdBy: createdBy!.map((create) => create.toEntity()).toList(),
        episodeRunTime: episodeRunTime,
        firstAirDate: firstAirDate!,
        genres: genres!.map((genre) => genre.toEntity()).toList(),
        homepage: homepage,
        id: id,
        inProduction: inProduction,
        languages: languages!,
        lastAirDate: lastAirDate,
        name: name,
        nextEpisodeToAir: nextEpisodeToAir,
        numberOfEpisodes: numberOfEpisodes,
        numberOfSeasons: numberOfSeasons,
        originCountry: originCountry!,
        originalLanguage: originalLanguage,
        originalName: originalName,
        overview: overview!,
        popularity: popularity,
        posterPath: posterPath!,
        productionCountries: productionCountries!.map((production)
            => production.toEntity()).toList(),
        seasons: seasons!.map((genre) => genre.toEntity()).toList(),
        spokenLanguages: spokenLanguages!.map((spoken)
          => spoken.toEntity()).toList(),
        status: status,
        tagline: tagline!,
        type: type!,
        voteAverage: voteAverage!,
        voteCount: voteCount);
  }

  @override
  List<Object?> get props => [
        adult,
        backdropPath,
        createdBy,
        episodeRunTime,
        firstAirDate,
        genres,
        homepage,
        id,
        inProduction,
        languages,
        lastAirDate,
        lastEpisodeToAir,
        name,
        nextEpisodeToAir,
        networks,
        numberOfEpisodes,
        numberOfSeasons,
        originCountry,
        originalLanguage,
        originalName,
        overview,
        popularity,
        posterPath,
        productionCompanies,
        productionCountries,
        seasons,
        spokenLanguages,
        status,
        tagline,
        type,
        voteAverage,
        voteCount,
      ];
}

class LastEpisodeToAir extends Equatable {
  LastEpisodeToAir({
    this.airDate,
    this.episodeNumber,
    this.id,
    this.name,
    this.overview,
    this.productionCode,
    this.seasonNumber,
    this.stillPath,
    this.voteAverage,
    this.voteCount,
  });

  final DateTime? airDate;
  final int? episodeNumber;
  final int? id;
  final String? name;
  final String? overview;
  final String? productionCode;
  final int? seasonNumber;
  final String? stillPath;
  final num? voteAverage;
  final int? voteCount;

  factory LastEpisodeToAir.fromMap(Map<String, dynamic> json) =>
      LastEpisodeToAir(
        airDate:
            json["air_date"] == null ? null : DateTime.parse(json["air_date"]),
        episodeNumber: json["episode_number"],
        id: json["id"],
        name: json["name"],
        overview: json["overview"],
        productionCode: json["production_code"],
        seasonNumber: json["season_number"],
        stillPath: json["still_path"],
        voteAverage: json["vote_average"],
        voteCount: json["vote_count"],
      );

  @override
  List<Object?> get props => [
        airDate,
        episodeNumber,
        id,
        name,
        overview,
        productionCode,
        seasonNumber,
        stillPath,
        voteAverage,
        voteCount,
      ];
}

class Network extends Equatable {
  Network({
    this.name,
    this.id,
    this.logoPath,
    this.originCountry,
  });

  final String? name;
  final int? id;
  final String? logoPath;
  final String? originCountry;

  factory Network.fromMap(Map<String, dynamic> json) => Network(
        name: json["name"],
        id: json["id"],
        logoPath: json["logo_path"],
        originCountry: json["origin_country"],
      );

  @override
  List<Object?> get props => [
        name,
        id,
        logoPath,
        originCountry,
      ];
}
