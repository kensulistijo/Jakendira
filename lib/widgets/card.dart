import 'package:flutter/material.dart';

class _SampleCard extends StatelessWidget {
  const _SampleCard({required this.cardName});
  final String cardName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 300, height: 100, child: Center(child: Text(cardName)));
  }
}