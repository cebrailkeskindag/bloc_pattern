import 'package:bloc_pattern/data/repo/mat_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Cubit sınıfından türetilen HomepageCubit sınıfı
class HomepageCubit extends Cubit<int> {
  // Başlangıç durumu 0 olarak ayarlanır
  HomepageCubit() : super(0);

  // MatRepo sınıfından bir örnek oluşturulur
  var mrepo = MatRepo();

  // Toplama işlemini gerçekleştiren fonksiyon
  void toplamaYap(String alinanSayi1, String alinanSayi2) {
    // MatRepo sınıfındaki toplamaYap fonksiyonu çağrılır ve sonuç emit edilir
    emit(mrepo.toplamaYap(alinanSayi1, alinanSayi2)); // Tetikleme ve geri gönderme
  }

  // Çarpma işlemini gerçekleştiren fonksiyon
  void carpmaYap(String alinanSayi1, String alinanSayi2) {
    // MatRepo sınıfındaki carpmaYap fonksiyonu çağrılır ve sonuç emit edilir
    emit(mrepo.carpmaYap(alinanSayi1, alinanSayi2)); // Tetikleme ve geri gönderme
  }
}
