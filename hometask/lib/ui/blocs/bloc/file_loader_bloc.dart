import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hometask/data/repositories/track_repository_imp.dart';

part 'file_loader_event.dart';
part 'file_loader_state.dart';

class FileLoaderBloc extends Bloc<FileLoaderEvent, FileLoaderState> {
  final TrackRepositoryImpl trackLoader = TrackRepositoryImpl();

  FileLoaderBloc() : super(FileDeleted('', '')) {
    on<FileLoaderEvent>(_onFileEvent);
  }

  void _onFileEvent(FileLoaderEvent event, Emitter<FileLoaderState> emit) async {
    if (event is LoadFile) {
      emit(FileLoading(event.id));

      final file = await trackLoader.loadTrack(event.id);

      emit(FileLoaded('file id: ${file.id}\nmp3data: ${file.mp3data}\nLocal path: ${file.localPath}\nDuration: ${file.durationInS}', event.id));
    } else if (event is DeleteFile) {
      emit(FileDeleting(event.id));
      final file = await trackLoader.deleteTrack(event.id);
      emit(FileDeleted('file deleted', event.id));
    }
  }
}
