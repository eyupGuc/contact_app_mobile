class KisilerDaoRepository{
  Future<void> kisiKayit(String kisi_ad, String kisi_tel) async {
    print("kişi Kayıt repository: $kisi_ad - $kisi_tel");
  }

  Future<void> kisiGuncelle(int kisi_id, String kisi_ad, String kisi_tel) async {
    print("kişi guncelle repository: $kisi_ad  $kisi_tel");
  }
}