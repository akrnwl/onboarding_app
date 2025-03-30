import 'package:infoteam_app/app/modules/data/model/user_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'post_api.g.dart';
// Retrofit 초안
@RestApi(baseUrl: 'https://api.newbie.gistory.me/posts')
abstract class PostApi {
  factory PostApi(Dio dio, {String? baseUrl}) = _PostApi;

  @GET('')
  Future<void> getPosts(); // void에서 다른 걸로 바꾸기 ex. userModel
}