import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hugeicons/hugeicons.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240,240,240, 1),
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(20.0,0,0,0),
          child: CircleAvatar(
            backgroundImage: AssetImage('asset/images/profile.png'),
            radius: 30,
          ),
        ),
        title: Text(
          'Wallet',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(36, 36, 36, 1),
          ),
        ),
        centerTitle: true,
        actions: [
          HugeIcon(
            icon: HugeIcons.strokeRoundedMoreVertical,
            color: Colors.black,
            size: 30.0,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            SizedBox(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 20,),
                  _dashedLineWithPlusSign(),
                  SizedBox(width: 15,),
                  _cardBalanceWidget(Colors.white,'\$10,000.00'),
                  SizedBox(width: 15,),
                  _cardBalanceWidget(Color(0xFFEED868),'\$15,000.00'),
                  SizedBox(width: 20,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,0,20,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transactions',
                    style: TextStyle(
                      //color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    FontAwesomeIcons.sliders,
                    size: 20,
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            _subscriptionCard('Dribbble','Subscription free','-\$15.00',Colors.redAccent,HugeIcons.strokeRoundedLaptop,Color(0xFFEED868)),
            SizedBox(height: 10,),
            _subscriptionCard('House','Saving','-\$50.00',Colors.redAccent,HugeIcons.strokeRoundedDownload04,Color(0xFF377CC8)),
            SizedBox(height: 10,),
            _subscriptionCard('Sony Camera','Shopping free','-\$200.00',Colors.redAccent,HugeIcons.strokeRoundedShoppingBag02,Color(0xFFF6BDE9)),
            SizedBox(height: 10,),
            _subscriptionCard('Paypal','Salary','-\$32.00',Colors.redAccent,HugeIcons.strokeRoundedCreditCard,Color(0xFF469B88)),
            SizedBox(height: 10,),
            _subscriptionCard('Car','Saving','-\$40.00',Colors.redAccent,HugeIcons.strokeRoundedDownload04,Color(0xFF377CC8)),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,0,20,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Saving',
                    style: TextStyle(
                      //color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: ()async{
                      await Get.toNamed('/savings');
                    },
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Color(0xFF377CC8),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            _productCard(HugeIcons.strokeRoundedSmartPhone01,'Iphone 13 Mini',0.5,'\$699.00'),
            SizedBox(height: 10,),
            _productCard(HugeIcons.strokeRoundedLaptop,'Macbook Pro M1',0.65,'\$1,499.00'),
            SizedBox(height: 10,),
            _productCard(HugeIcons.strokeRoundedHome03,'House',0.45,'\$65,000.00'),
            SizedBox(height: 10,),
            _productCard(HugeIcons.strokeRoundedKey02,'Car',0.45,'\$20,000.00'),
            SizedBox(height: 10,),
            SizedBox(height: 60,),
          ],
        ),
      ),

    );
  }

  Widget _dashedLineWithPlusSign(){
    return DottedBorder(
      color: Colors.black,
      strokeWidth: 2,
      borderType: BorderType.RRect,
      radius: Radius.circular(12),
      dashPattern: [12, 4], // 6px dash, 4px space
      child: Container(
        width: 40,
        height: 170,
        alignment: Alignment.center,
        child: Icon(
          FontAwesomeIcons.circlePlus
        ),
      ),
    );
  }
  Widget _cardBalanceWidget(Color clr,String price) {
    return Container(
      width: 280,
      //
      decoration: BoxDecoration(
        color: clr,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Balance',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            price,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'asset/images/vector.png', // Replace with your logo path
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '1234',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '•••• ••••',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(36, 36, 36, 1),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '3456',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: Color.fromRGBO(36, 36, 36, 1),
              borderRadius: BorderRadius.only(bottomRight:Radius.circular(8),bottomLeft: Radius.circular(8) ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Zarror Nibros',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Exp',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '09/23',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _subscriptionCard(String title,String suTitle,String price,Color priceColor, IconData icon,Color iconColor) {
    return Container(
      margin: EdgeInsets.only(left: 20,right: 20),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          // Avatar icon
          CircleAvatar(
            radius: 24,
            backgroundColor: iconColor.withOpacity(0.29), // Light orange background
            child: HugeIcon(
              icon: icon,
              color: iconColor,
              size: 25,
            ) ,
          ),

          SizedBox(width: 16), // Space between avatar and text

          // Text section
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product name
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Subscription fee
                Text(
                  suTitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          // Price
          Text(
            price,
            style: TextStyle(
              fontSize: 18,
              color: priceColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _productCard(IconData icon,String title, double percent, String price) {
    return Container(
      //width: 300,
      margin: EdgeInsets.only(left: 20,right: 20),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xFF377CC8).withOpacity(0.30), // Light blue background
            child: Center(
              child: Icon(
                icon,
                color: Color(0xFF377CC8),
                size: 25,
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Avatar icon and product name
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                LinearProgressIndicator(
                  value: percent, // 50% progress
                  minHeight: 7,
                  borderRadius: BorderRadius.circular(20),
                  backgroundColor: Color(0xFFE0F2F1), // Light blue background
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Blue progress
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
