import 'package:devquiz/core/responsive.dart';
import 'package:devquiz/home/widgets/app_bar/app_bar_widget.dart';
import 'package:devquiz/home/widgets/level_button/level_button_widget.dart';
import 'package:devquiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
        // color: Colors.black12,
        padding: EdgeInsets.only(right: responsive.dp(.8), left: responsive.dp(.8)),
        child: Column(
          children: [
            SizedBox(height: responsive.dp(2)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: responsive.dp(1), vertical: responsive.dp(.2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LevelButtonWidget(
                    label: 'Fácil',
                  ),
                  LevelButtonWidget(
                    label: 'Médio',
                  ),
                  LevelButtonWidget(
                    label: 'Difícil',
                  ),
                  LevelButtonWidget(
                    label: 'Perito',
                  ),
                ],
              ),
            ),
            SizedBox(height: responsive.dp(2)),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: responsive.dp(.6),
                mainAxisSpacing: responsive.dp(.6),
                crossAxisCount: 2,
                children: [
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
