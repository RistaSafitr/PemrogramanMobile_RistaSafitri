import 'package:flutter/material.dart';
import 'package:posttest7_058_rista/home.dart';

class landingPage extends StatelessWidget {
  const landingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var lebarLayar = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 176, 153, 126),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/model0.png", 
                      width: lebarLayar, 
                      height: size.height * 0.65,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.2, left: 90.0),
                      child: Column(
                        children: [
                          Text(
                            "Let's find the right fabric for you at",
                            style: TextStyle(
                              fontSize: 11,
                              fontStyle: FontStyle.italic
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  "F",
                                  style: TextStyle(
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 249, 237),
                                  ),
                                ),
                                Text(
                                  "abric Store",
                                  style: TextStyle(
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.58),
                      padding: EdgeInsets.only(top: size.height * 0.12),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 249, 237),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(310, 210)
                        ),
                      ),
                      child: ListView(
                        children: [
                          Text(
                            "Make your own clothes",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown.shade900
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 37),
                            child: Row(
                              children: [
                                Text(
                                  "It's time to find the",
                                  style: TextStyle(
                                    fontSize: 12
                                  ),
                                ),
                                Text(
                                  " Best Material ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 200, 115, 58)
                                  ),
                                ),
                                Text(
                                  "for your ",
                                  style: TextStyle(
                                    fontSize: 12
                                  ),
                                ),
                                Text(
                                  "Best Fashion",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 200, 115, 58)
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: size.width * 0.85, top: size.height * 0.59),
                      child: Image.asset(
                        "assets/menu0.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.87, left: size.width * 0.44, right: size.width * 0.07),
                      child: SizedBox(
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (_) {
                                  return HalamanUtama();
                                }
                              ),
                            );
                          }, 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(133, 200, 115, 58),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 249, 237),
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Image.asset(
                                  "assets/wool.png",
                                  height: 10,
                                  width: 10,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Get Started",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14
                                ),
                                textAlign: TextAlign.end,
                              )
                            ],
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}