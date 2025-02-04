import 'package:tourism_app/model/tourism.dart';

class TourismListResponse {
  final bool error;
  final String message;
  final int count;
  final List<Tourism> places;

  factory TourismListResponse.fromJson(Map<String, dynamic> json) {
    return TourismListResponse(
      error: json["error"],
      message: json["message"],
      count: json["count"],
      places: json["places"] != null
          ? List<Tourism>.from(json["places"]!.map((x) => Tourism.fromJson(x)))
          : <Tourism>[],
    );
  }

  TourismListResponse({
    required this.error,
    required this.message,
    required this.count,
    required this.places,
  });
}
