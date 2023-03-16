import 'package:flutter/material.dart';

class {{name.pascalCase()}}EmptySection extends StatelessWidget {
  const {{name.pascalCase()}}EmptySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Empty'),
          ],
        ),
      ),
    );
  }
}
