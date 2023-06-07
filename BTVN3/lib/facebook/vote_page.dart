import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VotePage extends StatelessWidget {
  const VotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hello Status'),
    );
  }
}
