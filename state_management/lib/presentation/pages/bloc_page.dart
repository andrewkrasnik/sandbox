import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/domain/usecases/get_items_usecase.dart';
import 'package:state_management/presentation/state_management/bloc/items_bloc.dart';
import 'package:state_management/presentation/widgets/error_widget.dart';
import 'package:state_management/presentation/widgets/items_widget.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ItemsBloc(GetItemsUsecase())..add(const ItemsEvent.loadData()),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<ItemsBloc, ItemsState>(
            builder: (context, state) => state.maybeMap(
              data: (dataState) => ItemsWidget(items: dataState.items),
              loading: (_) => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
              error: (errorState) => ErrorDescriptionWidget(
                description: errorState.description,
                onPressed: () {
                  BlocProvider.of<ItemsBloc>(context)
                      .add(const ItemsEvent.loadData());
                },
              ),
              orElse: () => const Center(
                child: Text('No data'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
