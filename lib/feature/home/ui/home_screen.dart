import 'package:bloc_demo/utils/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text("Home"),
    ),
    body: ListView(
      physics: const RangeMaintainingScrollPhysics(),
      padding: const EdgeInsets.all(defaultPadding),
      children: [
        /// Counter
        InkWell(
          onTap: (){
            GoRouter.of(context).pushNamed(AppPages.counterScreen);
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: defaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              color: Colors.teal.shade200,
            ),
          ),
        ),
     
        /// POST
        InkWell(
          onTap: (){
            GoRouter.of(context).pushNamed(AppPages.postScreen);
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: defaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              color: Colors.teal.shade200,
            ),
          ),
        ),
     
      ],
      ),
    );
  }
}