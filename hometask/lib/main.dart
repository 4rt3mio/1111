import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hometask/ui/blocs/bloc/file_loader_bloc.dart';
import 'package:hometask/ui/widgets/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => FileLoaderBloc(),
        child: const MaterialApp(
          home: MyHomePage(),
        ),
      );
}
