import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  String data;
  double? size;
  Color? color;
  FontWeight? fw;
  TextAlign? align;
  CommonText({
    required this.data,
    this.size,
    this.color,
    this.fw,
    this.align,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: align,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: fw,
        fontFamily: 'Roboto'
        
      ),
    );
  }
}
