import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:posttest7_058_rista/landingPage.dart';
import 'detail_page.dart';

class gambarKain {
  String judul;
  String gambar;
  String keterangan;
  gambarKain(this.gambar, this.judul, this.keterangan);
}

class HalamanUtama extends StatefulWidget {
  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  String data = "";
  bool switchOn = false;
  List<gambarKain> _kain = [
    gambarKain("https://cdn.pixabay.com/photo/2014/11/21/03/49/fabric-540136_1280.jpg", "Satin", "Satin adalah jenis kain satin sutra yang lembut yang ditenun dengan menggunakan teknik serat filamen sehingga memiliki ciri khas permukaan yang mengilap."),
    gambarKain("https://cdn.pixabay.com/photo/2016/04/11/08/12/indonesia-1321504_1280.jpg", "Batik", "Batik adalah kain bergambar yang pembuatannya secara khusus dengan menuliskan atau menerakan lilin."),
    gambarKain("https://cdn.pixabay.com/photo/2016/11/29/02/04/denim-1866725_1280.jpg", "Denim", "Denim adalah kain yang terbuat dari serat katun berwarna biru atau indigo."),
    gambarKain("https://cdn.pixabay.com/photo/2017/08/07/20/10/woven-2607340_1280.jpg", "Linen", "Linen adalag kain yang terbuat dari tanaman rami."),
    gambarKain("https://cdn.pixabay.com/photo/2022/11/16/07/41/twill-7595378_1280.jpg", "Polyester","Polyester adalah kain atau tekstil yang dibuat dengan menggunakan benang atau serat polyester"),
    gambarKain("https://cdn.pixabay.com/photo/2021/11/12/13/14/sweater-6788998_1280.jpg", "Rajut", "Rajun adalah kain yang dibentuk oleh jeratan-jeratan benang yang bersambung satu sama lain baik ke arah panjang maupun ke arah lebar kain."),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: switchOn? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 255, 249, 237),
            title: const Text("HOME",
            style: TextStyle(
              color: Colors.black
              ),
            ),
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 176, 153, 126), 
                    Color.fromARGB(255, 255, 249, 237)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.shopping_bag_outlined),
                padding: EdgeInsets.only(right: 20.0),
                onPressed: () {},
              ),
            ],
            // centerTitle: true,
          ),
        ),
        body: Stack(
          children: [
            Container(
              height: size.height * 0.2,
              width: size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    // Color.fromARGB(255, 176, 153, 126), 
                    Color.fromARGB(255, 255, 249, 237),
                    Colors.white
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                ),
                // color: Color.fromARGB(255, 154, 124, 179),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 241, 235, 231),
                        borderRadius: BorderRadius.circular(29.5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 17,
                            spreadRadius: -17,
                            offset: Offset(0, 15),
                          ),
                        ]
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          icon: Icon(Icons.search),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                          crossAxisCount: 2,
                        ),
                        itemCount: _kain.length,
                        itemBuilder: (context, index) {
                          return new GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HalamanDetail(
                                      gambar: _kain[index].gambar, judul: _kain[index].judul, keterangan: _kain[index].keterangan),
                                ),
                              );
                            },
                            child: Hero(
                              tag: _kain[index].gambar,
                              child: Card(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 115,
                                      padding: const EdgeInsets.only(top: 15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                          bottomLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5)
                                        ),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            _kain[index].gambar,
                                          ),
                                          fit: BoxFit.cover
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text(_kain[index].judul),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
          
        ),
        drawer: Drawer(
          // backgroundColor: Color.fromRGBO(213, 213, 213, 1),
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text("Rista Safitri"), 
                accountEmail: Text("r@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white10,
                  backgroundImage: AssetImage('assets/knit0.png'),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 163, 148, 123),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.shopping_cart_outlined),
                title: const Text("Cart"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Settings"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.arrow_back),
                title: const Text("Back"),
                onTap: () {
                  // Navigator.pop(context, '/landingPage');
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return HalamanUtama();
                  }));
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout_sharp),
                title: const Text("Logout"),
                onTap: () {
                  showDialog(
                    context: context, 
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                          "Logout",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Ingin Keluar Dari Aplikasi?",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pop("Batalkan");
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromARGB(255, 163, 148, 123),
                                    ),
                                    child: Text(
                                      "Batalkan"
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      SystemNavigator.pop();
                                      
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromARGB(255, 163, 148, 123),
                                    ),
                                    child: Text(
                                      "Keluar"
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],   
                        ),
                      );
                    },
                  ).then((value) {
                    setState(() {
                      data = value;
                    });
                  });
                },
              ),
              ListTile(
                title: Container(
                  child: Row(
                    children: [
                      Icon(Icons.dark_mode_sharp),
                      SizedBox(
                        width: 33,
                      ),
                      Text("Dark Mode"),
                      SizedBox(
                        width: 70,
                      ),
                      CupertinoSwitch(
                        activeColor: Color.fromARGB(255, 119, 117, 92),
                        value: switchOn,
                        onChanged: (bool value) {
                        setState(() {
                          switchOn = !switchOn;
                          });
                        }
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

