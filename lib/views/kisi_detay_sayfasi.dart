import 'package:flutter/material.dart';

class KisiDetaySayfa extends StatefulWidget {
  const KisiDetaySayfa({Key? key}) : super(key: key);

  @override
  State<KisiDetaySayfa> createState() => _KisiDetaySayfaState();
}

class _KisiDetaySayfaState extends State<KisiDetaySayfa> {
<<<<<<< HEAD
=======
  var tfKisiAd = TextEditingController();
  var tfKisiTel = TextEditingController();

>>>>>>> afdb10f (desing)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kişi Detay"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [],
        ),
      ),
    );
  }
}
