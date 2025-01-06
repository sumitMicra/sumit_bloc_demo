import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView(
        physics: const RangeMaintainingScrollPhysics(),
        padding: const EdgeInsets.all(defaultPadding),
        children: [
          /// Counter
          Padding(
            padding: const EdgeInsets.only(bottom: defaultPadding),
            child: InkWell(
              borderRadius: BorderRadius.circular(defaultRadius),
              onTap: () {
                GoRouter.of(context).pushNamed('counter');
              },
              child: Container(
                padding: const EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  color: Colors.teal.shade200,
                ),
                child: Text(
                  "Counter",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ),

          /// POST
          InkWell(
            borderRadius: BorderRadius.circular(defaultRadius),
            onTap: () {
              GoRouter.of(context).pushNamed('post');
            },
            child: Container(
              padding: const EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                color: Colors.teal.shade200,
              ),
              child: Text(
                "Post",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
