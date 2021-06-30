import 'package:birdilimmutluluk/pages/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class KadifeKek extends StatefulWidget {
  @override
  _KadifeKek createState() => _KadifeKek("images/kadife-kek.jpg");
}

class _KadifeKek extends State<KadifeKek> {
  final image;
  int _rating;
  _KadifeKek(this.image);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Hero(
              child: Container(
                height: size.height * 0.55,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              tag: image,
            ),
            DraggableScrollableSheet(
              maxChildSize: 1,
              initialChildSize: 0.6,
              minChildSize: 0.6,
              builder: (context, controller) {
                return SingleChildScrollView(
                  controller: controller,
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Text(
                            "KIRMIZI KADİFE KEK",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          SpinKitPumpingHeart(
                            color: Colors.red,
                            size: 40.0,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ]),
                        Row(children: <Widget>[
                          Rating((rating) {
                            setState(() {
                              _rating = rating;
                            });
                          }, 5),
                        ]),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border:
                                          Border.all(color: Colors.grey[200])),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Hazırlanma zamanı",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        "20 dk",
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border:
                                          Border.all(color: Colors.grey[200])),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Pişirme süresi",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        "35 dk",
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border:
                                          Border.all(color: Colors.grey[200])),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        "Zorluk Derecesi",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        "orta",
                                        style: TextStyle(
                                            color: Colors.grey[900],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "KIRMIZI KADİFE KEK TARİFİ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Kırmızı kadife kek tarifi , en sevdiğim tariflerim arasındadır. Hem göze hem de damağa hitap eden, asitik ve çikolata arasında kurulan muhteşem lezzet dengesi ile beni cezbeden bir tariftir. Yapımı ve malzemeleri sizi korkutmasın oldukça basit bir tariftir.Tadı çikolatalı keki anımsatıyor. Halbuki malzemelerinde çikolata yok, bir miktar kakao var ama çikolatalı kek olmayacak kadar az miktarda. Lezzetinin diğer bir sırrı ise malzemeler arasında buttermilk ve asitik denge için sirke kullanılmasıdır. Öyle klasik içine kırmızı gıda boyası atılmış bir kek gibi düşünmeyin."
                          " Kırmızı Kadife kekin olmazsa olmaz malzemeleri buttermilk, beyaz sirkedir. Aşağıda yazdığım malzemeler tam tariftir. Dokusu biraz nemlidir, beni cezbeden yanlarından biride budur. Yerken vücudumun melatonin salgıladığını hissedebiliyorum",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "KIRMIZI KADİFE KEK’İN TADI",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Kırmızı kadife kek ‘in tadı, efsanevi lezzetinin sırrı buttermilk ve sirkenin yanı sıra kremasının krem ​​peynirden yapılmasıdır. Türkiye’de marketlerde satılan Krem peynir ile Yurt dışında satılanlar aynı değil, bizdeki krem peynir çok daha yoğun kıvama sahip ve kaşar peyniri tadında. Ev yapımı krem peynir tarifine buradan ulaşabilirsiniz.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "KIRMIZI KADİFE KEKE LEZZETİNİ VEREN NEDİR?",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Kırmızı kadife keke lezzetini veren nedir? Belirgin lezzetleri buttermilk, sirke, kakao tozu ve krem ​​peynirli kremasından gelir. Bazı kırmızı kadife keki tarifleri, neredeyse hiç çikolata tadı vermeyen, sadece bir yemek kaşığı veya iki yemek kaşığı kakao tozu kullanır. Bu durum, bazı kişilerin kırmızı kadife keki, kırmızı boyalı beyaz bir kek olduğunu düşünmesine neden olur. Gerçek bir kırmızı kadife keki hafif asidik bir tada ek olarak ayrıca çikolata tadı vardır. ",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "KIRMIZI KADİFE KEKİ İÇİN NE TÜR KREMA KULLANIYORSUNUZ?",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Kırmızı kadife keki için ne tür krema kullanıyorsunuz? Geleneksel olarak krem peynirli krema ile yapılır . Pastaya geleneksel asitli lezzetini vermek için krem ​​peynir kreması kullanmanız önemlidir.  ",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "NE TÜR GIDA BOYASI KULLANABİLİRİM?",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Eğer gıda boyalarına karşı olumsuz bakıyorsanız pancardan yapılmış jel gıda boyaları veya doğal kırmızı gıda boyası kullanabilirsiniz. Doğal gıda boyalarını İnternetten kolaylıkla satın alabilirsiniz.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "MALZEMELER",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '\n ⍟3 (375g) su bardağı çok amaçlı un'
                          '\n ⍟3 (600g) su bardağı toz şeker'
                          '\n ⍟½ (64g) su bardağı mısır nişastası'
                          '\n ⍟½ (43g) su bardağı kakao şekersiz'
                          '\n ⍟1 yemek kaşığı karbonat'
                          '\n ⍟1½ çay kaşığı kabartma tozu'
                          '\n ⍟1½ çay kaşığı tuz'
                          '\n ⍟4 büyük yumurta'
                          '\n ⍟1½ su bardağı buttermilk'
                          '\n ⍟1¼ su bardağı ılık su'
                          '\n ⍟½ su bardağı sıvı yağ'
                          '\n ⍟1 çay kaşığı vanilya özü'
                          '\n ⍟1 çay kaşığı beyaz sirke'
                          '\n ⍟2 yemek kaşığı kırmızı gıda boyas',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "FRROSTING (ŞEKERLİ KARIŞIM)",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '\n ⍟450 gram krem peynir yumuşatılmış'
                          '\n ⍟1 (227g) su bardağı tereyağı oda ısısında'
                          '\n ⍟4 (480g) su bardağı pudra şekeri'
                          '\n ⍟1 çay kaşığı vanilya özü',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "TALİMATLAR",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "\n ⍟Fırını önceden 180 derece ısıtın. 22 cm yuvarlak kalıbınızı yağlayın. Kalıbınıza un serpin ve fazlalığını alın."
                          "\n ⍟Un, şeker, mısır nişastası, kakao, kabartma tozu, karbonat ve tuzu bir araya getirin stand mikser veya mikserle iyice birleşene kadar düşük hızda karıştırın."
                          "\n ⍟Yumurta, buttermilk, ılık su, yağ, vanilya, sirke ve gıda boyası ekleyin. Pürüzsüz olana kadar orta hızda çırpın. Bu sadece birkaç dakika sürmeli."
                          "\n ⍟Karışımı hazırlanan üç kek kalıbı arasında bölün."
                          "\n ⍟Pasta kürdan testi yapılacak kıvama gelene kadar 30-35 dakika pişirin (bir kürdan sokun ve temiz çıktığından emin olun)."
                          "\n ⍟Tel raflarda 15 dakika soğutun ve sonra kekleri raflara yerleştirin ve kremasını sürmeden önce tamamen soğumasını bekleyin."
                          "\n ⍟Kremasını yapın. Büyük bir kapta, yumuşayana kadar tereyağını ve krem ​​peynirini çırpın. En iyi sonuçları elde etmek için el mikseri veya stand mikser kullanın. Vanilya özü ekleyin. İyice karışana kadar çırpın. Her seferinde bir bardak olmak üzere pudra şekerini ekleyin. Pürüzsüz bir krema elde edene kadar çırpın."
                          "\n ⍟Tamamen soğumuş keklere kremayı sürün. 3 katlı kekinizi dondurun",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "NOTLAR",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "\n ⍟Daha parlak kırmızı bir renk için kakao tozunu 1/4 su bardağı kadar azaltabilirsiniz.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
