import UIKit


//Meltem Arslan

class Odev2 {
    
    func soru1(celciusDerece:Double) -> Double {
        let  fahrenheitDerece = celciusDerece * 1.8 + 32
        return fahrenheitDerece
    }
    
    func soru2(uzun:Int, kisa:Int) -> Int {
        let perimeter = (uzun * 2) + (kisa * 2)
        return perimeter
    }
    
    func soru3(sayi: Int) -> Int {
        var result = 1
        if sayi > 0 {
            for i in 1...sayi {
                result = i * result
            }
        }
        return result
    }
    
    func soru4(kelime: String, harf:Character) -> Int {
                
        let kelime_new = kelime.lowercased()
        let harf_new = Character(String(harf).lowercased())
        var cnt = 0
        let len = kelime_new.count
        for i in 0...len-1 {
            if kelime_new[kelime_new.index(kelime_new.startIndex, offsetBy: i)]==harf_new {
                cnt += 1
                }
            }
        return cnt
    }
    
    func soru5(kenarSayisi: Int) -> Int {
        let angle = (kenarSayisi - 2) * 180
        return angle
    }
    /*Örnek: 60 gün girdi. Günde 8 saat 480 saat eder. 160 saati çalışma saati(160*10)=1600 TL kazanır. Kalan 320 saat de mesai olur (320*20)den 6400TL Toplam maaş 8000 */
    func soru6(gün: Int) -> Int {
        let saat = gün * 8
        var maas = 0
        if saat >= 160 { /*Eğer 160 saaten fazla veya eşit ise mesai hesapla. !60'dan az ise direkt çalışma ücreti ile çarp*/
            let mesaiSaat = saat - 160
            maas = ((160 * 10) + (mesaiSaat * 20))
        }
        else {
            maas = saat * 10
        }
        return maas
    }
    //Kota 50 GB-100TL (50 GB'a kadar bütün harcamalar 100 TL olarak kabul ediliyor) Kota aşımından sonra her 1 GB 4 TL. Parametre olarak harcanan GB miktarı giriyoruz
    func soru7(kota: Int) -> Int {
        var tutar = 0
        if kota <= 50 {
            tutar = 100
        }
        else{
            let ext = kota - 50
            tutar = 100 + (ext * 4)
        }
        return tutar
    }
}

let o = Odev2()
o.soru1(celciusDerece: 0)
o.soru2(uzun: 10, kisa: 5)
o.soru3(sayi: 5)
o.soru4(kelime: "Meltem", harf:"L")
o.soru5(kenarSayisi: 4)
o.soru6(gün: 60)
o.soru7(kota: 200)





