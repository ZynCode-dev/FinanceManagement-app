

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hugeicons/hugeicons.dart';

class Savings extends StatelessWidget {
  const Savings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240,240,240, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(CupertinoIcons.back,size: 28,),
        ),
        centerTitle: true,
        actionsPadding: EdgeInsets.all(20),
        title: Text(
          'Savings',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
        ),
        actions: [
          Icon(CupertinoIcons.add,color: Colors.black,size: 28,),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              _progressCard(
                Color(0xFFE0533D),
                'Iphone 13 Mini',
                Colors.white,
                HugeIcons.strokeRoundedSmartPhone01,
                '\$300 of \$699',
                0.5,
                '14 days'
              ),
              SizedBox(height: 10,),
              _progressCard(
                Color(0xFFE78C9D),
                'Macbook Pro M1',
                Colors.white,
                HugeIcons.strokeRoundedLaptop,
                '\$300 of \$1,499',
                0.6,
                '30 days',
              ),
              SizedBox(height: 10,),
              _progressCard(
                Color(0xFFEED868),
                'Car',
                Colors.black,
                HugeIcons.strokeRoundedKey02,
                '\$10,000 of \$20,000',
                0.5,
                '30 days',
              ),
              SizedBox(height: 10,),
              _progressCard(
                Color(0xFF377CC8),
                'House',
                Colors.black,
                HugeIcons.strokeRoundedHome03,
                '\$65,000 of \$30,000',
                0.5,
                '3 years',
              ),
            ],

          ),
        ),
      ),
    );
  }

  Widget _progressCard(Color bgColor,String title, Color titleClr ,IconData icon,String price, double percent,String days) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children :[
          Positioned(
            top: -35,
            right: -10,
            child: Transform.rotate(
              angle: -0.7,
              child: Icon(
                icon,
                size: 130,
                color: Color(0xFFc7c7c7),
              ),
            ) ,
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Product name
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: titleClr,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Progress bar label
                        Text(
                          'Balance',
                          style: TextStyle(
                            fontSize: 14,
                            color: titleClr,
                          ),
                        ),

                        // Progress percentage
                        Text(
                          '${percent*100.toInt()}%',
                          style: TextStyle(
                            fontSize: 14,
                            color: titleClr,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    LinearProgressIndicator(
                      value: percent, // 50% progress
                      minHeight: 6,
                      borderRadius: BorderRadius.circular(15),

                      backgroundColor: Color(0xFFE0F2F1), // Light gray background
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.black), // Black progress
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Current balance
                        Text(
                          price,
                          style: TextStyle(
                            fontSize: 14,
                            color: titleClr,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        // Days left
                        Text(
                          '$days left',
                          style: TextStyle(
                            fontSize: 12,
                            color: titleClr,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  'See detail',
                  style: TextStyle(
                    fontSize: 14,
                    color: titleClr,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
        ] ,
      ),
    );
  }

}
