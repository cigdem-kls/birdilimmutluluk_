import 'package:birdilimmutluluk/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class KremPeynirli extends StatefulWidget {
  @override
  _KremPeynirli createState() =>
      _KremPeynirli("images/KREM-PEYNİRLİ-HAVUÇLU-KEK.jpg");
}

class _KremPeynirli extends State<KremPeynirli> {
  final image;
  int _rating;
  _KremPeynirli(this.image);

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
                            "KREM PEYNİR HAVUÇLU KEK",
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
                          "KREM PEYNİRLİ HAVUÇLU KEK",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Krem Peynirli Havuçlu kek; havuçlu kek en lezzetli ve en çok yapılan tariflerden birisidir. Kremalı ve kremasız olarak tercih edebilirsiniz. Vereceğim bu tarifte kullanacağınız Krem peynirli krema ile çok farklı bir lezzet yakalayacaksınız..",
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
                          '\n ⍟1 su bardağı(100g) Ceviz veya Pekan Cevizi'
                          '\n ⍟2½ su bardağı(260g) Rendelenmiş Havuç'
                          '\n ⍟2 su bardağı(260g) Çok amaçlı un'
                          '\n ⍟1 çay kaşığı(4g) Karbonat'
                          '\n ⍟1½ çay kaşığı(6g) Kabartma tozu'
                          '\n ⍟½ çay kaşığı(2g) Tuz'
                          '\n ⍟1½ çay kaşığı(2g) Tarçın'
                          '\n ⍟4 büyük Yumurta oda ısısında'
                          '\n ⍟1½ su bardağı(300g) Toz şeker'
                          '\n ⍟2 çay kaşığı Vanilya ekstresi'
                          '\n ⍟1 su bardağı(240ml) Ayçiçek yağı'
                          '\n ⍟200 gr ezilmiş ve sğzülmüş ananas isteğe bağlı',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '\n Krem Peynir Kreması:'
                          '\n ⍟7 yemek kaşığı(100g) Tuzsuz tereyağı oda ısısında'
                          '\n ⍟1½ su bardağı(180g) Pudra şekeri elenmiş'
                          '\n ⍟1 çay kaşığı(4g) Vanilya ekstresi'
                          '\n ⍟1 çay kaşığı(4g) Limon suyu taze sıkılmış'
                          '\n ⍟340 gram Tam yağlı krem peynir yumuşatılmış',
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
                          "\n ⍟Fırınınızı önceden 180 °C (350°F) ısıtın, 2 tane kek kalıbınızı tereyağı veya sıvı yağ ile yağlayın, kalıbınızın altına yağlı kağıt kesip yerleştirin. Cevizleri tavada yaklaşık 8 dk. kadar hafifçe kavurun ve soğumaya bırakın. Daha sonra kabaca kıyın."
                          "\n ⍟Havuçları soyun ve ince rendeleyin."
                          "\n ⍟Ayrı bir kasede un, karbonat, kabartma tozu, tuz ve tarçını eleyerek harmanlayın."
                          "\n ⍟Ayrı bir kasede yumurtaları köpürene kadar yaklaşık 1 dk. mikserle çırpın. Şeker ve Vanilya ekstresini ekleyin. Açık renkli ve koyu bir kıvam alana kadar 3-4 dk. yüksek hızda çırpın."
                          "\n ⍟Mikser üdşük hızda iken yavaş yavaş sabit bir akışta sıvı yağı ekleyin. Tamamen karışana kadar çırpın. Eğer Ananas kullanacaksanız burada süzülmüş ananası ekleyip karıştırın."
                          "\n ⍟Ayrı bir kapta hazırladığınız ve kenarda beklettiğiniz un karışımını ekleyin düşük hızda karıştırın. 1 dk kadar karıştırdıktan sonra rendelenmiş havuç ve kabaca doğranmış cevizleri ekleyin yine düşük hızda karıştırın."
                          "\n ⍟Hazırladığınız kek karışımını 2 kalıba eşit olarak paylaştırın, önceden ısıttığınız fırında 25-30 dakika pişirin. Pişip pişmediğini kekin ortasına batıracağınız kürdan ile yapın. Kürdan temiz geliyorsa kekiniz pişmiştir."
                          "\n ⍟Fırından çıkarın ve kekleri tel ızgara üzerinde soğumaya bırakın. 10 dk sonra ters çevirin ve yağlı kağıtları çıkarın, tekrar ters çevirin. Tamamen soğumasını bekleyin.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "\nKREM PEYNİRLİ KREMA"
                          "\n ⍟Tereyağını orta büyüklükte bir karıştırma kabında pürüzsüz olana kadar çırpın."
                          "\n ⍟Pudra şekeri ve vanilya ekstresini ekleyin. Hafif kabarık olana kadar yaklaşık 2-3 dakika çırpın."
                          "\n ⍟Limon suyunu ekleyin ve tamamen karışana kadar çırpın. Krem peyniri ise 4-5 seferde ekleyin karıştırın.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "\nKEK MONTAJI"
                          "\n ⍟Kekinizi masaya veya servis tabağına koyun. Hazırladığınız kremanın ⅔ su bardağını (yaklaşık 150g) kekin üzerine koyun ve yayın. Diğer keki kreamanın üzerine yerleştirin ve kalan kremayı üzerine ve yanlarına dikkatlice sürün. Dilerseniz üzerine kavrulmuş fındık, ceviz ile süsleyebilirsiniz.",
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
                          "\n ⍟Keki soğuk servis yapın"
                          "\n ⍟İyice sardığınız keki buzlukta 1 ay muhafaza edebilirsiniz. Kullanmadan önce gece boyunca buzdolabında çözdürün.",
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
