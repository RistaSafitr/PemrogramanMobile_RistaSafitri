import 'dart:html';
import 'package:flutter/material.dart';
import 'form.dart';

class landingPage extends StatelessWidget {
  const landingPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    var lebarLayar = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(213, 213, 213, 1),
      body: ListView(
        children: [
          const SizedBox(
            height: 70,
          ),
          Image.asset("assets/satin.jpeg",
          width: lebarLayar,
          height: 250,),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: lebarLayar/2,
            child: const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text("Satin Silk",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
           width: lebarLayar,
           child: const Padding(
            padding: EdgeInsets.only(top: 5.0, left: 50.0, right: 50.0),
            child: Text("Satin adalah jenis kain satin sutra yang lembut yang ditenun dengan menggunakan teknik serat filamen sehingga memiliki ciri khas permukaan yang mengilap.",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 10.0),
            ),
           ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            child: const Padding(
              padding: EdgeInsets.only(top: 10.0, left: 50.0, bottom: 30.0),
              child: Text("Ukuran: ",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 50,
                  margin: const EdgeInsets.only(left: 50, right: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(129, 144, 121, 45),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text("1 Meter", maxLines: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ),
                Container(
                  width: 100,
                  height: 50,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(129, 16, 29, 64),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text("5 Meter", maxLines: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 50,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(129, 144, 121, 45),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text("10 Meter", maxLines: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ),
                Container(
                  width: 100,
                  height: 50,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(129, 16, 29, 64),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text("1 Roll", maxLines: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 50,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) {
                            return MyForm(title: 'Custom');
                          }
                        )
                      );
                    }, 
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text("Custom", maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  width: lebarLayar/2.5,
                  height: 50,
                  margin: const EdgeInsets.only(left: 50, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text("Masukkan Keranjang", maxLines: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Container(
                  width: lebarLayar/2.5,
                  height: 50,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text("Pesan Sekarang", maxLines: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 90,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 40.0, left: 50.0, bottom: 30.0),
                    child: Text("Produk Serupa",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14.0),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(top: 10.0, right: 315.0),
                  color: const Color.fromARGB(150, 198, 199, 216),
                  child: Stack(
                    children: [
                      Image.asset('assets/satin.jpeg',
                      width: 100,
                      height: 100
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(top: 10.0, right: 315.0),
                  color: const Color.fromARGB(150, 198, 199, 216),
                  child: Stack(
                    children: [
                      Image.asset('assets/satin.jpeg',
                      width: 100,
                      height: 100
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(top: 10.0, right: 315.0, bottom: 50.0),
                  color: const Color.fromARGB(150, 198, 199, 216),
                  child: Stack(
                    children: [
                      Image.asset('assets/satin.jpeg',
                      width: 100,
                      height: 100
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 30.0),
                    child: Text("Rista Safitri - 2009106058",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 10.0),
                    ),
                  ),
                ),
              ],
            ),
            width: MediaQuery.of(context).size.width,
            color: const Color.fromRGBO(232, 232, 232, 1)
            // height: 500,
          ),
        ],
      ),
    );
  }
}

