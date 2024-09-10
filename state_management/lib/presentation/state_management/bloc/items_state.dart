part of 'items_bloc.dart';

@freezed
class ItemsState with _$ItemsState {
  const factory ItemsState.initial() = _Initial;

  const factory ItemsState.loading() = _Loading;

  const factory ItemsState.data({required List<ListItem> items}) = _Data;

  const factory ItemsState.error({required String description}) = _Error;
}
