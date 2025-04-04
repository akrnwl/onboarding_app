import 'package:infoteam_app/app/modules/data/model/board_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'board_api.g.dart';

@RestApi(baseUrl: 'https://api.newbie.gistory.me/boards')
abstract class BoardApi {
  factory BoardApi(Dio dio, {String? baseUrl}) = _BoardApi;

  @GET('')
  Future<BoardModel> getBoards();
}
