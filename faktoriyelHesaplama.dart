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