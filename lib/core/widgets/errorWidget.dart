import 'package:flutter/material.dart';

class CustemErrorWidget extends StatelessWidget {
  const CustemErrorWidget({super.key, required this.messageError});
  final String messageError;
  @override
  Widget build(BuildContext context) {
    return  Center(child: Text(messageError));
  }
}
