import 'package:contact_app_mobile/entity/kisiler.dart';
import 'package:contact_app_mobile/repo/kisilerdao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<List<Kisiler>> {
  AnasayfaCubit() : super(<Kisiler>[]);
  var krepo = KisilerDaoRepository();

  Future<void> kisileriYukler() async {
    var liste = await krepo.tumKisileriAl();
    emit(liste);
  }

  Future<void> ara(String aramaKelimesi) async {
    var liste = await krepo.kisiAra(aramaKelimesi);
    emit(liste);
  }
}
