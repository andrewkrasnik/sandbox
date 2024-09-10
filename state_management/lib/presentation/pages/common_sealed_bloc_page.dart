import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/domain/entities/list_item.dart';
import 'package:state_management/domain/usecases/get_items_usecase.dart';
import 'package:state_management/presentation/state_management/bloc_common_sealed/common_sealed_bloc.dart';
import 'package:state_management/presentation/widgets/error_widget.dart';
import 'package:state_management/presentation/widgets/items_widget.dart';

class CommonSealedBlocPage extends StatelessWidget {
  const CommonSealedBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CommonSealedBloc<ListItem>(GetItemsUsecase().call)..add(const Load()),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<CommonSealedBloc<ListItem>, CommonSealedState>(
            builder: (context, state) => switch (state) {
              Loading() => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              Initial() => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
              Data(items: final items) =>
                ItemsWidget(items: items as List<ListItem>),
              Error(description: final description) => Center(
                  child: ErrorDescriptionWidget(
                    description: description,
                    onPressed: () {
                      BlocProvider.of<CommonSealedBloc<ListItem>>(context)
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
