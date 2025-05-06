import 'package:finance_manage/views/pages/myHome.dart';
import 'package:finance_manage/views/pages/wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hugeicons/hugeicons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentTab = 0;
  late Widget currentScreen;

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentScreen = const MyHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color.fromRGBO(240,240,240, 1),
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          ),
          color: Colors.white,
        ),
        height: MediaQuery.of(context).size.height*0.07,
        //elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: (){
                setState(() {
                  currentScreen = const Home();
                  currentTab = 0;
                });
              },
              icon: Image.asset(
                currentTab == 0
                    ? 'asset/images/home.png'
                    : 'asset/images/home1.png',
                height: 30, // size of your icon
                width: 30,
              ),
            ),
            IconButton(
              onPressed: (){
                setState(() {
                  currentScreen = Wallet();
                  currentTab = 1;
                });

              },
              icon: Image.asset(
                currentTab == 1
                    ? 'asset/images/wallet.png'
                    : 'asset/images/wallet1.png',
                height: 30, // size of your icon
                width: 30,
              ),
            ),
            IconButton(
              onPressed: (){
                setState(() {
                  currentTab = 2;
                });
              },
              icon: Image.asset(
                currentTab == 2
                    ? 'asset/images/list.png'
                    : 'asset/images/list1.png',
                height: 30, // size of your icon
                width: 30,
              ),
            ),
            IconButton(
              onPressed: (){
                setState(() {
                  currentTab = 3;
                });
              },
              icon: Image.asset(
                currentTab == 3
                    ? 'asset/images/user.png'
                    : 'asset/images/user1.png',
                height: 30, // size of your icon
                width: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }

}


