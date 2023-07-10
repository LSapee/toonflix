import 'package:flutter/cupertino.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button(
      {super.key,
      required this.text,
      required this.bgColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    // 재사용할 위젯 구현 입력값으로 변경할 부분에 대한 것만 변수?상수로 선언 하여 main에서 값을 줘서 사용
    return Container(
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(45)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 40,
          ),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 22,
            ),
          ),
        ));
  }
}
