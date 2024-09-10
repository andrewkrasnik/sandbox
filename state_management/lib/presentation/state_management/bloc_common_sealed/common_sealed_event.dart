part of 'common_sealed_bloc.dart';

sealed class CommonSealedEvent {}

class Load implements CommonSealedEvent {
  const Load();
}
