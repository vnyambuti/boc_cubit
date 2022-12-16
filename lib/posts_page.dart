import 'package:fbloc/post_cubit.dart';
import 'package:fbloc/post_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';

void main() => runApp(Posts());

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Posts'),
          ),
          body: BlocBuilder<PostCubit, List<PostModel>>(
              builder: (context, posts) {
            if (posts.isEmpty) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(itemBuilder: (context, index) {
              return Center(
                child: ListTile(
                  title: Text(posts[index].title),
                ),
              );
            });
          })),
    );
  }
}
