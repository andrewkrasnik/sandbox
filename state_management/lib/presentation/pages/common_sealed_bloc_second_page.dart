import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/domain/entities/item_list.dart';
import 'package:state_management/domain/usecases/get_items_list_usecase.dart';
import 'package:state_management/presentation/state_management/bloc_common_sealed/common_sealed_bloc.dart';
import 'package:state_management/presentation/widgets/error_widget.dart';
import 'package:state_management/presentation/widgets/items_list_widget.dart';

class CommonSealedBlocSecondPage extends StatelessWidget {
  const CommonSealedBlocSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CommonSealedBloc<ItemList>(GetItemsListUsecase().call)
            ..add(const Load()),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<CommonSealedBloc<ItemList>, CommonSealedState>(
            builder: (context, state) => switch (state) {
              Loading() => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              Initial() => const Center(
                  child: Text('No data'),
                ),
              Data(items: final items) =>
                ItemsListWidget(items: items as List<ItemList>),
              Error(description: final description) => Center(
                  child: ErrorDescriptionWidget(
                    description: description,
                    onPressed: () {
                      BlocProvider.of<CommonSealedBloc<ItemList>>(context)
                          .add(const Load());
                    },
                  ),
                ),
            },
          ),
        ),
      ),
    );
  }
}
