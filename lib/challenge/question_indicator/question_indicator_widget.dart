

import 'package:flutter/material.dart';

import '../../core/core.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  const QuestionIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Questão 04', style: AppTextStyles.body),
                Text('de 10', style: AppTextStyles.body),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
