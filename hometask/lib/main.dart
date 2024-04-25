import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hometask/ui/blocs/file_loader/file_loader_bloc.dart';
import 'package:hometask/ui/widgets/home_page.dart';
import 'package:hometask/ui/listenable classes/theme/themeValue.dart';

void main() {
  // MyStaticClass.addListenerToStaticValue(() {
    runApp(const MyApp());
  // });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FileLoaderBloc(),
      child: ValueListenableBuilder<ThemeData>(
        valueListenable: ThemeValue.curTheme,
        builder: (context, theme, child) {
          return MaterialApp(
            home: const MyHomePage(),
            theme: theme,
          );
        },
      ),
    );
  }
}