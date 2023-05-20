import 'package:aplikasikuu/widgets/widgets_profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 37, 37, 39),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 37, 37, 39),
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true, // Center the title horizontally
        actions: [
          IconButton(
            padding: const EdgeInsets.only(
              right: 25,
            ),
            icon: const CircleAvatar(
              backgroundImage:
                  AssetImage('assets/images/profile/profilepp.jpg'),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const WidgetProfile()));
            },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.only(left:25, right: 25, top:10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Cards",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 300,
                      child: Card(
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.blue, Colors.greenAccent]),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'BCA',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '**** **** **** 0182',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                ),
                                Text(
                                  'Valid Thru: 27/24',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 300,
                      child: Card(
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.white, Colors.blue]),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mandiri',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '**** **** **** 1928',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                ),
                                Text(
                                  'Valid Thru: 01/28',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 300,
                      child: Card(
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.white, Colors.orangeAccent]),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'BNI',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '**** **** **** 2710',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 60,
                                ),
                                Text(
                                  'Valid Thru: 21/27',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // kalau mau tambah kartu disini
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Last Transaction',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    Container(
                      height:70,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 63, 63, 63),
                      ),
                      child: const ListTile(
                        title: Text('Spotify', style: 
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                        subtitle: Text('May 17 6.14pm', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),),
                        trailing: Text('-Rp.54.000,00', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height:70,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 63, 63, 63),
                      ),
                      child: const ListTile(
                        title: Text('Ayam Geprek', style: 
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                        subtitle: Text('May 17 4.18pm', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),),
                        trailing: Text('-Rp.14.000,00', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height:70,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 63, 63, 63),
                      ),
                      child: const ListTile(
                        title: Text('Snack Indomaret', style: 
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                        subtitle: Text('May 17 1.38pm', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),),
                        trailing: Text('-Rp.45.000,00', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height:70,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 63, 63, 63),
                      ),
                      child: const ListTile(
                        title:  Text('Makan Siang', style: 
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                        subtitle: Text('May 17 12.14pm', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),),
                        trailing: Text('-Rp.20.000,00', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height:70,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 63, 63, 63),
                      ),
                      child: const ListTile(
                        title: Text('Bubur Ayam', style: 
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                        subtitle: Text('May 17 7.14am', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),),
                        trailing: Text('-Rp.13.000,00', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height:70,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 63, 63, 63),
                      ),
                      child: const ListTile(
                        title: Text('Ayam Penyet', style: 
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                        subtitle: Text('May 16 7.28pm', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),),
                        trailing: Text('-Rp.24.000,00', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height:70,
                      width: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 63, 63, 63),
                      ),
                      child: const ListTile(
                        title: Text('Beli RAM', style: 
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                        subtitle: Text('May 16 3.50pm', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),),
                        trailing: Text('-Rp.450.000,00', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
