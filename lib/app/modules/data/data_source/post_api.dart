import 'package:infoteam_app/app/modules/data/model/post_list_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'post_api.g.dart';

@RestApi(baseUrl: 'posts')
abstract class PostApi {
  factory PostApi(Dio dio, {String? baseUrl}) = _PostApi;

  @GET('')
  Future<PostListModel> getPosts();

  @POST('')
  Future<PostListModel> postPosts();
}
