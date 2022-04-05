import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String? text;
  double? size;
  double? height;
  SmallText({Key? key,this.height=1.2,this.text,this.size=11.0,this.color = const Color(0xFFa9a29f)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: size,
        height: height
      ),
    );
  }
}
