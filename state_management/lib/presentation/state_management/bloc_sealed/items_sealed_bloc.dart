import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/domain/entities/list_item.dart';
import 'package:state_management/domain/entities/result.dart';
import 'package:state_management/domain/usecases/get_items_usecase.dart';

part 'items_sealed_event.dart';
part 'items_sealed_state.dart';

class ItemsSealedBloc extends Bloc<ItemsEvent, ItemsSealedState> {
  final GetItemsUsecase _getItemsUsecase;

  ItemsSealedBloc(this._getItemsUsecase)
      : super(const InitialItemsSealedState()) {
    on<LoadItemsEvent>((event, emit) async {
      emit(const LoadingItemsSealedState());

      final result = await _getItemsUsecase();

      switch (result) {
        case Success<List<ListItem>, Exception>(value: final items):
          emit(DataItemsSealedState(items: items));

        case Failure<List<ListItem>, Exception>(exception: final exception):
          emit(ErrorItemsSealedState(description: exception.toString()));
      }
    });
  }
}
