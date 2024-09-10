part of 'items_sealed_bloc.dart';

sealed class ItemsSealedState {}

class LoadingItemsSealedState implements ItemsSealedState {
  const LoadingItemsSealedState();
}

class InitialItemsSealedState implements ItemsSealedState {
  const InitialItemsSealedState();
}

class DataItemsSealedState implements ItemsSealedState {
  final List<ListItem> items;

  const DataItemsSealedState({required this.items});
}

class ErrorItemsSealedState implements ItemsSealedState {
  final String description;

  const ErrorItemsSealedState({required this.description});
}
