part of 'items_sealed_bloc.dart';

sealed class ItemsEvent {}

class Load implements ItemsEvent {
  const Load();
}
