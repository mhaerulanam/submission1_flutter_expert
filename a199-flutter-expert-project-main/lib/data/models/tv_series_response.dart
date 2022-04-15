import 'dart:convert';

import 'package:ditonton/data/models/tv_series_model.dart';
import 'package:equatable/equatable.dart';

class TvSeriesResponse extends Equatable {
  TvSeriesResponse({
    this.page,
    required this.results,
    this.totalPages,
    this.totalResults,
  });

  int? page;
  List<TvSeriesModel> results;
  int? totalPages;
  int? totalResults;
  // final List<TvSeriesModel> tvSeriesList;
  //
  // TvSeriesResponse({required this.tvSeriesList});

  factory TvSeriesResponse.fromJson(String str) =>
      TvSeriesResponse.fromMap(json.decode(str));

  factory TvSeriesResponse.fromMap(Map<String, dynamic> json) => TvSeriesResponse(
    page: json["page"],
    results:
    List<TvSeriesModel>.from(json["results"].map((x) => TvSeriesModel.fromJson(x))),
    totalPages: json["total_pages"],
    totalResults: json["total_results"],
  );

  Map<String, dynamic> toMap() => {
    "page": page,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
    "total_pages": totalPages,
    "total_results": totalResults,
  };

  @override
  List<Object?> get props => [
    page,
    results,
    totalPages,
    totalResults,
  ];
  // factory TvSeriesResponse.fromJson(Map<String, dynamic> json) =>
  //     TvSeriesResponse(
  //       tvSeriesList: List<TvSeriesModel>.from((json["results"] as List)
  //           .map((x) => TvSeriesModel.fromJson(x))
  //           .where((element) => element.posterPath != null)),
  //     );
  // Map<String, dynamic> toJson() => {
  //       "results": List<dynamic>.from(tvSeriesList.map((x) => x.toJson())),
  //     };
  //
  // @override
  // List<Object?> get props => [tvSeriesList];
}
