part of 'file_loader_bloc.dart';

sealed class FileLoaderState {}

final class FileLoading extends FileLoaderState {
  FileLoading();
}

final class FileLoaded extends FileLoaderState {
  final String payload;

  FileLoaded(this.payload);
}