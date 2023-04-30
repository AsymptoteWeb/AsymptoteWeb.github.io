import 'package:companywebapp/desktop_topbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Additional/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

import 'Additional/website_contents.dart';

///render using this before release///
///Step 1: cd C:\Users\Bivin\AndroidStudioProjects\companywebapp
///Step 2: flutter build web --web-renderer canvaskit --release
///Step 3: cd build/web
///Step 4: git add .
///Step 6: git commit -m "message"
///Step 7: git push origin master
///
class HomeScreen_v5 extends StatefulWidget {
  const HomeScreen_v5({Key? key}) : super(key: key);

  @override
  _HomeScreen_v5State createState() => _HomeScreen_v5State();
}

class _HomeScreen_v5State extends State<HomeScreen_v5> {

  final projectsWebKey = GlobalKey();
  final projectsMobileKey = GlobalKey();
  final servicesWebKey = GlobalKey();
  final servicesMobileKey = GlobalKey();
  final contactUsWebKey = GlobalKey();

  final ScrollController _scrollController = ScrollController();

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

  Future<void> _showProjectsDialog(int selectedIndex) async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            backgroundColor: Color(0xFFeee6d1),
            title: Text(
              companyServices[selectedIndex],
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            children: <Widget>[
              Image.asset("images/projects/${companyProjectsImg[selectedIndex]}", height:  40.h,),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Text(
                  companyServicesDetailsHeading[selectedIndex],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Text(companyServicesDetails[selectedIndex],
                  textAlign: TextAlign.center,
                ),
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.clear,),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(CircleBorder()),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      backgroundColor: MaterialStateProperty.all(Color(0xFFD5C08F)),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
                        if (states.contains(MaterialState.pressed)) return Color(0xff004d65);
                      }),
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  }

  Future<void> _showServicesDialog(int selectedIndex) async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            backgroundColor: Color(0xFFeee6d1),
            title: Text(
              companyServices[selectedIndex],
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            children: <Widget>[
              Image.asset("images/services/${companyServicesImg[selectedIndex]}", height:  40.h,),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Text(
                  companyServicesDetailsHeading[selectedIndex],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Text(companyServicesDetails[selectedIndex],
                  textAlign: TextAlign.center,
                ),
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.clear,),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(CircleBorder()),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      backgroundColor: MaterialStateProperty.all(Color(0xFFD5C08F)),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
                        if (states.contains(MaterialState.pressed)) return Color(0xff004d65);
                      }),
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  }


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
      appBar:  MediaQuery.of(context).size.width < 700 ?
      AppBar(
        elevation: 3,
        shadowColor: Color(0xffeee6d1),//eee6d1
        backgroundColor: Colors.white,//Color(0xff010203),
        title: Image.asset("images/logo.png",height: 7.h, color: Color(0xff187299)),//color: Color(0xff004d65),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            //TODO: Redirect to call
            UrlLauncher.launch("tel://+971556535870");
          },
          icon: Icon(Icons.call, size: 17.sp,
            color: Color(0xff004d65),//Color(0xffad9c00),
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){
                //TODO: Dropdown
                // Scrollable.ensureVisible(projectsMobileKey.currentContext!, duration: Duration(seconds: 1), curve: Curves.easeIn);
              },
              icon: Icon(Icons.menu, size: 17.sp, color: Color(0xff004d65),)
          ),
        ],
      ) : null,
      // appBar: PreferredSize(preferredSize: Size(MediaQuery.of(context).size.width, 1000), child: NavBar(),),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: MediaQuery.of(context).size.width < 700 ?
          Column(//Mobile
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    //child: Image.asset("images/homepage.png", fit: BoxFit.fill,),//without sidebar
                    child: Image.asset("images/homepage v2.jpg", fit: BoxFit.contain,),//with sidebar
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
                        'Your Dreams\n   to Perfection',
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 22.sp,
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
              // Container(
              //   height: 40.h,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     color: Colors.white,//Color(0xff010203),
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.fromLTRB(8, 30, 8, 20),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Text('BUILD YOUR DREAM HOME WITH US',
              //           style: GoogleFonts.merriweatherSans(
              //             fontSize: 10.sp,
              //             fontWeight: FontWeight.w900,
              //             height: 0.9,
              //             color: Color(0xff004d65),//Color(0xff2596be),
              //           ),
              //           //style: TextStyle(color: Color(0xffad9c00), fontSize: 17.sp), textAlign: TextAlign.center,
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.all(15.0),
              //           child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
              //             style: GoogleFonts.merriweatherSans(
              //               fontSize: 7.sp,
              //               //fontWeight: FontWeight.w900,
              //               color: Color(0xff004d65),//Color(0xff2596be),
              //             ),
              //             textAlign: TextAlign.justify,
              //             //style: TextStyle(color: Color(0xffad9c00), fontSize: 17.sp), textAlign: TextAlign.center,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              Container(
                height: 75.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,//Color(0xff010203),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 30, 8, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 0, 30, 50),
                        child: Image.asset("images/aboutus2.jpg", fit: BoxFit.contain,height: 25.h,),
                      ),
                      Text('About Us',
                        style: GoogleFonts.merriweatherSans(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w900,
                          height: 0.9,
                          color: Color(0xff004d65),//Color(0xff2596be),
                        ),
                        //style: TextStyle(color: Color(0xffad9c00), fontSize: 17.sp), textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(aboutCompany,
                          style: GoogleFonts.merriweatherSans(
                            fontSize: 7.sp,
                            //fontWeight: FontWeight.w900,
                            color: Color(0xff004d65),//Color(0xff2596be),
                          ),
                          textAlign: TextAlign.justify,
                          //style: TextStyle(color: Color(0xffad9c00), fontSize: 17.sp), textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                key: projectsMobileKey,
                height: 105.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFeee6d1),//Color(0xff010203),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('OUR PROJECTS',
                      style: GoogleFonts.merriweatherSans(
                        fontSize: 12.sp,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          itemCount: 8,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: (){
                                print(index);
                              },
                              child: Card(
                                elevation: 6,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        flex: 4,
                                        child:ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(5),
                                            topLeft: Radius.circular(5),
                                          ),
                                          child: Image.asset("images/projects/${companyProjectsImg[index]}", fit: BoxFit.fill,),
                                        ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(companyProjectsLocation[index], style: TextStyle(fontSize: 7.sp, fontWeight: FontWeight.bold),),
                                          // IconButton(
                                          //   onPressed: () { },
                                          //   icon: Icon(Icons.arrow_right, size: 8.sp,),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              Container(
                height: 75.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('OUR SERVICES',
                      style: GoogleFonts.merriweatherSans(
                        fontSize: 12.sp,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          itemCount: 6,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: (){
                                _showServicesDialog(index);
                              },
                              child: Card(
                                elevation: 6,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(flex: 3, child: Image.asset("images/services/${companyServicesImg[index]}", fit: BoxFit.fill,)),
                                    Expanded(child: Center(child: Text(companyServices[index], style: TextStyle(fontSize: 8.sp, fontWeight: FontWeight.bold), textAlign: TextAlign.center,))),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              Container(
                height: 105.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFeee6d1),//Color(0xff010203),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          //color: Colors.green,
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        child: Text(
                                          "Get In Touch",
                                          style: GoogleFonts.merriweatherSans(
                                            fontSize: 8.sp,
                                            fontWeight: FontWeight.w900,
                                            color: Color(0xff004d65),//Color(0xff2596be),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Fill in your details and our Team will get back\nto you shortly.",
                                        style: GoogleFonts.merriweatherSans(
                                          fontSize: 6.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff004d65),//Color(0xff2596be),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(child: Image.asset("images/Contact Us.png", fit: BoxFit.fitHeight,)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 60.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  color: Color(0xFFeee6d1),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                                      child: TextField(
                                        style:TextStyle(fontSize: 7.sp),
                                        maxLength: 100,
                                        decoration: InputDecoration(
                                          fillColor: Colors.white70,
                                          filled: true,
                                          counterText: '',
                                          labelText: 'Your Name',
                                          labelStyle: TextStyle(color: Color(0xff004d65),fontWeight: FontWeight.w100),
                                          border: OutlineInputBorder(),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:  BorderSide(color: Color(0xff004d65)),
                                          ),
                                          hintText: 'Enter your name  (max 100 char)',
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(20, 0, 5, 10),
                                            child: TextField(
                                              style:TextStyle(fontSize: 7.sp),
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white70,
                                                counterText: '',
                                                labelText: 'E-mail',
                                                labelStyle: TextStyle(color: Color(0xff004d65),fontWeight: FontWeight.w100),
                                                border: OutlineInputBorder(),
                                                focusedBorder: OutlineInputBorder(
                                                  borderSide:  BorderSide(color: Color(0xff004d65)),
                                                ),
                                                hintText: 'Enter company email',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(5, 0, 20, 10),
                                            child: TextField(
                                              style: TextStyle(fontSize: 7.sp),
                                              keyboardType: TextInputType.number,
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white70,
                                                labelText: 'Phone number',
                                                labelStyle: TextStyle(color: Color(0xff004d65),fontWeight: FontWeight.w100),
                                                border: OutlineInputBorder(),
                                                focusedBorder: OutlineInputBorder(
                                                  borderSide:  BorderSide(color: Color(0xff004d65)),
                                                ),
                                                hintText: 'Enter phone number',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                                      child: TextField(
                                        style:TextStyle(fontSize: 7.sp),
                                        maxLines: 4,
                                        decoration: InputDecoration(
                                          counterText: '',
                                          labelText: 'Message',
                                          labelStyle: TextStyle(color: Color(0xff004d65),fontWeight: FontWeight.w100),
                                          filled: true,
                                          fillColor: Colors.white38,
                                          border: OutlineInputBorder(),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:  BorderSide(color: Color(0xff004d65)),
                                          ),
                                          hintText: 'Enter message',
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(child: Container()),
                                        Expanded(
                                          child: Container(
                                            height: 10.h,
                                            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(backgroundColor: Color(0xff004d65),),
                                              onPressed: (){},
                                              child: Text(
                                                "Submit",
                                                style: GoogleFonts.merriweatherSans(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white70,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
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
              Container(
                height: 30.h,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Image.asset('images/logo.png', height: 70, color: Colors.white,)),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.email, size: 15, color: Colors.white),
                                      SizedBox(
                                          width: 5
                                      ),
                                      Text(
                                        companyEmail,
                                        style: TextStyle(
                                          fontSize: 7.sp,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: 5
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      UrlLauncher.launch("tel://+971556535870");
                                    },
                                    child: Row(
                                      children: [
                                        Icon(Icons.phone, size: 15, color: Colors.white),
                                        SizedBox(
                                            width: 5
                                        ),
                                        Text(
                                          companyContactNumber,
                                          style: TextStyle(
                                            fontSize: 7.sp,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      height: 5
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        companyAddressLine1,
                                        style: TextStyle(
                                          fontSize: 7.sp,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                      Text(
                                        companyAddressLine2,
                                        style: TextStyle(
                                          fontSize: 7.sp,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                      Text(
                                        companyAddressLine3,
                                        style: TextStyle(
                                          fontSize: 7.sp,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                      Text(
                                        companyCountry,
                                        style: TextStyle(
                                          fontSize: 7.sp,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            companyCopyright,
                            style: TextStyle(
                              fontSize: 7.sp,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
              : Column(//Web
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child:Stack(
                  children: [
                    Image.asset("images/homepage v2.jpg",fit: BoxFit.fitWidth,),
                    //Positioned(left:10,top:10,child: Image.asset("images/logo.png",height: 50,)),
                    Positioned(
                      top: 110,
                      right: 50,
                      child: Container(
                        //height: 30.h,
                        //width: 40.w,
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        decoration: BoxDecoration(
                          //color: Colors.black.withOpacity(0.5) ,
                          color: Colors.transparent,
                        ),
                        child: Text(
                          'Your Dreams\n    to Perfection',
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w900,
                            height: 0.9,
                            color: Color(0xff001f2a),
                          ),//with sidebar
                          //style: TextStyle(color: Colors.white, fontSize: 20.sp), textAlign: TextAlign.center, //without sidebar
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 35, 0, 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.teal.shade50,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(35),bottomLeft: Radius.circular(35),),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            Image.asset("images/logo.png",height: 6.h,color: Color(0xff004d65),),
                            Expanded(child: SizedBox()),
                            InkWell(
                              onHover: (value) {
                                setState(() {
                                  value
                                      ? _isHovering[0] = true
                                      : _isHovering[0] = false;
                                });
                              },
                              hoverColor: Colors.transparent,
                              onTap: () {
                                Scrollable.ensureVisible(projectsWebKey.currentContext!, duration: Duration(seconds: 1), curve: Curves.easeIn);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Projects',
                                    style: TextStyle(
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.bold,
                                      color: _isHovering[0] ? active : disable,
                                    ),
                                  ),
                                  Visibility(
                                    maintainAnimation: true,
                                    maintainState: true,
                                    maintainSize: true,
                                    visible: _isHovering[0],
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.teal,
                                          borderRadius: BorderRadius.circular(20)),
                                      height: 0.5.h,
                                      width: 3.w,
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
                              onTap: () {
                                Scrollable.ensureVisible(servicesWebKey.currentContext!, duration: Duration(seconds: 1), curve: Curves.easeIn);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Services',
                                    style: TextStyle(
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.bold,
                                      color: _isHovering[1] ? active : disable,
                                    ),
                                  ),
                                  Visibility(
                                    maintainAnimation: true,
                                    maintainState: true,
                                    maintainSize: true,
                                    visible: _isHovering[1],
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.teal,
                                          borderRadius: BorderRadius.circular(20)),
                                      height: 0.5.h,
                                      width: 3.w,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: screenSize.width / 25),
                            InkWell(
                              focusColor: Colors.tealAccent,
                              onTap: (){
                                Scrollable.ensureVisible(contactUsWebKey.currentContext!, duration: Duration(seconds: 1), curve: Curves.easeIn);
                              },
                              child: Container(
                                //height: 5.h,
                                decoration: BoxDecoration(
                                    color: Colors.teal,
                                    borderRadius: BorderRadius.circular(25)
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 6,),
                                child: Center(
                                  child: Text(
                                    "Contact Us",
                                    style: TextStyle(
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: screenSize.width / 25),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right:25,
                      bottom:25,
                      child: Container(
                        color: Colors.teal,
                        //height: 30.h,
                        width: 32.w,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(35, 35, 35, 35),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('BUILD YOUR DREAM HOME WITH US',
                                style: GoogleFonts.merriweatherSans(
                                  fontSize: 4.sp,
                                  fontWeight: FontWeight.w900,
                                  height: 0.9,
                                  color: Colors.white,//Color(0xff2596be),
                                ),
                                //style: TextStyle(color: Color(0xffad9c00), fontSize: 17.sp), textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Text(companyIntro,
                                  style: GoogleFonts.merriweatherSans(
                                    fontSize: 3.sp,
                                    //fontWeight: FontWeight.w900,
                                    color: Colors.white,//Color(0xff2596be),
                                  ),
                                  textAlign: TextAlign.justify,
                                  //style: TextStyle(color: Color(0xffad9c00), fontSize: 17.sp), textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,//Color(0xff010203),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 150, 50, 150),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('About Us',
                                    style: GoogleFonts.merriweatherSans(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w900,
                                      height: 0.9,
                                      color: Color(0xff004d65),//Color(0xff2596be),
                                    ),
                                    //style: TextStyle(color: Color(0xffad9c00), fontSize: 17.sp), textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              SizedBox(height: 30,),
                              Container(
                                width: 70.w,
                                child: Text(aboutCompany,
                                  style: GoogleFonts.merriweatherSans(
                                    fontSize: 4.sp,
                                    //fontWeight: FontWeight.w900,
                                    color: Color(0xff004d65),//Color(0xff2596be),
                                  ),
                                  textAlign: TextAlign.justify,
                                  //style: TextStyle(color: Color(0xffad9c00), fontSize: 17.sp), textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Image.asset("images/aboutus2.jpg", fit: BoxFit.fitWidth,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                key: projectsWebKey,
                height: 115.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFeee6d1),//Color(0xff010203),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('OUR PROJECTS',
                      style: GoogleFonts.merriweatherSans(
                        fontSize: 6.sp,
                        fontWeight: FontWeight.w900,
                        height: 0.9,
                        color: Color(0xff004d65),//Color(0xff2596be),
                      ),
                    ),
                    Divider(
                      color: Color(0xff004d65),
                      indent: 50,
                      endIndent: 50,
                      thickness: 2,
                    ),
                    Container(
                      width: 85.w,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(50, 5, 50, 0),
                        child: GridView.builder(
                          shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 5,
                            ),
                            itemCount: 9,
                            itemBuilder: (BuildContext context, int index) {
                            if(index != 8){
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 4,
                                        child:ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(5),
                                            topLeft: Radius.circular(5),
                                          ),
                                          child: Image.asset("images/projects/${companyProjectsImg[index]}", fit: BoxFit.fill,),
                                        ),
                                      ),
                                      //Image.asset("images/homepage.png", fit: BoxFit.contain,),
                                      Expanded(
                                        flex: 1,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(companyProjectsLocation[index], style: TextStyle(fontSize: 3.sp),),
                                            // IconButton(
                                            //   onPressed: () { },
                                            //   icon: Icon(Icons.arrow_right, size: 4.sp,),
                                            // ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  elevation: 6,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      //Image.asset("images/homepage.png", fit: BoxFit.contain,),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                                              child: Text('View More \nProjects', style: TextStyle(fontSize: 4.sp),),
                                            ),
                                            IconButton(
                                              onPressed: () { },
                                              icon: Icon(Icons.arrow_right, size: 4.sp,),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                key: servicesWebKey,
                height: 115.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,//Color(0xff010203),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('OUR SERVICES',
                      style: GoogleFonts.merriweatherSans(
                        fontSize: 6.sp,
                        fontWeight: FontWeight.w900,
                        height: 0.9,
                        color: Color(0xff004d65),//Color(0xff2596be),
                      ),
                    ),
                    Divider(
                      color: Color(0xff004d65),
                      indent: 50,
                      endIndent: 50,
                      thickness: 2,
                    ),
                    Container(
                      width: 85.w,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(50, 5, 50, 0),
                        child: GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                            ),
                            itemCount: 6,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: (){
                                    _showServicesDialog(index);
                                  },
                                  child: Card(
                                    elevation: 6,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Expanded(flex: 3, child: Image.asset("images/services/${companyServicesImg[index]}", fit: BoxFit.fill,)),
                                        Expanded(child: Center(child: Text(companyServices[index], style: TextStyle(fontSize: 4.sp, fontWeight: FontWeight.bold), textAlign: TextAlign.center,))),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                key: contactUsWebKey,
                height: 75.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFeee6d1),//Color(0xff010203),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          //color: Colors.green,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                                child: Container(
                                  //color: Colors.red,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        child: Text(
                                          "Get In Touch",
                                          style: GoogleFonts.merriweatherSans(
                                            fontSize: 6.sp,
                                            fontWeight: FontWeight.w900,
                                            color: Color(0xff004d65),//Color(0xff2596be),
                                          ),
                                        ),
                                      ),
                                      Text(
                                          "Fill in your details and our Team will get back\nto you shortly.",
                                        style: GoogleFonts.merriweatherSans(
                                          fontSize: 4.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff004d65),//Color(0xff2596be),
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Image.asset("images/Contact Us.png", fit: BoxFit.fitHeight,),
                                            SizedBox(width: 10.w,)
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                    color: Color(0xFFeee6d1),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                                        child: TextField(
                                          style:TextStyle(fontSize: 3.sp),
                                          maxLength: 100,
                                          decoration: InputDecoration(
                                            fillColor: Colors.white70,
                                            filled: true,
                                            counterText: '',
                                            labelText: 'Your Name',
                                            labelStyle: TextStyle(color: Color(0xff004d65),fontWeight: FontWeight.w100),
                                            border: OutlineInputBorder(),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide:  BorderSide(color: Color(0xff004d65)),
                                            ),
                                            hintText: 'Enter your name  (max 100 char)',
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              padding: EdgeInsets.fromLTRB(20, 0, 5, 10),
                                              child: TextField(
                                                style:TextStyle(fontSize: 3.sp),
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor: Colors.white70,
                                                  counterText: '',
                                                  labelText: 'E-mail',
                                                  labelStyle: TextStyle(color: Color(0xff004d65),fontWeight: FontWeight.w100),
                                                  border: OutlineInputBorder(),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide:  BorderSide(color: Color(0xff004d65)),
                                                  ),
                                                  hintText: 'Enter company email',
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              padding: EdgeInsets.fromLTRB(5, 0, 20, 10),
                                              child: TextField(
                                                style: TextStyle(fontSize: 3.sp),
                                                keyboardType: TextInputType.number,
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor: Colors.white70,
                                                  labelText: 'Phone number',
                                                  labelStyle: TextStyle(color: Color(0xff004d65),fontWeight: FontWeight.w100),
                                                  border: OutlineInputBorder(),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide:  BorderSide(color: Color(0xff004d65)),
                                                  ),
                                                  hintText: 'Enter phone number',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                                        child: TextField(
                                          style:TextStyle(fontSize: 3.sp),
                                          maxLines: 4,
                                          decoration: InputDecoration(
                                            counterText: '',
                                            labelText: 'Message',
                                            labelStyle: TextStyle(color: Color(0xff004d65),fontWeight: FontWeight.w100),
                                            filled: true,
                                            fillColor: Colors.white38,
                                            border: OutlineInputBorder(),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide:  BorderSide(color: Color(0xff004d65)),
                                            ),
                                            hintText: 'Enter message',
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Expanded(child: Container()),
                                          Expanded(
                                            child: Container(
                                              height: 10.h,
                                              padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(backgroundColor: Color(0xff004d65),),
                                                onPressed: (){},
                                                child: Text(
                                                  "Submit",
                                                  style: GoogleFonts.merriweatherSans(
                                                    fontSize: 4.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white70,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
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
              Container(
                height: 50.h,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Image.asset('images/logo.png', height: 70, color: Colors.white,)
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Contact',
                                    style: TextStyle(
                                      fontSize: 4.sp,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.white,
                                indent: 0,
                                endIndent: 30,
                                thickness: 2,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.email, size: 15, color: Colors.white),
                                  SizedBox(
                                      width: 5
                                  ),
                                  Text(
                                    companyEmail,
                                    style: TextStyle(
                                      fontSize: 3.sp,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: 5
                              ),
                              Row(
                                children: [
                                  Icon(Icons.phone, size: 15, color: Colors.white),
                                  SizedBox(
                                      width: 5
                                  ),
                                  Text(
                                    companyContactNumber,
                                    style: TextStyle(
                                      fontSize: 3.sp,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: 25,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    companyAddressLine1,
                                    style: TextStyle(
                                      fontSize: 3.sp,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  Text(
                                    companyAddressLine2,
                                    style: TextStyle(
                                      fontSize: 3.sp,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  Text(
                                    companyAddressLine3,
                                    style: TextStyle(
                                      fontSize: 3.sp,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  Text(
                                    companyCountry,
                                    style: TextStyle(
                                      fontSize: 3.sp,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Expanded(
                      //     flex: 1,
                      //     child: SizedBox()
                      // ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              companyCopyright,
                              style: TextStyle(
                                fontSize: 3.sp,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

