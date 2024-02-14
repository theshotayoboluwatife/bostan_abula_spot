import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../utiity/constants.dart';
import '../../../../widgets/custom_text.dart';

class FoodOnDisplay extends StatefulWidget {
  const FoodOnDisplay({Key? key}) : super(key: key);

  @override
  State<FoodOnDisplay> createState() => _FoodOnDisplayState();
}

class _FoodOnDisplayState extends State<FoodOnDisplay> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
     // width: size.width * 0.6,
      color: Colors.transparent,
      padding: const EdgeInsets.only(left:12, right: 12.0),
      child:
          /*  Stack(
        children: [
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              width: size.width*0.5,
              height: size.height*0.3,
              child: const Column(children: [
                Spacer(),
                CustomText(text: 'Amala', ),
                Gap(10),
                CustomText(text: '₦300'),
              ]),
            ),
          ),
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: CircleAvatar(
              maxRadius: 50,
              child: Container(
               // padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://shop.axielle.com.ng/wp-content/uploads/2022/11/8a6042f0638ef2767ae75feed2fa6718.jpg',
                  // Replace with your image URL
                  width: 50.0,
                  height: 50.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),*/
          Stack(
        children: [
          Container(
            width: size.width*0.5,
            height: size.height*0.4,
            padding: const EdgeInsets.only(
                left: Constants.padding,
                top: Constants.avatarRadius + Constants.padding,
                right: Constants.padding,
                bottom: Constants.padding),
            margin: const EdgeInsets.only(top: Constants.avatarRadius),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.black,
                borderRadius: BorderRadius.circular(Constants.padding),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.yellow,
                      offset: Offset(0, 10),
                      blurRadius: 10),
                ]),
            child: const Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                CustomText(
                  text: 'Amala',
                ),
                Gap(10),
                CustomText(text: '₦300'),
              ],
            ),
          ),
          Positioned(
            left: Constants.padding,
            right: Constants.padding,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: Constants.avatarRadius,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                    Radius.circular(Constants.avatarRadius)),
                child: Image.network(
                  'https://shop.axielle.com.ng/wp-content/uploads/2022/11/8a6042f0638ef2767ae75feed2fa6718.jpg',
                  // Replace with your image URL
                  /*width: 50.0,

  height: 50.0,
    fit: BoxFit.cover,*/
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
