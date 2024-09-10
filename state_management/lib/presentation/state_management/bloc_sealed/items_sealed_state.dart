part of 'items_sealed_bloc.dart';

sealed class ItemsSealedState {}

class Loading implements ItemsSealedState {
  const Loading();
}

class Initial implements ItemsSealedState {
  const Initial();
}

class Data implements ItemsSealedState {
  final List<ListItem> items;

  const Data({required this.items});
}

class Error implements ItemsSealedState {
  final String description;

  const Error({required this.description});
}
