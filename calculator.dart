import 'dart:io';

void main() {
  print("İlk sayıyı girin:");
  double? sayi1 = double.tryParse(stdin.readLineSync()!);

  print("İkinci sayıyı girin:");
  double? sayi2 = double.tryParse(stdin.readLineSync()!);

  if (sayi1 == null || sayi2 == null) {
    print("Geçersiz sayı girdiniz.");
    return;
  }

  print("Yapmak istediğiniz işlemi seçin:");
  print("1 - Toplama");
  print("2 - Çıkarma");
  print("3 - Çarpma");
  print("4 - Bölme");

  int? secim = int.tryParse(stdin.readLineSync()!);

  if (secim == null || secim < 1 || secim > 4) {
    print("Geçersiz seçim! Lütfen 1 ile 4 arasında bir seçenek girin.");
    return;
  }

  double sonuc = 0;

  switch (secim) {
    case 1:
      sonuc = sayi1 + sayi2;
      print("Sonuç: $sonuc");
      break;
    case 2:
      sonuc = sayi1 - sayi2;
      print("Sonuç: $sonuc");
      break;
    case 3:
      sonuc = sayi1 * sayi2;
      print("Sonuç: $sonuc");
      break;
    case 4:
      if (sayi2 != 0) {
        sonuc = sayi1 / sayi2;
        print("Sonuç: $sonuc");
      } else {
        print("Hata: Sayı 0'a bölünemez!");
      }
      break;
    default:
      print("Beklenmeyen bir hata oluştu.");
  }
}
