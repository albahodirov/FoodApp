import 'package:flutter/material.dart';
import 'package:foodapp/cart/cart_page.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        actions: [
          Icon(
            Icons.favorite_border_outlined,
            color: Colors.redAccent,
            size: 28.0,
          ),
          SizedBox(width: 20.0,),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              //color: Colors.deepPurpleAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage("assets/images/food.png"),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(1, 3),
                            spreadRadius: 3,
                            blurRadius: 6,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(110),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      //color: Colors.greenAccent,
                      child: Text(
                        "Tomato Veggie",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      //color: Colors.yellow,
                      child: Text(
                        "GHS 8.00",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 43.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Container(
                      //color: Colors.yellow,
                      child: Text(
                        "Delivery info",
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30.0,
                      top: 10.0,
                    ),
                    child: Container(
                      //color: Colors.yellow,
                      child: Text(
                        "Delivered between monday aug and\n"
                        "thursday 20 from 8 pm to 91:32 pm",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Container(
                      //color: Colors.yellow,
                      child: Text(
                        "Return policy",
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30.0,
                      top: 10.0,
                    ),
                    child: Container(
                      //color: Colors.yellow,
                      child: Text(
                        "Delivered between monday aug and\n"
                        "thursday 20 from 8 pm to 91:32 pm\n"
                        "a broken food place contact our hotline",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            flex: 4,
          ),
          Expanded(
            child: Container(
              //color: Colors.greenAccent,
              child: Container(
                //color: Colors.deepPurpleAccent,
                margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 35.0),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Start ordering",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFA4A0C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
