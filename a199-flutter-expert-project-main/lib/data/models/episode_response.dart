import 'dart:convert';

import 'package:equatable/equatable.dart';

import '../../domain/entities/episode.dart';

class EpisodeResponse extends Equatable {
  EpisodeResponse({
    this.id,
    this.airDate,
    this.episodes,
    this.name,
    this.overview,
    this.episodeResponseId,
    this.posterPath,
    this.seasonNumber,
  });

  final String? id;
  final DateTime? airDate;
  final List<Episode>? episodes;
  final String? name;
  final String? overview;
  final num? episodeResponseId;
  final String? posterPath;
  final num? seasonNumber;

  EpisodeResponse copyWith({
    String? id,
    DateTime? airDate,
    List<Episode>? episodes,
    String? name,
    String? overview,
    num? episodeResponseId,
    String? posterPath,
    num? seasonNumber,
  }) =>
      EpisodeResponse(
        id: id ?? this.id,
        airDate: airDate ?? this.airDate,
        episodes: episodes ?? this.episodes,
        name: name ?? this.name,
        overview: overview ?? this.overview,
        episodeResponseId: episodeResponseId ?? this.episodeResponseId,
        posterPath: posterPath ?? this.posterPath,
        seasonNumber: seasonNumber ?? this.seasonNumber,
      );

  factory EpisodeResponse.fromJson(String str) =>
      EpisodeResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EpisodeResponse.fromMap(Map<String, dynamic> json) => EpisodeResponse(
        id: json["_id"],
        airDate: DateTime.tryParse(json["air_date"]),
        episodes:
            List<Episode>.from(json["episodes"].map((x) => Episode.fromMap(x))),
        name: json["name"],
        overview: json["overview"],
        episodeResponseId: json["id"],
        posterPath: json["poster_path"],
        seasonNumber: json["season_number"],
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "air_date":
            "${airDate!.year.toString().padLeft(4, '0')}-${airDate!.month.toString().padLeft(2, '0')}-${airDate!.day.toString().padLeft(2, '0')}",
        "episodes": List<dynamic>.from(episodes!.map((x) => x.toMap())),
        "name": name,
        "overview": overview,
        "id": episodeResponseId,
        "poster_path": posterPath,
        "season_number": seasonNumber,
      };

  @override
  List<Object?> get props => [
        id,
        airDate,
        episodes,
        name,
        overview,
        episodeResponseId,
        posterPath,
        seasonNumber,
      ];
}
