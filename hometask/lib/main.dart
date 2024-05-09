import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hometask/ui/blocs/file_loader/file_loader_bloc.dart';
import 'package:hometask/ui/widgets/home_page.dart';
import 'package:hometask/ui/listenable classes/theme/themeValue.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
    await Supabase.initialize(
        url: 'https://mlnybhnuiefugvyzpfwz.supabase.co',
        anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1sbnliaG51aWVmdWd2eXpwZnd6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTUyNjgwNDMsImV4cCI6MjAzMDg0NDA0M30.j11SxlO3v2Lbg0Y3aleY3pXqEMJVgj8neIvU9bXCnQ4',
    );
    runApp(const MyApp());
}

final supabase = Supabase.instance.client;

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