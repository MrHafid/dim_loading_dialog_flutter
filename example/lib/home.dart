import 'package:dim_loading_dialog/dim_loading_dialog.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // DimLoadingDialog Init Example
  DimLoadingDialog progressDialog = DimLoadingDialog(
      GlobalVariable.navState.currentState!.context,
      blur: 2,
      backgroundColor: const Color(0x33000000),
      animationDuration: const Duration(milliseconds: 500));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dim Loading Example App'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show'),
          onPressed: () {
            progressDialog.show();
            // progressDialog.dismiss(); // for dismiss the loading dialog for state
          },
        ),
      ),
    );
  }
}
