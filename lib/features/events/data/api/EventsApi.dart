import 'package:dio/dio.dart';
import 'package:ows_events_mobile/features/events/data/response/EventResponse.dart';
import 'package:retrofit/retrofit.dart';

part 'EventsApi.g.dart';

@RestApi(baseUrl: "https://poster-peredelano.orby-tech.space/api/")
abstract class EventsApi {
  factory EventsApi(Dio dio, {String baseUrl}) = _EventsApi;

  @GET("events")
  Future<List<EventResponse>> getEvents();
}
