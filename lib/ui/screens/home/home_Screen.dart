import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:steel_shop/core/constants/app_colors.dart';
import 'package:steel_shop/core/constants/app_fonts.dart';
import 'package:steel_shop/ui/widgets/home_screen_widget.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
            'Home Screen',
          style: AppFonts.appBarTextStyle1,
        ),
        backgroundColor: AppColors.primaryAppColor,
        centerTitle: true,
      ),
     body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text(
                'Select Category',
              style: AppFonts.appBarTextStyle2,
            ),
            SizedBox(height: 5.h,),
            Expanded(
              child: GridView(
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                children: [
                  HomeItemWidget(
                      title: 'Windows',
                      picture: 'assets/svg/friendship.svg',
                      onPressed: (){

                      }
                  ),
                  HomeItemWidget(
                      title: 'Doors',
                      picture: 'assets/svg/attitude.svg',
                      onPressed: (){

                      }
                  ),
                  HomeItemWidget(
                      title: 'Doors',
                      picture: 'assets/svg/love_svg.svg',
                      onPressed: (){


                      }
                  ),
                  HomeItemWidget(
                      title: 'Windows',
                      picture: 'assets/svg/moti2.svg',
                      onPressed: () {

                      }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
