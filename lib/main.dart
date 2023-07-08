import 'package:flutter/material.dart';

void main() {
  runApp(ziraApp());
}

class ziraApp extends StatefulWidget {
  const ziraApp({super.key});

  @override
  State<ziraApp> createState() => _ziraAppState();
}

class _ziraAppState extends State<ziraApp> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tally counter"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value.toString(),
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // on pressed -> apa yang akan terjadi saat di click
                  // child -> mengatur elevated button, dari icons, warna DLL
                  // set state -> mengubah state yang ada dilayar dengan state yang baru
                  // pada kasus ini state value awal menjadi state yang sudah di increment/decrement
                  ElevatedButton(
                    onPressed: () {
                      value--;
                      print(value);
                      setState(() {});
                    },
                    child: Icon(
                      Icons.exposure_minus_1,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      value = 0;
                      print(value);
                      setState(() {});
                    },
                    child: Icon(
                      Icons.restart_alt,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      value++;
                      print(value);
                      setState(() {});
                    },
                    child: Icon(
                      Icons.plus_one,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[400],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
