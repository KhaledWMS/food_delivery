import 'package:flutter/material.dart';
import 'package:food_delivery/pages/account/change_password.dart';
import 'package:food_delivery/pages/account/profile.dart';
import 'package:food_delivery/pages/cart/shopping_cart.dart';
import 'package:food_delivery/pages/categories/category.dart';
import 'package:food_delivery/pages/favorites/favorite.dart';
import 'package:food_delivery/pages/orders/tracking.dart';
import 'package:food_delivery/utils/colors.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text('khaled waled',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.blackColor,
                    )),
                accountEmail: const Text('k@gmail.com',
                    style: TextStyle(
                      color: AppColors.greyColor,
                    )),
                currentAccountPicture: GestureDetector(
                  child: const CircleAvatar(
                    backgroundColor: AppColors.mainColor,
                    child: Icon(
                      Icons.person,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: AppColors.greyColor.withOpacity(0.1),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    InkWell(
                      child: const ListTile(
                        title: const Text(
                          'الصفحة الرئيسية',
                          style: const TextStyle(
                              color: AppColors.blackColor, fontSize: 16),
                        ),
                        leading: Icon(
                          Icons.home,
                          color: AppColors.mainColor,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.blackColor,
                          size: 16,
                        ),
                      ),
                      onTap: () {},
                    ),
                    const Divider(color: AppColors.greyColor),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    InkWell(
                      child: const ListTile(
                        title: Text(
                          'قائمة المأكولات',
                          style: TextStyle(
                              color: AppColors.blackColor, fontSize: 16),
                        ),
                        leading: Icon(
                          Icons.menu_book,
                          color: AppColors.mainColor,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.blackColor,
                          size: 16,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Category(),
                          ),
                        );
                      },
                    ),
                    const Divider(color: AppColors.greyColor),
                  ],
                ),
              ),
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: const ListTile(
                    title: Text(
                      'حسابي',
                      style:
                          TextStyle(color: AppColors.blackColor, fontSize: 16),
                    ),
                    leading: Icon(
                      Icons.person,
                      color: AppColors.mainColor,
                    ),
                  ),
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          InkWell(
                            child: const ListTile(
                              title: Text(
                                'تغيير الأعدادات الشخصية',
                                style: TextStyle(
                                    color: AppColors.blackColor, fontSize: 16),
                              ),
                              leading: Icon(
                                Icons.manage_accounts,
                                color: AppColors.mainColor,
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.blackColor,
                                size: 16,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Profile(),
                                ),
                              );
                            },
                          ),
                          const Divider(color: AppColors.greyColor),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          InkWell(
                            child: const ListTile(
                              title: Text(
                                'تغيير كلمة المرور',
                                style: TextStyle(
                                    color: AppColors.blackColor, fontSize: 16),
                              ),
                              leading: Icon(
                                Icons.password,
                                color: AppColors.mainColor,
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.blackColor,
                                size: 16,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChangePassword(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const Divider(
                  color: AppColors.greyColor,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    InkWell(
                      child: const ListTile(
                        title: Text(
                          'المفضلة',
                          style: TextStyle(
                              color: AppColors.blackColor, fontSize: 16),
                        ),
                        leading: Icon(
                          Icons.favorite,
                          color: AppColors.mainColor,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.blackColor,
                          size: 16,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Favorite(),
                          ),
                        );
                      },
                    ),
                    const Divider(color: AppColors.greyColor),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    InkWell(
                      child: const ListTile(
                        title: Text(
                          'طلباتي',
                          style: TextStyle(
                              color: AppColors.blackColor, fontSize: 16),
                        ),
                        leading: Icon(
                          Icons.view_list,
                          color: AppColors.mainColor,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.blackColor,
                          size: 16,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShoppingCart(),
                          ),
                        );
                      },
                    ),
                    const Divider(color: AppColors.greyColor),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    InkWell(
                      child: const ListTile(
                        title: Text(
                          'تتبع الطلب',
                          style: TextStyle(
                              color: AppColors.blackColor, fontSize: 16),
                        ),
                        leading: Icon(
                          Icons.timeline,
                          color: AppColors.mainColor,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.blackColor,
                          size: 16,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tracking(),
                          ),
                        );
                      },
                    ),
                    const Divider(color: AppColors.greyColor),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    InkWell(
                      child: const ListTile(
                        title: Text(
                          'من نحن',
                          style: TextStyle(
                              color: AppColors.blackColor, fontSize: 16),
                        ),
                        leading: Icon(
                          Icons.info,
                          color: AppColors.mainColor,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.blackColor,
                          size: 16,
                        ),
                      ),
                      onTap: () {},
                    ),
                    const Divider(color: AppColors.greyColor),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    InkWell(
                      child: const ListTile(
                        title: Text(
                          'مركز الدعم',
                          style: TextStyle(
                              color: AppColors.blackColor, fontSize: 16),
                        ),
                        leading: Icon(
                          Icons.support_agent,
                          color: AppColors.mainColor,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.blackColor,
                          size: 16,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
