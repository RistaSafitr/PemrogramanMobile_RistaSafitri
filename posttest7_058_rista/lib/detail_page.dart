import 'package:flutter/material.dart';
import 'package:posttest7_058_rista/home.dart';
import 'formCustom.dart';

class HalamanDetail extends StatelessWidget {
  final String judul;
  final String gambar;
  final String keterangan;

  HalamanDetail({Key? key, required this.gambar, required this.judul, required this.keterangan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Hero(
                    tag: gambar, 
                    child: Transform.scale(
                      scale: 2.2,
                      child: Image(
                        image: NetworkImage(gambar),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 29.0,
                    left: 16.0,
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white54
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return HalamanUtama();
                          }));
                        }, 
                        icon: Icon(Icons.arrow_back_ios_new),
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.4),
                    padding: EdgeInsets.only(top: size.height * 0.12),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 249, 237),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          judul,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: size.width * 0.10, right: size.width * 0.10),
                          child: Text(
                            keterangan,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "UKURAN:",
                          textAlign: TextAlign.center
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 70,
                                height: 50,
                                margin: const EdgeInsets.only(left: 40, right: 15),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(188, 164, 158, 139),
                                  borderRadius: BorderRadius.circular(5)
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
                                )
                              ),
                              Container(
                                width: 70,
                                height: 50,
                                margin: const EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(188, 164, 158, 139),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: Text("50 Meter", maxLines: 3,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 50,
                                margin: const EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(188, 164, 158, 139),
                                  borderRadius: BorderRadius.circular(5)
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
                                )
                              ),
                              Container(
                                width: 70,
                                height: 50,
                                margin: const EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(188, 164, 158, 139),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) {
                                          return MyForm();
                                          // return HalamanUtama();
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
                          margin: EdgeInsets.only(right: 40.0, left: 40.0, bottom: 14.0),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                height: 50,
                                width: 58,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  border: Border.all(
                                    color: const Color.fromARGB(129, 16, 29, 64),
                                  )
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.shopping_cart),
                                  onPressed: () {},
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 50,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(129, 16, 29, 64),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18)
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Pesan Sekarang",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}