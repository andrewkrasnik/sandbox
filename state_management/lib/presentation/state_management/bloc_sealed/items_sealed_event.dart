part of 'items_sealed_bloc.dart';

sealed class ItemsEvent {}

class LoadItemsEvent implements ItemsEvent {
  const LoadItemsEvent();
}
