import 'package:flutter/cupertino.dart';
import 'package:laravel_ecommerce/utils/dimension.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String? text;
  double? size;
  TextOverflow? overflow;
  BigText({Key? key,this.overflow = TextOverflow.ellipsis,this.text,this.size=0,this.color = const Color(0xFF332d2b)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: size==0?Dimensions.font20:size,
        fontWeight: FontWeight.w400
      ),
    );
  }
}
