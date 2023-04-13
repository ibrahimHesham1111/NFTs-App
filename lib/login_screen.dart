import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_project/frostedGlassBox_screen.dart';
import 'package:nft_project/home_screen.dart';

class LoginScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(height: double.infinity,
              width: double.infinity,
              image: AssetImage('assets/images/cover.png'),
            fit: BoxFit.cover,
          ),
          Align(
            alignment:AlignmentDirectional.topCenter ,
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome To',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      Text(
                        'NFT Marketplace',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
           Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 50.0
              ),
              child: FrostedGlassBox(
                  width: 330.0,
                  height: 210.0,
                  child: Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Explore and Mint NFTs',
                            style: TextStyle(
                              color: Colors.white,
                                fontSize: 22.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'You can buy and sell the NFTs of the best',
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            'artists in the world',
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),

                          InkWell(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context, MaterialPageRoute(
                                  builder: (context)
                                  {
                                  return  HomeScreen();
                                  }), (route) => false);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 20.0
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Container(
                                  width: 190,
                                  height: 44,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      border: Border.all(width: 1.0,color: Colors.white.withOpacity(.4))
                                  ),
                                  child: Stack(
                                    children: [
                                      BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 10.0,
                                            sigmaY: 10.0
                                        ),
                                        child: Container(),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          border:Border.all(color: Colors.white.withOpacity(.3)),
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Colors.blue.withOpacity(0.10),
                                                Colors.purple.withOpacity(0.5),
                                              ]
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional.center,
                                        child: Text(
                                            'Get started now',
                                          style: TextStyle(
                                            color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),
                                            ),
                                      ),


                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

              ),
            ),
          ),


          
        ],
      )

    );
  }
}
