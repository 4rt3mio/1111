import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hometask/data/repositories/track_repository_imp.dart';

part 'file_deleter_event.dart';
part 'file_deleter_state.dart';

class FileDeleterBloc extends Bloc<FileDeleterEvent, FileDeleterState> {


  FileDeleterBloc() : super(FileDeleted()) {
    on<FileDeleterEvent>((event, emit) => _onFileDelete(event, emit));
  }


  void _onFileDelete(FileDeleterEvent event, Emitter<FileDeleterState> emit) async {
    if (event is DeleteFile) {
      TrackRepositoryImpl trackDeleter = TrackRepositoryImpl();
      final file = await trackDeleter.deleteTrack(event.id);
    }
  }



}