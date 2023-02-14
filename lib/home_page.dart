import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_cloud_storage_app_ui/app_style.dart';
import 'package:online_cloud_storage_app_ui/config.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<Color> folderColor = [
    kLightBlueColor,
    kLightYellowColor,
    kLightRedColor,
    kLightGreenColor,
    kLightBlueColor,
    kLightYellowColor,
    kLightRedColor,
    kLightGreenColor,
    kLightBlueColor,
    kLightYellowColor,
    kLightRedColor,
    kLightGreenColor,
    kLightBlueColor,
    kLightYellowColor,
    kLightRedColor,
    kLightGreenColor,
  ];
  List<Color> textColor = [
    kBlueColor,
    kYellowColor,
    kRedColor,
    kGreenColor,
    kBlueColor,
    kYellowColor,
    kRedColor,
    kGreenColor,
    kBlueColor,
    kYellowColor,
    kRedColor,
    kGreenColor,
    kBlueColor,
    kYellowColor,
    kRedColor,
    kGreenColor,
  ];
  List<String> iconColors = [
    'folder_icon_blue.svg',
    'folder_icon_yellow.svg',
    'folder_icon_red.svg',
    'folder_icon_green.svg',
    'folder_icon_blue.svg',
    'folder_icon_yellow.svg',
    'folder_icon_red.svg',
    'folder_icon_green.svg',
    'folder_icon_blue.svg',
    'folder_icon_yellow.svg',
    'folder_icon_red.svg',
    'folder_icon_green.svg',
    'folder_icon_blue.svg',
    'folder_icon_yellow.svg',
    'folder_icon_red.svg',
    'folder_icon_green.svg',
  ];
  List<String> moreIconColors = [
    'more_vertical_icon_blue.svg',
    'more_vertical_icon_yellow.svg',
    'more_vertical_icon_red.svg',
    'more_vertical_icon_green.svg',
    'more_vertical_icon_blue.svg',
    'more_vertical_icon_yellow.svg',
    'more_vertical_icon_red.svg',
    'more_vertical_icon_green.svg',
    'more_vertical_icon_blue.svg',
    'more_vertical_icon_yellow.svg',
    'more_vertical_icon_red.svg',
    'more_vertical_icon_green.svg',
    'more_vertical_icon_blue.svg',
    'more_vertical_icon_yellow.svg',
    'more_vertical_icon_red.svg',
    'more_vertical_icon_green.svg',
  ];
  List<String> folderName = [
    'Mobile apps',
    'SVG icons',
    'Prototypes',
    'Avatars',
    'Mobile apps',
    'SVG icons',
    'Prototypes',
    'Avatars',
    'Mobile apps',
    'SVG icons',
    'Prototypes',
    'Avatars',
    'Mobile apps',
    'SVG icons',
    'Prototypes',
    'Avatars',
  ];
  List<String> folderDates = [
    'Decembers 20.2020',
    'Decembers 20.2020',
    'Novembers 20.2020',
    'Novembers 20.2020',
    'Decembers 20.2020',
    'Decembers 20.2020',
    'Novembers 20.2020',
    'Novembers 20.2020',
    'Decembers 20.2020',
    'Decembers 20.2020',
    'Novembers 20.2020',
    'Novembers 20.2020',
    'Decembers 20.2020',
    'Decembers 20.2020',
    'Novembers 20.2020',
    'Novembers 20.2020',
  ];

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Your dribbbox',
          style: kQuestrialSemiBold.copyWith(
            color: kBlackColor,
            fontSize: Config.blockSizeHorizontal! * 6,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
            child: SvgPicture.asset('assets/menu_icon.svg'),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      floatingActionButton: SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: kPurpleColor,
            child: const Icon(
              Icons.add,
            ),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
          child: Column(
            children: [
              SizedBox(
                height: Config.blockSizeVertical! * 3.5,
              ),
              TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    borderSide: BorderSide(width: 1, color: kGreyColor),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    borderSide: BorderSide(width: 1, color: kGreyColor),
                  ),
                  prefixIcon: Container(
                    height: 24,
                    width: 24,
                    alignment: Alignment.center,
                    child: SvgPicture.asset('assets/search_icon.svg'),
                  ),
                  hintText: 'Search folder',
                  hintStyle: kQuestrialMedium.copyWith(
                    fontSize: Config.blockSizeHorizontal! * 4,
                    color: kDarkGreyColor,
                  ),
                ),
                style: kQuestrialMedium.copyWith(
                  fontSize: Config.blockSizeHorizontal! * 4,
                  color: kDarkGreyColor,
                ),
              ),
              SizedBox(
                height: Config.blockSizeVertical! * 3.8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Recent',
                        style: kQuestrialSemiBold.copyWith(
                          fontSize: Config.blockSizeHorizontal! * 4,
                          color: kLigthtBlackColor,
                        ),
                      ),
                      SizedBox(
                        width: Config.blockSizeHorizontal! * 1.5,
                      ),
                      SvgPicture.asset('assets/arrow_down_icon.svg')
                    ],
                  ),
                  SvgPicture.asset('assets/sort_icon.svg')
                ],
              ),
              SizedBox(
                height: Config.blockSizeVertical! * 2.5,
              ),
              GridView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: folderColor.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: Config.blockSizeHorizontal! * 2,
                  mainAxisSpacing: Config.blockSizeHorizontal! * 2,
                  mainAxisExtent: 107,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.5 * kPaddingHorizontal),
                    decoration: BoxDecoration(
                      color: folderColor[index],
                      borderRadius: BorderRadius.circular(
                        kBorderRadius,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset('assets/${iconColors[index]}'),
                            SvgPicture.asset('assets/${moreIconColors[index]}'),
                          ],
                        ),
                        SizedBox(
                          height: Config.blockSizeVertical! * 1,
                        ),
                        Text(
                          folderName[index],
                          style: kQuestrialSemiBold.copyWith(
                            fontSize: Config.blockSizeHorizontal! * 4,
                            color: textColor[index],
                          ),
                        ),
                        SizedBox(
                          height: Config.blockSizeVertical! * 0.3,
                        ),
                        Text(
                          folderDates[index],
                          style: kQuestrialRegular.copyWith(
                            fontSize: Config.blockSizeHorizontal! * 2.22,
                            color: textColor[index],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
