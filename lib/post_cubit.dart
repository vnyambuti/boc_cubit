import 'package:fbloc/post_model.dart';
import 'package:fbloc/post_model.dart';
import 'package:fbloc/post_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostCubit extends Cubit<List<PostModel>> {
  final post_service = PostService();
  PostCubit() : super([]);

  getPosts() async => emit(await post_service.getPosts());
}
