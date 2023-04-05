import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'landingPage.dart';
import 'form.dart';
import 'splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Posttest 6',
      home: const SplashScreen(),
      initialRoute: '/landingPage',
      routes: {
        '/mainPage': (context) => HalamanUtama(),
        '/detail': (context) => HalamanDetail(gambar: '', judul: '', keterangan: ''),
        '/landingPage': (context) => halamanLanding(),
      },
    );
  }
}

class halamanLanding extends StatelessWidget {
  const halamanLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 123, 150, 163),
          title: Text("Fabric Shop",
          style: Theme.of(context).textTheme.titleLarge,
          // style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/mainPage');
            },
            icon: Icon(Icons.home, color: Colors.black),
          ),
        ),
        body: const landingPage(),
    );
  }
}


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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 123, 150, 163),
        title: const Text("HOME",
        style: TextStyle(
          color: Colors.black
          ),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
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
                  children: [
                    Container(
                      height: 150,
                      padding: const EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            _kain[index].gambar
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
      drawer: Drawer(
        backgroundColor: Color.fromRGBO(213, 213, 213, 1),
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Rista Safitri"), 
              accountEmail: Text("r@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/satin.jpeg'),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 123, 150, 163),
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
                  return halamanLanding();
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
                                    backgroundColor: Color.fromARGB(255, 101, 155, 148),
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
                                    backgroundColor: Color.fromARGB(255, 101, 155, 148),
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
            )
          ],
        ),
      ),
    );
  }
}

class HalamanDetail extends StatelessWidget {
  final String judul;
  final String gambar;
  final String keterangan;

  HalamanDetail({Key? key, required this.gambar, required this.judul, required this.keterangan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 123, 150, 163),
        title: const Text("Detail",
        style: TextStyle(
          color: Colors.black
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 2,
            child: Container(
              padding: const EdgeInsets.only(top: 20),
              child: Hero(
                tag: gambar,
                child: Image(
                  image: NetworkImage(gambar),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                judul,
                style: TextStyle(
                  fontSize: 18.0, 
                  fontWeight:FontWeight.bold
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                keterangan,
                textAlign: TextAlign.center,
                // style: TextStyle(fontSize: 10.0),
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}