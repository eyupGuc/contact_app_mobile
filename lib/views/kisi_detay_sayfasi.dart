import 'package:contact_app_mobile/entity/kisiler.dart';
import 'package:flutter/material.dart';

class KisiDetaySayfa extends StatefulWidget {
  Kisiler kisi;
  KisiDetaySayfa({required this.kisi});
  @override
  State<KisiDetaySayfa> createState() => _KisiDetaySayfaState();
}

class _KisiDetaySayfaState extends State<KisiDetaySayfa> {
<<<<<<< HEAD
=======
  var tfKisiAd = TextEditingController();
  var tfKisiTel = TextEditingController();
  @override
  void initState() {
    var kisi = widget.kisi;
    tfKisiAd.text = kisi.kisi_ad;
    tfKisiTel.text = kisi.kisi_tel;
    super.initState();
  }

  Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async {
    print("kişi guncelle: $kisi_ad -$kisi_id- $kisi_tel");
  }

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
          children: [
            TextField(
              controller: tfKisiAd,
              decoration: const InputDecoration(hintText: "kişi Ad"),
            ),
            TextField(
              controller: tfKisiTel,
              decoration: const InputDecoration(hintText: "Kişi Tel"),
            ),
            ElevatedButton(
                onPressed: () {
                  guncelle(widget.kisi.kisi_id, tfKisiAd.text, tfKisiTel.text);
                },
                child: Text("GUNCELLE"))
          ],
        ),
      ),
    );
  }
}
