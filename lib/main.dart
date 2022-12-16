import 'package:fbloc/post_cubit.dart';
import 'package:fbloc/post_service.dart';
import 'package:fbloc/posts_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<PostCubit>(
          create: (context) => PostCubit()..getPosts(), child: Posts()),
    );
  }
}
