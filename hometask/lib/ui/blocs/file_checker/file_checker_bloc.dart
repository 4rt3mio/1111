import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hometask/data/repositories/track_repository_imp.dart';

part 'file_checker_event.dart';

part 'file_checker_state.dart';

class FileCheckerBloc extends Bloc<FileCheckerEvent, FileCheckerState> {
  static Map<String, bool> loaded = {'a': false};

  FileCheckerBloc() : super(FileNotChecked()) {
    on<FileCheckerEvent>((event, emit) => _onFileCheck(event, emit));
  }

  void _onFileCheck(
      FileCheckerEvent event, Emitter<FileCheckerState> emit) async {
    if (event is CheckFile) {
      TrackRepositoryImpl trackLoader = TrackRepositoryImpl();
      final file = await trackLoader.checkTrack(event.id);
      loaded[event.id] = file;
      emit(FileChecked(loaded));
    }
  }
}
