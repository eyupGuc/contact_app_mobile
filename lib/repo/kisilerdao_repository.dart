<<<<<<< HEAD
=======
import 'package:contact_app_mobile/entity/kisiler.dart';

>>>>>>> ec2c675 (bloc)
class KisilerDaoRepository{
  Future<void> kisiKayit(String kisi_ad, String kisi_tel) async {
    print("kişi Kayıt repository: $kisi_ad - $kisi_tel");
  }

  Future<void> kisiGuncelle(int kisi_id, String kisi_ad, String kisi_tel) async {
    print("kişi guncelle repository: $kisi_ad  $kisi_tel");
  }
<<<<<<< HEAD
=======

  Future<List<Kisiler>> tumKisileriAl() async {
    var kisilerListesi = <Kisiler>[];
    var k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "333333");
    var k2 = Kisiler(kisi_id: 2, kisi_ad: "veli", kisi_tel: "444444");
    var k3 = Kisiler(kisi_id: 3, kisi_ad: "ragıp", kisi_tel: "88888");
    var k4 = Kisiler(kisi_id: 4, kisi_ad: "Dündar", kisi_tel: "222222");
    var k5 = Kisiler(kisi_id: 5, kisi_ad: "Recep", kisi_tel: "11111");

    kisilerListesi.add(k1);
    kisilerListesi.add(k2);
    kisilerListesi.add(k3);
    kisilerListesi.add(k4);
    kisilerListesi.add(k5);
    return kisilerListesi;
  }

  Future<List<Kisiler>> kisiAra(String aramaKelimesi) async {
    var kisilerListesi = <Kisiler>[];
    var k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "333333");


    kisilerListesi.add(k1);

    return kisilerListesi;
  }
>>>>>>> ec2c675 (bloc)
}