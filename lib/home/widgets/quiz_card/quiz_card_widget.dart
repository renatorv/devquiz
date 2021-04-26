import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/core/responsive.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Container(
      padding: EdgeInsets.all(responsive.dp(2)),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.border),
        ),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: responsive.dp(6),
            width: responsive.dp(6),
            child: Image.asset(AppImages.blocks),
          ),
          SizedBox(height: responsive.dp(2)),
          Text(
            'Gerenciamento de Estado',
            style: AppTextStyles.heading15,
          ),
          SizedBox(height: responsive.dp(2)),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  '3 / 10',
                  style: AppTextStyles.body11,
                ),
              ),
              Expanded(
                flex: 2,
                child: LinearProgressIndicator(
                  value: .3,
                  backgroundColor: AppColors.chartSecondary,
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
