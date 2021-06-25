import 'package:birdilimmutluluk/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MangoluPuding extends StatefulWidget {
  @override
  _MangoluPuding createState() => _MangoluPuding("images/mangolu-puding.jpg");
}

class _MangoluPuding extends State<MangoluPuding> {
  final image;
  int _rating;
  _MangoluPuding(this.image);

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
                            "MANGOLU PUDİNG TARİFİ",
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
                                        "5 dk",
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
                                        "Zorluk Derecesi",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        "kolay",
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
                          "EV YAPIMI MANGOLU PUDING",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Ev yapımı mangolu puding, yine ev yapımı puding tarifiyle karşınızdayım. Bu tür tarifleri özellikle paylaşıyorum, hazır satılan paket ürünlerin içindeki katkı maddeleri, kıvam arttırıcı ve suni tatlandırıcıların insan sağlığı üzerinde özellikle de çocukların üzerinde olumsuz etkilerini medyadan takip ediyoruz ve okuyoruz. Bu ürünlerden ne kadar uzak kalırsak bizim ve ailemiz için iyi olacaktır. Bu yüzden evimizde mümkün mertebe ev yapımı tarifleri kendimiz yapmaya çalışalım.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "BİRÇOK TARİFİN LEZZETLİ MEYVESİ “MANGO”",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Tropikal meyve olan Mangoyu birçok tarifte kullanabiliyoruz. Puding, Cheesecake, smoothie, krema en çok tercih edilen tarifler, Mangolu dondurma ise favorimdir. Ama bu tarifte çok basit bir puding yapacağız. Biz Mango tercih ettik ama siz farklı meyvelerde kullanabilirsiniz. Başka meyve kullanırken 3 tanesini kullanamazsınız. Tarifimizde jelatin kullandığımız için ananas, kivi ve zencefil kullanamazsınız. Çünkü bu meyvelerin içerisinde jelatin oluşumunu engelleyecek bremelin maddesi vardır. Bunların dışında hepsini kullanabilir siniz.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "JELATİN TERCİHİ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Tarifin orijinal de Maple yani Akağaç şurubu kullanılıyor. Ben onun yerine bal tercih ediyorum. Akağaç şurubu da doğal ama maalesef ülkemizde fiyatı biraz tuzlu gerçi şimdi yazarken fark ettim balın kilosu da ucuz sayılmaz. Az kalsın söylemeyi unutuyordum. Mangonun doğal tadı zaten yeterince tatlı, o yüzden şurup veya bal eklerken muhakkak tadına bakın çok fazla tatlı olmasın."
                          "Ev yapımı Mangolu puding, ekstra lezzet vermek istiyorsanız Mango ve şurubu karıştırırken içerisine 2 tane yeşil kakulenin içerisindeki çekirdekleri çıkarın ve toz haline getirin ekleyin. Ayrı bir lezzet katacaktır.",
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
                          '\n ⍟4 çay kaşığı toz jelatin'
                          '\n ⍟yarım su bardağı su'
                          '\n ⍟2 su bardağı Mango, püre haline getirilmiş'
                          '\n ⍟2 yemek kaşığı akağaç şurubu veya bal'
                          '\n ⍟yarım su bardağı Yoğun krema (Heavy cream)'
                          '\n ⍟2 yemek kaşığı antep fıstığı'
                          '\n ⍟2 adet kakulenin çekirdekleri(opsiyonel)',
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
                          "\n ⍟Jelatini küçük bir kapta suyun üzerine serpin ve 5 ila 6 dakika çözülmesine izin verin."
                          "\n ⍟Jelatin çözülürken, bir tencerede kakule mango ve akçaağaç şurubunu karıştırın. Düşük ısıda yaklaşık 5-8 dakika kaynamaya başlayana kadar ısıtın. Çözülmüş jelatin ve yoğun kremayı içinde topak kalmayıncaya kadar çırpın."
                          "\n ⍟Tencereyi ocaktan alın ve sıvıyı dört ayrı servis tabağı arasına bölün. Pudingleri koyduğunuz tabakların üzerini streçle örtün. Streç pudingin yüzeyine temas etsin, sertleşip kabuk bağlamasını engelleyecektir. En az 2 saat soğutun."
                          "\n ⍟Servisten önce antep fıstığı ile süsleyin.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
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
