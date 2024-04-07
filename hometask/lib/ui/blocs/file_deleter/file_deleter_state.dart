part of 'file_deleter_bloc.dart';

sealed class FileDeleterState {}

final class FileDeleting extends FileDeleterState {
  FileDeleting();
}

final class FileDeleted extends FileDeleterState {
  FileDeleted();
}