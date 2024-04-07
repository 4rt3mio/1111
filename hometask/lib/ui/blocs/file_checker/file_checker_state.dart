part of 'file_checker_bloc.dart';

sealed class FileCheckerState {}

final class FileNotChecked extends FileCheckerState {
  FileNotChecked();
}

final class FileChecked extends FileCheckerState {
  final Map<String, bool> loaded;

  FileChecked(this.loaded);
}