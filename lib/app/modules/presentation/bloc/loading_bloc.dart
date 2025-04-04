import 'package:bloc/bloc.dart';

sealed class LoadingEvent {}

final class LoadingInit extends LoadingEvent {}

final class LoadingDuring extends LoadingEvent {}

final class LoadingEnd extends LoadingEvent {}

final class LoadingError extends LoadingEvent {}

class LoadingBloc extends Bloc<LoadingEvent, String> {
  LoadingBloc() : super('Init') {
    on<LoadingInit>((event, emit) {
      emit('Init');
    });

    on<LoadingDuring>((event, emit) {
      emit('Loading');
    });

    on<LoadingEnd>((event, emit) {
      emit('Loaded');
    });

    on<LoadingError>((event, emit) {
      emit('Error');
    });
  }

  @override
  void onChange(Change<String> change) {
    super.onChange(change);
    print(change);
  }
}
