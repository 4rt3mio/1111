part of 'file_checker_bloc.dart';

sealed class FileCheckerEvent {
}

class CheckFile extends FileCheckerEvent{
  final String id;

  CheckFile(this.id);
}