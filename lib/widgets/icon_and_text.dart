import 'package:flutter/cupertino.dart';
import 'package:laravel_ecommerce/utils/dimension.dart';
import 'package:laravel_ecommerce/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData? icon;
  final String? text;

  final Color? iconColor;
  IconAndTextWidget({Key? key, this.icon, this.text,  this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,color: iconColor,size: Dimensions.iconSizer24,
        ),
        SizedBox(width: 5,),
        SmallText(text: text,)
      ],
    );
  }
}
