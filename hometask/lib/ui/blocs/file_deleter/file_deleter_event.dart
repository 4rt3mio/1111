part of 'file_deleter_bloc.dart';

sealed class FileDeleterEvent {
}

class DeleteFile extends FileDeleterEvent{
  final String id;

  DeleteFile(this.id);
}