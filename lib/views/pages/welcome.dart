import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(36, 36, 36, 1),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height*0.45,
                  height: MediaQuery.of(context).size.height*0.45,
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height:37,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.height*0.12,
                            height: MediaQuery.of(context).size.height*0.12,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(224, 83, 61, 1),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(60),
                                bottomRight: Radius.circular(60),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.height*0.12,
                            height: MediaQuery.of(context).size.height*0.12,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(157, 167, 208, 1),
                              borderRadius: BorderRadius.circular(60),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.height*0.12,
                            height: MediaQuery.of(context).size.height*0.12,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(70, 155, 136, 1),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(60),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.height*0.12,
                            height: MediaQuery.of(context).size.height*0.12,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(55, 124, 200, 1),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(60),

                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.height*0.24,
                            height: MediaQuery.of(context).size.height*0.12,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(237, 216, 104, 1),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(60),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.height*0.12,
                            height: MediaQuery.of(context).size.height*0.12,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(231, 140, 157, 1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(60),
                                bottomRight: Radius.circular(60),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.height*0.12,
                            height: MediaQuery.of(context).size.height*0.12,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(70, 155, 136, 1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(60),
                                topRight: Radius.circular(60),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.height*0.12,
                            height: MediaQuery.of(context).size.height*0.12,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(55, 124, 200, 1),
                              borderRadius: BorderRadius.circular(60),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 33,
                  child: Image.asset('asset/images/woman.png',height: 312,width: 230,),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Text(
              'Make Your Financial Management Easier',
              style: TextStyle(
                  fontSize: 38,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15,),
            Text(
              'Financy is a mobile application that can help you manage your finances in a simple way.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(width: 6,),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(width: 6,),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor:Colors.transparent,
                  onTap: () async{
                    await Get.toNamed('home');
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Icon(CupertinoIcons.forward,),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
