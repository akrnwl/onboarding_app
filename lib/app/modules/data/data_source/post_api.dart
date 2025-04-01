import 'package:infoteam_app/app/modules/data/data_source/model/post_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'post_api.g.dart';

@RestApi(baseUrl: 'posts')
abstract class PostApi {
  factory PostApi(Dio dio, {String? baseUrl}) = _PostApi;

  @GET('')
  Future<PostModel> getPosts(); 
}