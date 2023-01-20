import 'package:contact_app_mobile/cubit/anasayfa_cubit.dart';
import 'package:contact_app_mobile/entity/kisiler.dart';
import 'package:contact_app_mobile/views/kisi_detay_sayfasi.dart';
import 'package:contact_app_mobile/views/kisi_kayit_sayfasi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  bool aramaYapiliyormu = false;
 @override
  void initState() {
    context.read<AnasayfaCubit>().kisileriYukler();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyormu
            ? TextField(
                decoration: const InputDecoration(hintText: 'Ara'),
                onChanged: (aramaSonucu) {
                  print(aramaSonucu);
                },
              )
            : Text("Kişiler"),
        actions: [
          aramaYapiliyormu
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliyormu = false;
                    });
                  },
                  icon: const Icon(Icons.cancel))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliyormu = true;
                    });
                  },
                  icon: const Icon(Icons.search))
        ],
      ),
      body: BlocBuilder<AnasayfaCubit,List<Kisiler>>(

        builder: (context, kisilerListesi) {
          if (kisilerListesi.isNotEmpty) {

            return ListView.builder(
                itemCount: kisilerListesi.length,
                itemBuilder: (context, index) {
                  var kisi = kisilerListesi[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  KisiDetaySayfa(kisi: kisi))).then((value) {
                        print("Kisiler Sayfasına geri dönüldü");
                      });
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("${kisi.kisi_ad}-${kisi.kisi_tel}"),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content:
                                        Text("${kisi.kisi_ad} silinsin mi? "),
                                    action: SnackBarAction(
                                      label: "EVET",
                                      onPressed: () {
                                        print("Kişi sil : ${kisi.kisi_id}");
                                      },
                                    ),
                                  ));
                                },
                                icon:
                                    const Icon(Icons.delete, color: Colors.red))
                          ],
                        ),
                      ),
                    ),
                  );
                });
          } else {
            return const Center();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const KisiKayitSayfa())).then((value) {
            print("Ana sayfaya dönüldü");
          });

          //var kisi = Kisiler(kisi_id: 1, kisi_ad: "Ali", kisi_tel: "676776");
          //Navigator.push(context,
          //  MaterialPageRoute(builder: (context) =>  KisiDetaySayfa(kisi: kisi))).then((value){
          //print("Ana sayfaya dönüldü");
          //});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
