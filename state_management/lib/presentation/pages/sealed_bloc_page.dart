import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/domain/usecases/get_items_usecase.dart';
import 'package:state_management/presentation/state_management/bloc_sealed/items_sealed_bloc.dart';
import 'package:state_management/presentation/widgets/error_widget.dart';
import 'package:state_management/presentation/widgets/items_widget.dart';

class SealedBlocPage extends StatelessWidget {
  const SealedBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ItemsSealedBloc(GetItemsUsecase())..add(const LoadItemsEvent()),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<ItemsSealedBloc, ItemsSealedState>(
            builder: (context, state) => switch (state) {
              LoadingItemsSealedState() => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              InitialItemsSealedState() => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              DataItemsSealedState(items: final items) =>
                ItemsWidget(items: items),
              ErrorItemsSealedState(description: final description) => Center(
                  child: ErrorDescriptionWidget(
                    description: description,
                    onPressed: () {
                      BlocProvider.of<ItemsSealedBloc>(context)
                          .add(const LoadItemsEvent());
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
