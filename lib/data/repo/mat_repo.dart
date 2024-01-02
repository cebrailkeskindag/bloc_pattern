// Matematiksel işlemleri gerçekleştiren repository sınıfı
class MatRepo {
  // Verilen iki sayıyı toplar ve sonucu döndürür
  int toplamaYap(String alinanSayi1, String alinanSayi2) {
    // Gelen string sayıları integer'a çevirir
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);

    // Toplama işlemi yapılır
    int toplam = sayi1 + sayi2;

    // Toplamı döndürür
    return toplam;
  }

  // Verilen iki sayıyı çarpar ve sonucu döndürür
  int carpmaYap(String alinanSayi1, String alinanSayi2) {
    // Gelen string sayıları integer'a çevirir
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);

    // Çarpma işlemi yapılır
    int carpma = sayi1 * sayi2;

    // Çarpımı döndürür
    return carpma;
  }
}
