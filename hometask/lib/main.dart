import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hometask/ui/blocs/file_deleter/file_deleter_bloc.dart';
import 'package:hometask/ui/blocs/file_loader/file_loader_bloc.dart';
import 'package:hometask/ui/blocs/file_checker/file_checker_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FileLoaderBloc()),
        BlocProvider(create: (context) => FileCheckerBloc()),
        BlocProvider(create: (context) => FileDeleterBloc()),
      ],
      child: MaterialApp(
        title: 'Hometask Loader',
        home: Builder(builder: (context) {
          const id1 = 'firsttrackid123';
          const id2 = 'itssecondfile';
          const id3 = 'thirdthird3';
          const id4 = 'fourthfileid';
          const id5 = 'lastfifthtrack';
          return Scaffold(
            appBar: AppBar(
              title: const Text("Hometask Title"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<FileLoaderBloc, FileLoaderState>(
                    builder: (context, state) {
                      if (state is FileLoaded) {
                        return Text(state.payload);
                      }
                      return const CircularProgressIndicator();
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<FileLoaderBloc>(context)
                              .add(LoadFile(id1));
                          BlocProvider.of<FileCheckerBloc>(context)
                              .add(CheckFile(id1));
                        },
                        child: const Text('Download File 1'),
                      ),
                      BlocBuilder<FileCheckerBloc, FileCheckerState>(
                        builder: (context, state) {
                          if (state is FileChecked && state.loaded[id1] == true) {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                            );
                          }
                          return Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          );
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<FileDeleterBloc>(context)
                              .add(DeleteFile(id1));
                          BlocProvider.of<FileCheckerBloc>(context)
                              .add(CheckFile(id1));
                        },
                        child: const Text('Delete File 1'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<FileLoaderBloc>(context)
                              .add(LoadFile(id2));
                          BlocProvider.of<FileCheckerBloc>(context)
                              .add(CheckFile(id2));
                        },
                        child: const Text('Download File 2'),
                      ),
                      BlocBuilder<FileCheckerBloc, FileCheckerState>(
                        builder: (context, state) {
                          if (state is FileChecked && state.loaded[id2] == true) {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                            );
                          }
                          return Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          );
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<FileDeleterBloc>(context)
                              .add(DeleteFile(id2));
                          BlocProvider.of<FileCheckerBloc>(context)
                              .add(CheckFile(id2));
                        },
                        child: const Text('Delete File 2'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<FileLoaderBloc>(context)
                              .add(LoadFile(id3));
                          BlocProvider.of<FileCheckerBloc>(context)
                              .add(CheckFile(id3));
                        },
                        child: const Text('Download File 3'),
                      ),
                      BlocBuilder<FileCheckerBloc, FileCheckerState>(
                        builder: (context, state) {
                          if (state is FileChecked && state.loaded[id3] == true) {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                            );
                          }
                          return Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          );
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<FileDeleterBloc>(context)
                              .add(DeleteFile(id3));
                          BlocProvider.of<FileCheckerBloc>(context)
                              .add(CheckFile(id3));
                        },
                        child: const Text('Delete File 3'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<FileLoaderBloc>(context)
                              .add(LoadFile(id4));
                          BlocProvider.of<FileCheckerBloc>(context)
                              .add(CheckFile(id4));
                        },
                        child: const Text('Download File 4'),
                      ),
                      BlocBuilder<FileCheckerBloc, FileCheckerState>(
                        builder: (context, state) {
                          if (state is FileChecked && state.loaded[id4] == true) {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                            );
                          }
                          return Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          );
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<FileDeleterBloc>(context)
                              .add(DeleteFile(id4));
                          BlocProvider.of<FileCheckerBloc>(context)
                              .add(CheckFile(id4));
                        },
                        child: const Text('Delete File 4'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<FileLoaderBloc>(context)
                              .add(LoadFile(id5));
                          BlocProvider.of<FileCheckerBloc>(context)
                              .add(CheckFile(id5));
                        },
                        child: const Text('Download File 5'),
                      ),
                      BlocBuilder<FileCheckerBloc, FileCheckerState>(
                        builder: (context, state) {
                          if (state is FileChecked && state.loaded[id5] == true) {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                            );
                          }
                          return Container(
                            width: 10,
                            height: 10,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          );
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<FileDeleterBloc>(context)
                              .add(DeleteFile(id5));
                          BlocProvider.of<FileCheckerBloc>(context)
                              .add(CheckFile(id5));
                        },
                        child: const Text('Delete File 5'),
                      ),
                    ],
                  ),


                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

