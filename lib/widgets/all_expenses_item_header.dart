import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image, this.imageBackground, this.imageColor});
final String image;
final Color? imageBackground , imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(14),
          decoration: ShapeDecoration(
            color: imageBackground ??Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: SvgPicture.asset(image ,
          colorFilter: ColorFilter.mode(imageColor?? Color(0xFF4EB7F2), BlendMode.srcIn),
          ),
        ),
        Spacer(),
        Icon(Icons.arrow_forward_ios_rounded , color: imageColor?? Color(0xFF064060),),
      ],
    );
  }
}
