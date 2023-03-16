import 'package:flutter/material.dart';
import '../../logic/models/{{name.camelCase()}}_model.dart';

class {{name.pascalCase()}}DataSection extends StatelessWidget {
  const {{name.pascalCase()}}DataSection({super.key, required this.{{name.camelCase()}}Data});
  final  {{name.pascalCase()}}Model {{name.camelCase()}}Data;
  
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Data"),
    );
  }
}

