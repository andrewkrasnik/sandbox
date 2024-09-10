import 'package:flutter/material.dart';
import 'package:state_management/presentation/pages/bloc_page.dart';
import 'package:state_management/presentation/pages/sealed_bloc_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BlocPage()));
                },
                child: const Text('Bloc'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SealedBlocPage()));
                },
                child: const Text('Sealed Bloc'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
