import 'package:companywebapp/desktop_topbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Additional/constants.dart';
import 'package:sizer/sizer.dart';

class HomeScreen_v2 extends StatefulWidget {
  const HomeScreen_v2({Key? key}) : super(key: key);

  @override
  _HomeScreen_v2State createState() => _HomeScreen_v2State();
}

class _HomeScreen_v2State extends State<HomeScreen_v2> {

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
      appBar:  SizerUtil.deviceType == DeviceType.mobile || SizerUtil.deviceType == DeviceType.tablet ?
      AppBar(
        elevation: 3,
        shadowColor: Color(0xffeee6d1),//eee6d1
        backgroundColor: Colors.white,//Color(0xff010203),
        title: Image.asset("images/logo.png",height: 35.sp, color: Color(0xff2596be),),
        centerTitle: true,
        leading: Icon(Icons.call, size: 17.sp,
          color: Color(0xff2596be),//Color(0xffad9c00),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu, size: 17.sp, color: Color(0xff2596be),)),
        ],
      ) : null,
      // appBar: PreferredSize(preferredSize: Size(MediaQuery.of(context).size.width, 1000), child: NavBar(),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizerUtil.deviceType == DeviceType.mobile || SizerUtil.deviceType == DeviceType.tablet ?
          Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 35.h,
                    width: double.infinity,
                    //child: Image.asset("images/homepage.png", fit: BoxFit.fill,),//without sidebar
                    child: Image.asset("images/homepage v2.jpg", fit: BoxFit.fitHeight,),//with sidebar
                  ),
                  Positioned(
                    top: 5.h,
                    right: 0.w,
                    left: 45.w,
                    bottom: 0.h,
                    child: Container(
                      height: 30.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        //color: Colors.black.withOpacity(0.5) ,
                        color: Colors.transparent,
                      ),
                    child: Text(
                      'Powered By \n    Innovation',
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w900,
                        height: 0.9,
                        color: Color(0xff001f2a),
                      ),//with sidebar
                      //style: TextStyle(color: Colors.white, fontSize: 20.sp), textAlign: TextAlign.center, //without sidebar
                    ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 10.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,//Color(0xff010203),
                ),
                child: Center(
                  child: Text('BUILD YOUR DREAM HOME WITH US',
                    style: GoogleFonts.merriweatherSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w900,
                      height: 0.9,
                      color: Color(0xff004d65),//Color(0xff2596be),
                    ),
                    //style: TextStyle(color: Color(0xffad9c00), fontSize: 17.sp), textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                height: 4.5.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,//Color(0xff010203),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text('OUR PROJECTS',
                        style: GoogleFonts.merriweatherSans(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w900,
                          height: 0.9,
                          color: Color(0xff004d65),//Color(0xff2596be),
                        ),
                      ),
                      Divider(
                        color: Color(0xff004d65),
                        indent: 50,
                        endIndent: 50,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 40.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,//Color(0xff010203),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          // shape: RoundedRectangleBorder(
                          //   side: BorderSide(
                          //     color: Colors.black,
                          //   ),
                          //   borderRadius: BorderRadius.circular(6),
                          // ),
                          elevation: 6,
                          child: Stack(
                            children: [
                              Image.asset("images/homepage.png", fit: BoxFit.fill,),
                              Positioned(
                                left: 2.w,
                                bottom: -1.h,
                                child: Row(
                                  children: [
                                    Text('View Details', style: TextStyle(fontSize: 10.sp),),
                                    IconButton(
                                      onPressed: () { },
                                      icon: Icon(Icons.arrow_forward_outlined, size: 12.sp,),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                )
                ),
            ],
          )
          : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child:Stack(
                  children: [
                    Image.asset("images/homepage v2.jpg",fit: BoxFit.fitWidth,),
                    //Positioned(left:10,top:10,child: Image.asset("images/logo.png",height: 50,)),
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 35, 0, 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.teal.shade50,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(35),bottomLeft: Radius.circular(35),),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 20,),
                            Image.asset("images/logo.png",height: 70,),
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
                                      children: [
                                        SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          'Projects',
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
                                                color: Colors.teal,
                                                borderRadius: BorderRadius.circular(20)),
                                            height: 7,
                                            width: 20,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: screenSize.width / 25),
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
                                          'Services',
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
                                                color: Colors.teal,
                                                borderRadius: BorderRadius.circular(20)),
                                            height: 7,
                                            width: 20,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: screenSize.width / 25),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(25)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 12),
                              child: Text(
                                "Contact Us",
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
                    ),
                    Positioned(right:100,bottom:150,child: Container(color: Colors.teal,height: MediaQuery.of(context).size.height*0.2,width: MediaQuery.of(context).size.width*0.3,))
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

