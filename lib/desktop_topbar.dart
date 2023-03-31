import 'package:flutter/material.dart';
import 'Additional/constants.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List _isHovering = [
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 20,),
              Image.asset("images/logo.png", fit: BoxFit.fitHeight, height: 32,),
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
              //TextButton(onPressed: (){}, child: Text("Register")),
              Container(
                decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(30)),
                padding: const EdgeInsets.symmetric(
                    horizontal: 18, vertical: 12),
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 26,
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
    );
  }
}