import 'package:companywebapp/desktop_topbar.dart';
import 'package:flutter/material.dart';
import 'Additional/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  IconData setAlertSymbol(String statusValue){
    if(statusValue == "Idle"){
      return Icons.warning_amber_outlined;
    } else {
      return Icons.check_outlined;
    }
  }

  Color setElementColorOnTemp(String tempValue){
    print(tempValue);
    print(tempValue.length);
    if(tempValue == 'null'){
      return Colors.grey;
    }else{
      if(double.parse(tempValue) > 25.5){
        return Colors.red;
      } else if(double.parse(tempValue) < 23){
        return Colors.blue;
      } else {
        return Colors.green;
      }
    }
  }
  final List _isHovering = [
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    // if((MediaQuery.of(context).size.height) > (MediaQuery.of(context).size.width)){
    //   return Scaffold(
    //     backgroundColor: Colors.white,
    //     body: Container(
    //       child: GestureDetector(
    //         onTap: (){
    //           setState(() {
    //             print("Height:" + (MediaQuery.of(context).size.height).toString());
    //             print("Width:" + (MediaQuery.of(context).size.width).toString());
    //             print("Ratio:" + (MediaQuery.of(context).size.width/MediaQuery.of(context).size.height).toString());
    //           });
    //         },
    //         child: Container(
    //           padding: EdgeInsets.all((MediaQuery.of(context).size.width)*0.005208),
    //           height: (MediaQuery.of(context).size.width/MediaQuery.of(context).size.height)>1.8 ? 110.0 : 105.0,//(MediaQuery.of(context).size.height)*0.1061,
    //           width: (MediaQuery.of(context).size.width/MediaQuery.of(context).size.height)>1.8 ? 110.0 : 105.0,//(MediaQuery.of(context).size.width)*0.05208,
    //           //color: setElementColor(statusVal), //Original One
    //           color: setElementColorOnTemp("23.5"),
    //           child:Column(
    //             children: [
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Text("55%",style: TextStyle(fontSize: 12.5,fontWeight: FontWeight.bold),),
    //                   Text("7001",style: TextStyle(fontSize: 12.5,fontWeight: FontWeight.bold),),
    //                 ],
    //               ),
    //               SizedBox(height: 5,),
    //               Text("23.5°",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
    //               SizedBox(height: 5,),
    //               Text("E1-1-1024",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Text("Active",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
    //                   Icon(setAlertSymbol("Active"),size: 20,),
    //                 ],
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //   );
    // }
    return Scaffold(
      // appBar: PreferredSize(preferredSize: Size(MediaQuery.of(context).size.width, 1000), child: NavBar(),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child:Stack(
                  children: [
                    Image.asset("images/homepage v2.jpg",fit: BoxFit.fitWidth,),
                    //Positioned(left:10,top:10,child: Image.asset("images/logo.png",height: 50,)),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 20,),
                          Image.asset("images/logo.png",height: 50,),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(width: screenSize.width / 8),
                                InkWell(
                                  onHover: (value) {
                                    setState(() {
                                      value
                                          ? _isHovering[0] = true
                                          : _isHovering[0] = false;
                                    });
                                  },
                                  hoverColor: Colors.transparent,
                                  onTap: () {},
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'Pricing',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: _isHovering[0] ? active : disable,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Visibility(
                                        maintainAnimation: true,
                                        maintainState: true,
                                        maintainSize: true,
                                        visible: _isHovering[0],
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: active,
                                              borderRadius: BorderRadius.circular(20)),
                                          height: 7,
                                          width: 7,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: screenSize.width / 20),
                                InkWell(
                                  onHover: (value) {
                                    setState(() {
                                      value
                                          ? _isHovering[1] = true
                                          : _isHovering[1] = false;
                                    });
                                  },
                                  hoverColor: Colors.transparent,
                                  onTap: () {},
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        'Log In',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: _isHovering[1] ? active : disable,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Visibility(
                                        maintainAnimation: true,
                                        maintainState: true,
                                        maintainSize: true,
                                        visible: _isHovering[1],
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: active,
                                              borderRadius: BorderRadius.circular(20)),
                                          height: 7,
                                          width: 7,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: screenSize.width / 20),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: active,
                                borderRadius: BorderRadius.circular(25)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 12),
                            child: Text(
                              "Register",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: screenSize.width / 40),
                        ],
                      ),
                    ),
                    Positioned(right:100,bottom:150,child: Container(color: Colors.teal,height: 300,width: 450,))
                  ],
                ),
                // child: ListView(
                //     physics: ClampingScrollPhysics(),
                //     scrollDirection: Axis.horizontal,
                //     children: [
                //       Image.asset("images/homescreen low v4.png",height: MediaQuery.of(context).size.height,),
                //       Container(
                //       height: MediaQuery.of(context).size.height,
                //       width: MediaQuery.of(context).size.width - (MediaQuery.of(context).size.height*(1362/1920)),
                //       color: Color(0xFFeee6d1),
                //     )
                //     ],)
              ),
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     Image.asset("images/homescreen low v4.png",fit: BoxFit.contain,height: MediaQuery.of(context).size.height,),
                //     Container(
                //       height: MediaQuery.of(context).size.height,
                //       width: MediaQuery.of(context).size.width,
                //       color: Color(0xFFeee6d1),
                //     ),
                //
                //   ],
                // ),
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       Container(
              //         height: MediaQuery.of(context).size.height,
              //         width: 150,
              //         color: Color(0xFFeee6d1),
              //       ),
              //       Image.asset("images/homescreen low v4.png",fit: BoxFit.contain,height: MediaQuery.of(context).size.height,),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

