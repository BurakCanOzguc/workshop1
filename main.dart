/*"1'den N'e kadar olan asal sayıları hesaplayan fonksiyon yazınız,
 fonksiyon parametre olarak aldığı sayıya kadar (N) hesaplama yapacaktır."*/

List<int> asalSayilariHesapla(int n) {
  List<int> asalSayilar = [];

  for (var i = 2; i <= n; i++) {
    bool asalMi = true;
    for (var j = 2; j < i; j++) {
      if (i % j == 0) {
        asalMi = false;
        break;
      }
    }
    if (asalMi) {
      asalSayilar.add(i);
    }
  }

  return asalSayilar;
}

void main() {
  int N = 20;
  List<int> asalSayilar = asalSayilariHesapla(N);
  print('1\'den $N\'e kadar olan asal sayılar: $asalSayilar');
}

/*Aldığı sayının faktöriyelini hesaplayarak sayıyı geriye dönen fonksiyonu
 luşturunuz.*/

int faktoriyelHesapla(int sayi) {
  if (sayi == 0 || sayi == 1) {
    return 1;
  } else {
    return sayi * faktoriyelHesapla(sayi - 1);
  }
}

void main() {
  int sayi = 5;
  int sonuc = faktoriyelHesapla(sayi);
  print("$sayi sayısının faktöriyeli: $sonuc");
}
