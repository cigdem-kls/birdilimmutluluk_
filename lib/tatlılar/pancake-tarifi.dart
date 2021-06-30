import 'package:birdilimmutluluk/pages/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Pancake extends StatefulWidget {
  @override
  _Pancake createState() => _Pancake("images/pancake-tarifi.jpg");
}

class _Pancake extends State<Pancake> {
  final image;
  int _rating;

  _Pancake(this.image);

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
                            "FLUFFY PANCAKE TARİFİ",
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
                          "FLUFFY PANCAKE TARİFİ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Fluffy pancake tarifi, muhteşem kabaran bir pancake tarifine ne dersin? Basit ve büyük bir pancake, hem lezzetli hemde estetik. 20 cm’lik yapışmaz tavada yaklaşık 4 adet büyük pancake yapabiliyorsunuz."
                          "Pancake yaparken dikkat etmeniz gereken şeylerden biri kuru ve sıvı malzemeleri ayrı karıştırıp, Sıvı malzemeyi kuru malzemeye dökmektir. Ayrıca Pancake pişireceğiniz tava yapışmaz tava olmalı, standart tavalarda pancake harcı tavaya yapışacak veya pişerken tam pişmeyecek. ",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "Nasıl servis edilir?",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Pancake için birçok şurup çeşidini kullanabilirsiniz. En bilinen Akağaç şurubu, bal, çilek reçeli, krem peynirdir. Üzerine pudra şekeri serpip servi edebilirsiniz. Evde kendi sosunuzu hazırlayabilir siniz. Olgunlaşmış 1-2 muzu iyice ezin dilerseniz bal ekleyip karıştırın dilerseniz şurup. Çok tatlı sevmiyorsanız sadece ezdiğiniz muzları sürebilirsiniz. Tercih sizin, en çok tercih edilen diğer meyve ise muzdan sonra yaban mersinidir. İsterseniz pişirmeden önce harcına katıp o şekilde pişirebilirsiniz.",
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
                          '\n 4 pancake için ;'
                          '\n ⍟4 su bardağı un, elenmiş (500 g) '
                          '\n ⍟4 yemek kaşığı kabartma tozu'
                          '\n ⍟4 su bardağı süt, ılık (1 litre) '
                          '\n ⍟3 / 4 fincan tereyağı, eritilmiş (170 g) '
                          '\n ⍟3 yumurta sarısı'
                          '\n ⍟4 yumurta akı '
                          '\n servis etmek için '
                          '\n ⍟Akçaağaç şurubu, ',
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
                          "\n ⍟Büyük bir karıştırma kabında un ve kabartma tozunu karıştırın."
                          "\n ⍟Ayrı bir kapta, tereyağı, süt ve yumurta sarılarını ekleyin ve karıştırın."
                          "\n ⍟Üçüncü bir kase de yumurta aklarını mikserle yüksek hızda çırpın. Köpük kıvamına gelince bırakın. "
                          "\n ⍟Un karışımının içine süt karışımı dökün ve karıştırın. Çırpılmış yumurta akını ekleyin ve spatulayla yedirin.  "
                          "\n ⍟20 cm (8-inç) büyüklüğündeki yapışmaz tavayı ocakta ısıtın. Isınan tavaya 1,5 su bardağı pancake hamurunu dökün ve üstünü düzleştirin, sonra bir kapak ile üstünü örtün. Piştiğini kürdan yardımıyla kontrol edin temiz çıkarsa ocaktan alın. Pişme süresi ortalama 20 dakikadır. Pişen pancake tabağa aktarın ve diğerlerini de aynı şekilde pişirin. "
                          "\n ÜSTÜ İÇİN"
                          "\n ⍟Akçaağaç şurubu, bal, reçel ile servis yapın. ",
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
