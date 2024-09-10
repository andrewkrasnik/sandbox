import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_management/domain/entities/list_item.dart';
import 'package:state_management/domain/usecases/get_items_usecase.dart';

part 'items_event.dart';
part 'items_state.dart';
part 'items_bloc.freezed.dart';

class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  final GetItemsUsecase _getItemsUsecase;

  ItemsBloc(this._getItemsUsecase) : super(const ItemsState.initial()) {
    on<_LoadData>((event, emit) async {
      emit(const ItemsState.loading());

      final items = await _getItemsUsecase();

      emit(ItemsState.data(items: items));
    });
  }
}
