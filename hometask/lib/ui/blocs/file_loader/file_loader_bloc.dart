import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hometask/data/repositories/track_repository_imp.dart';

part 'file_loader_event.dart';
part 'file_loader_state.dart';

class FileLoaderBloc extends Bloc<FileLoaderEvent, FileLoaderState> {


  FileLoaderBloc() : super(FileLoaded('')) {
    on<FileLoaderEvent>((event, emit) => _onFileLoad(event, emit));
  }


  void _onFileLoad(FileLoaderEvent event, Emitter<FileLoaderState> emit) async {
    if (event is LoadFile) {
      emit(FileLoading());
      TrackRepositoryImpl trackLoader = TrackRepositoryImpl();

      final file = await trackLoader.loadTrack(event.id);

      emit(FileLoaded('file id: ' + file.id + '\nmp3data: ' + file.mp3data + '\nLocal path: ' + file.localPath + '\nDuration: ' + file.durationInS.toString()));
    }
  }



}