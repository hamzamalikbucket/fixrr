import 'package:fixrr/resources/utils/app_colors.dart';
import 'package:fixrr/resources/utils/constants.dart';
import 'package:fixrr/resources/widgets/BtnNullHeightWidth.dart';
import 'package:fixrr/resources/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseOptionScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return OptionState();
  }
}

class OptionState extends State<ChooseOptionScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: Column(
                      children: [
                        BtnNullHeightWidth(
                          title: 'User',
                          bgcolour: AppColors.greyBtnColor,
                          textcolour: AppColors.black,
                          onPress: () {
                            Navigator.pushNamed(context, Constants.registerUserScreen);
                          },
                          width: MediaQuery.of(context).size.width,
                          height: 48,
                        ),
                        Constants.height10,
                        BtnNullHeightWidth(
                          title: 'Become a Fixrr',
                          bgcolour: AppColors.greyBtnColor,
                          textcolour: AppColors.black,
                          onPress: () {
                            Navigator.pushNamed(context, Constants.registerFixrrScreen);
                          },
                          width: MediaQuery.of(context).size.width,
                          height: 48,
                        ),
                      ],
                    ),
                  ),
                  Constants.height15,
                  Constants.height15,
                  Constants.height15,
                  Constants.height15,
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          height: 200,
                        ),
                        TextWidget(
                          input: 'FIXRR',
                          fontsize: 108,
                          fontWeight: FontWeight.w700,
                          textcolor: AppColors.textBlue,
                        ),
                        TextWidget(
                          input: 'Time to,what really matters',
                          fontsize: 20,
                          fontWeight: FontWeight.w700,
                          textcolor: AppColors.textBlue,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}