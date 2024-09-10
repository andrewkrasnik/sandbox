part of 'common_sealed_bloc.dart';

sealed class CommonSealedState {}

class Loading implements CommonSealedState {
  const Loading();
}

class Initial implements CommonSealedState {
  const Initial();
}

class Data<T> implements CommonSealedState {
  final List<T> items;

  const Data({required this.items});
}

class Error implements CommonSealedState {
  final String description;

  const Error({required this.description});
}
