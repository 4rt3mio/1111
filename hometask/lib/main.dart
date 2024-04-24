import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hometask/ui/blocs/bloc/file_loader_bloc.dart';

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
                      if (state is FileDeleted) {
                        return Text(state.payload);
                      }
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
                        },
                        child: const Text('Download File 1'),
                      ),
                      BlocBuilder<FileLoaderBloc, FileLoaderState>(
                        buildWhen: (previousState, state) {
                          return (state as dynamic).id == id1;
                        },
                        builder: (context, state) {
                          if (state is FileLoading || state is FileDeleting) {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                            );
                          } else if (state is FileLoaded) {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                            );
                          } else {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                            );
                          }
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<FileLoaderBloc>(context)
                              .add(DeleteFile(id1));
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
                        },
                        child: const Text('Download File 2'),
                      ),
                      BlocBuilder<FileLoaderBloc, FileLoaderState>(
                        buildWhen: (previousState, state) {
                          return (state as dynamic).id == id2;
                        },
                        builder: (context, state) {
                          if (state is FileLoading || state is FileDeleting) {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                            );
                          } else if (state is FileLoaded) {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                            );
                          } else {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                            );
                          }
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<FileLoaderBloc>(context)
                              .add(DeleteFile(id2));
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
                        },
                        child: const Text('Download File 3'),
                      ),
                      BlocBuilder<FileLoaderBloc, FileLoaderState>(
                        buildWhen: (previousState, state) {
                          return (state as dynamic).id == id3;
                        },
                        builder: (context, state) {
                          if (state is FileLoading || state is FileDeleting) {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                            );
                          } else if (state is FileLoaded) {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                            );
                          } else {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                            );
                          }
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<FileLoaderBloc>(context)
                              .add(DeleteFile(id3));
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
                        },
                        child: const Text('Download File 4'),
                      ),
                      BlocBuilder<FileLoaderBloc, FileLoaderState>(
                        buildWhen: (previousState, state) {
                          return (state as dynamic).id == id4;
                        },
                        builder: (context, state) {
                          if (state is FileLoading || state is FileDeleting) {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                            );
                          } else if (state is FileLoaded) {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                            );
                          } else {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                            );
                          }
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<FileLoaderBloc>(context)
                              .add(DeleteFile(id4));
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
                        },
                        child: const Text('Download File 5'),
                      ),
                      BlocBuilder<FileLoaderBloc, FileLoaderState>(
                        buildWhen: (previousState, state) {
                          return (state as dynamic).id == id5;
                        },
                        builder: (context, state) {
                          if (state is FileLoading || state is FileDeleting) {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                            );
                          } else if (state is FileLoaded) {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
                              ),
                            );
                          } else {
                            return Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                            );
                          }
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          BlocProvider.of<FileLoaderBloc>(context)
                              .add(DeleteFile(id5));
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
