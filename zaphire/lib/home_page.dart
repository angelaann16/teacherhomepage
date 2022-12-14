import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomepage();
}

class MyHomepage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return initScreen();
  }

  Widget initScreen() {
    Size size = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: Color(0xff053F5E),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff053F5E),
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notifications_rounded,
                color: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 5),
              child: Image.asset("user.png"),
            ),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "Hi, TEACHER'S",
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "Welcome Back",
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25, left: 20, right: 20),
              width: size.width,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x14000000),
                    offset: Offset(0, 10),
                    blurRadius: 15,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: TextField(
                        maxLines: 1,
                        autofocus: false,
                        style:
                            TextStyle(color: Color(0xff107163), fontSize: 20),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search..',
                        ),
                        cursorColor: Color(0xff107163),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff107163),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width,
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    child: Text(
                      'APPOINTMENT DETAILS',
                      style: TextStyle(
                        color: Color(0xff363636),
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                 
                ],
              ),
            ),
            Container(
              width: size.width,
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    child: Text(
                      'REQUESTS',
                      style: TextStyle(
                        color: Color(0xff363636),
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 1),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'See all',
                        style: TextStyle(
                          color: Color(0xff5e5d5d),
                          fontSize: 19,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ListView(
                  children: [
                    demoStatus(
                      "assets/user.png",
                      "Angela Ann Raju",
                      "CSE",
                      "12/02/2020",
                      " 4 pm",
                    ),
                    demoStatus(
                      "assets/user.png",
                      "Angela Ann Raju",
                      "CSE",
                      "12/02/2020",
                      " 4 pm",
                    ),
                    demoStatus(
                      "assets/user.png",
                      "Angela Ann Raju",
                      "CSE",
                      "12/02/2020",
                      " 4 pm",
                    ),
                    demoStatus("assets/user.png", "Angela Ann Raju", "CSE",
                        "12/02/2020", " 4 pm"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget demoApointmentDetails(String img, String name, String drCount) {
    return Container(
      width: 100,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Color(0xff107163),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(img),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: Color(0xffd9fffa).withOpacity(0.07),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              drCount,
              style: TextStyle(
                color: Colors.white,
                fontSize: 8,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget demoStatus(
      String img, String name, String Department, String Date, String Time) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Container(
        height: 90,
        // width: size.width,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              height: 90,
              width: 50,
              child: Image.asset('assets/user.png'),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      name,
                      style: const TextStyle(
                        color: Color(0xff363636),
                        fontSize: 17,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            color: Color(0xffababab),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        
                        
                        Container(
                          margin:
                              EdgeInsets.only(top: 3, left: size.width * 0.25),
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Date: ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  Date,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                                
                              ),
                                const SizedBox(width: 20),
                              Container(
                                child: Text(
                                  "Time: ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                                Container(
                                child: Text(
                                  Time,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              )
                            ],
                            
                          ),
                        )
                      ],
                    ),
                  ),
                  
                ],
                
              ),
            ),
              
            Column(
              children: [
                SizedBox(height: 45),
               
                 
                   Row(
                     children: [
                      SizedBox(width: 40),
                       ElevatedButton(onPressed: () {},
                  
            child: Text("Accept",
                        style: TextStyle(fontSize: 10.0),
                              textAlign: TextAlign.center
                              )),
                     ],
                   ),
                
              ],
            ),
           
           
            
              
                  Column(
              children: [
                SizedBox(height: 45),
               
                 
                   Row(
                     children: [
                      SizedBox(width: 40),
                       ElevatedButton(onPressed: () {},
                  
            child: Text("Reject",
                        style: TextStyle(fontSize: 10.0),
                              textAlign: TextAlign.center
                              )),
                     ],
                   ),
                
              ],
            ),
                 
               
            
          ],
      ),
      ),
    );
  }
}
