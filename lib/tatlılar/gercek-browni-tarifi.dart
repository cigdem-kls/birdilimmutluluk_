import 'package:birdilimmutluluk/pages/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Browni extends StatefulWidget {
  @override
  _Browni createState() => _Browni("images/gercek-browni-tarifi.jpg");
}

class _Browni extends State<Browni> {
  final image;
  int _rating;

  _Browni(this.image);

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
                            "TEREYAĞLI BROWNİE TARİFİ",
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
                                        "30 dk",
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
                                        "55 dk",
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
                          "TEREYAĞLI BROWNIE KEK",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Tereyağlı Brownie Kek ; Tereyağlı bu kekin  tabanı brownie kek’tir. İyi pişirmenin sırrı önce browni kek hazırlanır pişirilir ve sonraki kek karışımı üzerine doldurulup tekrar pişirilir.  Brownie keki lezzetli yapmanın sırrı budur. Çikolata ve tereyağından zengin bir çikolatalı bisküvi kek diyebiliriz. Üstelik çok nemlidir.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "LEZZETİN SIRRI",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Tereyağlı Brownie Kek tarifini yaparken dikkat edeceğiniz şey talimatlara uymanız. Lezzetin sırrı ise Brownie kekin daha önce pişmesi ve Tereyağlı keki karışımını üzerine dökerek ikinci bir defa daha pişirmenizdir. Ben bunu yazarken ve sizde okurken zor geleceğini düşünebilir siniz ama kesinlikle değil. Hafta sonu keyfi yapacaksanız ve kahve seviyorsanız tam size göre bir tarif. Yoğun bir haftadan sonra Tereyağlı Brownie kek çok iyi gelecektir.",
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
                          '\n ⍟1 su bardağı(140 gr) Çikolata Dark'
                          '\n ⍟¼ su bardağı (50 gr) Tereyağı'
                          '\n ⍟¼ su bardağı (50 gr) Esmer şeker'
                          '\n ⍟1 adet Yumurta'
                          '\n ⍟¼ su bardağı (35  gr) Çok amaçlı un'
                          '\n ⍟½ çay kaşığı Instant kahve opsiyonel',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '\n TEREYAĞLI KEK İÇİN MALZEMELER'
                          '\n ⍟½ su bardağı (120 gr) Tereyağı'
                          '\n ⍟½ su bardağı (100 gr) Şeker (ben 1 yemek kaşığı az ekliyorum)'
                          '\n ⍟2 adet Yumurta oda ısısında'
                          '\n ⍟1 su bardağı (120 gr) Çok amaçlı un'
                          '\n ⍟¼ çay kaşığı (2 gr) Kabartma tozu'
                          '\n ⍟3 yemek kaşığı (50 ml) Süt'
                          '\n ⍟1 çay kaşığı Vanilya ekstresi opsiyonel',
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
                          "\n ⍟İlk önce fırınınızı 180 °C (350 °F) ısıtın."
                          "\n ⍟20×10 cm’lik  kek kalıbınızı hem yağlayın hemde yağlı kağıt ile yanlardan taşacak şekilde kaplayın."
                          "\n ⍟Keki yapmak için çikolata ve tereyağını düşük ateşte eritin. Eridikten sonra ateşten alın ve karıştırma kabına ekleyin. Hafifçe soğuduktan sonra kahverengi şekeri tamamen karışına kadar karıştırın. Opsiyonel olarak instant kahveyi burada ekleyebilirsiniz."
                          "\n ⍟Yumurtayı ekleyin ve iyice karıştırın. Unu da ekleyerek karıştırmaya devam edin. Önceden ısıtılmış fırında 15 dakika pişirin ve fırından çıkarın."
                          "\n ⍟Browni kek pişerken Tereyağlı keki hemen hazırlamamız lazım. Tereyağı ve şekeri pürüzsüz bir kıvamı yakalayana kadar çırpın. Her seferinde 1 tane yumurtayı ekleyin çırpın."
                          "\n ⍟Elenmiş un, kabartma tozu ekleyin karıştırın peşine sütü ekleyin ve homojen bir kıvam olana kadar karıştırın."
                          "\n ⍟Hazırladığımız Tereyağlı kek hamurunu önceden pişirdiğimiz kekin üzerine yayın. 160 °C (320 °F) 25-30 dakika pişirin. İçinin piştiğini kürdan ile kontrol edin. Piştiyse fırından çıkarın.",
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
                          "\n ⍟Browni Kek pişerken Tereyağlı keki pişirin. Eğer çok sıcakken malzemeyi pişen kekin üzerine dökerseniz kek hamurunuz erir. Bunun için size tavsiyem kek hamurunu sıkma torbasına koyun ve boru büyük uçlardan birini takın kekin üzerine sıkarak sürün. Üst kısmını düzeltmek için sallayın ve kalıba hafifçe vurun.",
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
