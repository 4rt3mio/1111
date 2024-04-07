part of 'file_loader_bloc.dart';

sealed class FileLoaderEvent {
}

class LoadFile extends FileLoaderEvent{
  final String id;

  LoadFile(this.id);
}