import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          color: Color(0xFF4bb7f2),
          image: DecorationImage(
            image: AssetImage(
              Assets.imagesCardBackground,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.only(top: 12, left: 20, right: 30),
                title: Text(
                  'My Card',
                  style: AppStyles.styleRegular16.copyWith(color: Colors.white),
                ),
                subtitle: Text(
                  'Syah Bandi',
                  style: AppStyles.styleMedium20,
                ),
                trailing: SvgPicture.asset(
                  Assets.imagesGallery,
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style:
                        AppStyles.styleSemiBold24.copyWith(color: Colors.white,fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '12/20 - 124',
                    style:
                        AppStyles.styleRegular16.copyWith(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
