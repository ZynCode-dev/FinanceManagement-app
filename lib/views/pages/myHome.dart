import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240,240,240, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0,30,20,16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage('asset/images/profile.png'),
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good Morning!',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(36, 36, 36, 1),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'C Cristiano Ronaldo',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(36, 36, 36, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Badge(
                      smallSize: 9,
                      alignment: Alignment(0.7, -0.7),
                      child: HugeIcon(
                        icon: HugeIcons.strokeRoundedNotification01,
                        color: Colors.black,
                        size: 30.0,
                      ),
                    ),
                    onPressed: () {
                      // Handle notification bell tap
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            totalBalanceCard(),
            Container(
              margin: EdgeInsets.fromLTRB(20,20,20,20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  //padding: EdgeInsets.fromLTRB(18,12,18,12),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(36, 36, 36, 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    clipBehavior: Clip.hardEdge,
                    children: [
                      Positioned(
                        top: -20,
                        left: -20,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFF469B88), // Teal color
                              borderRadius: BorderRadius.circular(35)
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -18,
                        right: -18,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5D8CB), // Yellow color
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(18,12,18,12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                          children: [
                            Icon(CupertinoIcons.arrow_down,color: Color(0xFF53d258),size: 40,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Income',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  '\$20,000',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 2,
                              height: 55,
                              color: Colors.white54,
                            ),
                            Icon(CupertinoIcons.arrow_up,color: Color(0xFFE0533D),size: 40,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Outcome',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  '\$17,000',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,0,20,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Earnings',
                    style: TextStyle(
                      //color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: Color(0xFF377CC8),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 20,),
                  buildContainer('U','Upwork','\$3,000',Color(0xFFE0533D)),
                  SizedBox(width: 15,),
                  buildContainer('F','Freepic','\$3,000',Color(0xFFE78C9D)),
                  SizedBox(width: 15,),
                  buildContainer('W','Envato','\$2,000',Color(0xFF377CC8)),
                  SizedBox(width: 20,),
                ],
              ),
            ),
            SizedBox(height: 10,),
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
                  Text(
                    'See All',
                    style: TextStyle(
                      color: Color(0xFF377CC8),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  productCard(context,'Iphone 13 Mini', '\$699',Color(0xFFE0533D),0.5 ),
                  productCard(context,'Macbook Pro M1', '\$1499',Color(0xFFE78C9D),0.4),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  productCard(context,'Car', '\$20,000',Color(0xFFEED868),0.7 ),
                  productCard(context,'House', '\$30,500',Color(0xFF377CC8),0.6),
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
                  Text(
                    'See All',
                    style: TextStyle(
                      color: Color(0xFF377CC8),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20,),
                Text('Today',style: TextStyle(color: Colors.grey),),
              ],
            ),
            SizedBox(height: 20,),
            subscriptionCard('Adobe Illustrator','Subscription free','-\$32.00',Colors.redAccent,HugeIcons.strokeRoundedLaptop,Color(0xFFEED868)),
            SizedBox(height: 10,),
            subscriptionCard('Dribbble','Subscription free','-\$15.00',Colors.redAccent,HugeIcons.strokeRoundedLaptop,Color(0xFFEED868)),
            SizedBox(height: 10,),
            subscriptionCard('Sony Camera','Shopping free','-\$200.00',Colors.redAccent,HugeIcons.strokeRoundedShoppingBag02,Color(0xFFF6BDE9)),
            SizedBox(height: 10,),
            subscriptionCard('Paypal','Salary','+\$32.00',Colors.green,HugeIcons.strokeRoundedCreditCard,Color(0xFF469B88)),
            SizedBox(height: 65,),
          ],
        ),
      ),
    );
  }
  Container buildContainer(String letter,String title, String price,Color clr) {
    return Container(
      padding: EdgeInsets.only(top: 15,bottom: 15),
      width: 140,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: clr,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius:  BorderRadius.circular(30),
              color: Color(0xFFf7d4ce),
            ),
            child: Text(letter,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          ),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 2,),
              Text(
                price,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }

  Widget totalBalanceCard() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromRGBO(36, 36, 36, 1),
          ),
          child: Stack(
            clipBehavior: Clip.hardEdge,
            children: [
              Positioned(
                bottom: -35,
                left: -35,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color(0xFF469B88),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                right: -80,
                child: Container(
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFEED868),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: -140,
                right: -100,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xFF377CC8),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Balance',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '\$25,000.40',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'My Wallet',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 8),
                        InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {},
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: HugeIcon(
                              icon: HugeIcons.strokeRoundedArrowRight02,
                              color: Colors.black,
                              size: 25.0,
                            ),
                          ),
                        ),
                      ],
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


  Widget productCard(BuildContext context,String title,String price,Color clr,double prcnt) {
    return Container(
      width: MediaQuery.of(context).size.width*0.435,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product name and arrow icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: Colors.black,
              ),
            ],
          ),
          // Price
          SizedBox(height: 8),
          Text(
            price,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Progress bar
          SizedBox(height: 16),
          LinearProgressIndicator(
            borderRadius: BorderRadius.circular(20),
            value: prcnt,
            minHeight: 8,
            backgroundColor: Color(0xFFE0F2F1), // Light greenish background
            valueColor: AlwaysStoppedAnimation<Color>(clr),
          ),
        ],
      ),
    );
  }

  Widget subscriptionCard(String title,String suTitle,String price,Color priceColor, IconData icon,Color iconColor) {
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
}
