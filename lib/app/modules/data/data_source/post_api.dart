import 'package:infoteam_app/app/modules/data/data_source/model/post_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'post_api.g.dart';

@RestApi(baseUrl: 'https://api.newbie.gistory.me/posts')
abstract class PostApi {
  factory PostApi(Dio dio, {String? baseUrl}) = _PostApi;

  @GET('')
  Future<PostModel> getPosts(); // void에서 다른 걸로 바꾸기 ex. userModel
}