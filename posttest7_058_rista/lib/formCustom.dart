import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

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
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.18),
            padding: EdgeInsets.only(top: size.height * 0.12),
            decoration: BoxDecoration(
              color: Color.fromARGB(133, 164, 158, 139),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                topLeft: Radius.circular(50)
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 29.0, right: 20.0),
                  child: Text(
                    "Produk akan selesai dalam sebulan, Apakah Anda akan setuju?",
                    style: TextStyle(
                      fontSize: 14
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.only(left: 17.0),
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
                  contentPadding: EdgeInsets.only(left: 17.0),
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
                ListTile(
                  contentPadding: EdgeInsets.only(left: 17.0, right: 20.0),
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
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(133, 200, 115, 58),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                    child: Text("Save")
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.09, left: size.width / 3),
            child: Text(
              "CUSTOM",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}


