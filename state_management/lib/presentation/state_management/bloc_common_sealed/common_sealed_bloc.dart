import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/domain/entities/result.dart';

part 'common_sealed_event.dart';
part 'common_sealed_state.dart';

class CommonSealedBloc<T> extends Bloc<CommonSealedEvent, CommonSealedState> {
  final Future<Result<List<T>, Exception>> Function() _getItems;

  CommonSealedBloc(this._getItems) : super(const Initial()) {
    on<Load>((event, emit) async {
      emit(const Loading());

      final result = await _getItems();

      switch (result) {
        case Success<List<T>, Exception>(value: final items):
          emit(Data<T>(items: items));

        case Failure<List<T>, Exception>(exception: final exception):
          emit(Error(description: exception.toString()));
      }
    });
  }
}
