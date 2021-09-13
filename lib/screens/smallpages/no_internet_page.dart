import 'package:flutter/material.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 140,
              ),
              Center(
                child: Container(
                  height: 113,
                  width: 113,
                  child: Image.asset(
                    "assets/images/wifi_no_connect.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "No internet Connection",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: Center(
                  child: Container(
                    width: 400,
                    height: 80,
                    child: Column(
                      children: [
                        Text(
                          "Your internet connection is currently  ",
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey.shade500),
                        ),
                        Text(
                          "not available please check or try again.",
                          style: TextStyle(
                              fontSize: 15, color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 155,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                height: 70,
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFA4A0C),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    "Try again",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,),
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
