import 'package:contact_app_mobile/repo/kisilerdao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KisiKayitCubit extends Cubit<void> {
  KisiKayitCubit() : super(0);
  var krepo = KisilerDaoRepository();

  Future<void> kayit(String kisi_ad, String kisi_tel) async {
    await krepo.kisiKayit(kisi_ad, kisi_tel);
  }


}
