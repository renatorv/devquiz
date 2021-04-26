import 'package:devquiz/core/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/core.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  LevelButtonWidget({Key? key, required this.label})
      : assert(["Fácil", "Médio", "Difícil", "Perito"].contains(label)),
        super(key: key);

  final config = {
    "Fácil": {
      "color": AppColors.levelButtonFacil,
      "borderColor": AppColors.levelButtonBorderFacil,
      "fontColor": AppColors.levelButtonTextFacil,
    },
    "Médio": {
      "color": AppColors.levelButtonMedio,
      "borderColor": AppColors.levelButtonBorderMedio,
      "fontColor": AppColors.levelButtonTextMedio,
    },
    "Difícil": {
      "color": AppColors.levelButtonDificil,
      "borderColor": AppColors.levelButtonBorderDificil,
      "fontColor": AppColors.levelButtonTextDificil,
    },
    "Perito": {
      "color": AppColors.levelButtonBorderPerito,
      "borderColor": AppColors.levelButtonBorderPerito,
      "fontColor": AppColors.levelButtonTextPerito,
    },
  };

  Color get color => config[label]!['color']!;
  Color get borderColor => config[label]!['borderColor']!;
  Color get fontColor => config[label]!['fontColor']!;

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Container(
      height: responsive.dp(6),
      width: responsive.dp(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(responsive.dp(10)),
        color: color,
        border: Border.fromBorderSide(
          BorderSide(
            color: borderColor,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsive.dp(1), vertical: responsive.dp(1)),
        child: Center(
          child: Text(
            this.label,
            style: GoogleFonts.notoSans(color: fontColor, fontSize: responsive.dp(2.5)),
          ),
        ),
      ),
    );
  }
}
