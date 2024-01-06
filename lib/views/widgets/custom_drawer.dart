import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
           UserInfoListTile(
            image: Assets.imagesAvatar2,
            title: 'Mahmoud Gabr',
            subTitle: 'mahmoudgabr1121@gmail.com',
          ),
          DrawerItemsListView()
        ],
      ),
    );
  }
}

