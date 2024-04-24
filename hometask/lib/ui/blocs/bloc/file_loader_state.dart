part of 'file_loader_bloc.dart';

sealed class FileLoaderState {
}

class FileLoading extends FileLoaderState {
  final String id;
  FileLoading(this.id);
}

class FileLoaded extends FileLoaderState {
  final String payload, id;

  FileLoaded(this.payload, this.id);
}

class FileDeleting extends FileLoaderState {
  final String id;
  FileDeleting(this.id);
}

class FileDeleted extends FileLoaderState {
  final String payload, id;

  FileDeleted(this.payload, this.id);
}