import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key, required this.title});
  final String title;

  @override
  State<MyForm> createState() => _MyFormState();
}

enum konfirmasi {Setuju, Batalkan}

class _MyFormState extends State<MyForm> {
  int _counter = 0;

  final panjangKainController = TextEditingController();
  final lebarKainController = TextEditingController();

  konfirmasi? konfir;
  bool? data = false;
  bool switchOn = false;
  bool selected = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
      print(_counter);
    });
  }

  void dispose() {
    panjangKainController.dispose();
    lebarKainController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: switchOn? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromARGB(255, 123, 150, 163),
        actions: [
          CupertinoSwitch(
            activeColor: Colors.greenAccent,
            value: switchOn,
            onChanged: (bool value) {
              setState(() {
                switchOn = !switchOn;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Image.asset("assets/satin.jpeg",
                  width: MediaQuery.of(context).size.width/2,
                  height: 250,
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  width: 200,
                  child: Column(
                    children: [
                      Text("Masukkan Ukuran Kain Pesanan"),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: TextField(
                          controller: panjangKainController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Panjang kain",
                            hintStyle: TextStyle(
                              fontSize: 13
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 200,
                        child: TextField(
                          controller: lebarKainController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Lebar kain",
                            hintStyle: TextStyle(
                              fontSize: 13
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Produk akan selesai dalam sebulan, Apakah Anda akan setuju?",
              style: TextStyle(
                fontSize: 14
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 80.0),
              title: Text("Setuju"),
              leading: Radio(
                value: konfirmasi.Setuju,
                groupValue: konfir,
                onChanged: (konfirmasi? value) {
                  setState(() {
                    konfir = value;
                  });
                },
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 80.0),
              title: Text("Batalkan"),
              leading: Radio(
                value: konfirmasi.Batalkan,
                groupValue: konfir,
                onChanged: (konfirmasi? value) {
                  setState(() {
                    konfir = value;
                  });
                },
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),

            ListTile(
              contentPadding: EdgeInsets.only(left: 70.0),
              title: Text("Dengan ini Anda Telah Menyetujui Persyaratan yang ada",
                style: TextStyle(
                  fontSize: 14
                ),
              ),
              leading: Checkbox(
                  value: data,
                  onChanged: (bool? value) {
                    setState(() {
                      data = value;
                    });
                  }),
              ),
              Container(
                // width: 80,
                // height: 35,
                // color: Colors.transparent,
                // child: ElevatedButton(
                //   onPressed: (){
                //     // const Text('terkirim');
                //   },
                // child: GestureDetector(
                //   onTap: () {
                //     setState(() {
                //       selected = !selected;
                //     });
                //   },
                //   child: Center(
                //     child: AnimatedContainer(
                //       width: selected ? 75.0 : 50.0,
                //       height: selected ? 35.0 : 35.0,
                //       color: selected ? Color.fromARGB(255, 151, 172, 189) : Colors.orange,
                //       duration: Duration(seconds: 2),
                //       curve: Curves.bounceOut,
                //       child: Hero(
                //         tag: "hero",
                //         child: Icon(
                //           Icons.handshake,
                //           size: 20,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // ),
              ),
            ],
          ),
        ),
      ),
      
      
    );
  }
}