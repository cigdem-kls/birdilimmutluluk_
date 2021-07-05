import 'package:birdilimmutluluk/pages/rating.dart';
import 'package:birdilimmutluluk/pie_chart/pie_chart_page10.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class OreoluDondurma extends StatefulWidget {
  @override
  _OreoluDondurma createState() =>
      _OreoluDondurma("images/Oreolu-dondurma.jpg");
}

class _OreoluDondurma extends State<OreoluDondurma> {
  final image;
  int _rating;

  _OreoluDondurma(this.image);

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
                            "OREO VANİLYALI DONDURMA",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          LikeButton(
                            size: 40,
                            countBuilder:
                                (int count, bool isLiked, String text) {
                              var color = isLiked ? Colors.red : Colors.grey;
                              Widget result;
                              if (count == 0) {
                                result = Text(
                                  "love",
                                  style: TextStyle(color: color),
                                );
                              }
                              return result;
                            },
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
                                        "10 dk",
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
                                        "8 dk",
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
                          "OREOLU VANİLYALI DONDURMA",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Oreolu vanilyalı dondurma, tarife geçmeden önce ismini detaylı olarak açıklamak istiyorum. Tarifin orjinal ismi “Cookies and Cream Fudge Swirl Ice Cream” kurabiyeli, Krem Fudgeli dondurma, Swirl yani girdap kelimesini nereye koyacağımı şaşırdım. En iyisi çıkarayım dedim. Neden böyle bir açıklama yapmak zorunda kaldı  onu söyleyeyim. Bu dondurmanın içeriğinde Fudge denilen bir tatlı tarifi var. Ülkemizde çok bilinmiyor. Özellikle Amerika’ya giden veya orada yaşayan kişiler bilirler.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "OREO BİSKUVİ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Oreo Bisküvi, Yurt dışında ki tarifleri takip edenler bilirler, Oreo bisküvisi oldukça popülerdir. Özellikle cheesecake tariflerinde taban olarak kullanılır. Ufalanıp Krem kremanın içerisine ya da üzerine süs olarak koyulabilir. Ayrıca süt ile birlikte tüketilmesi popülerdir.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "VANİLYALI AROMA",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Oreolu vanilyalı dondurma (Fudge) yapımı oldukça kolay ve lezzetlidir. Aslında bu tarifi paylaşmak için biraz daha bekleyecektim, havalar biraz daha ısınsın dedim ama dayanamadım. Vanilyalı dondurmayı bazı kişiler sevmiyor ama ben bayılıyorum. Siz başka aromalı tercih edebilirsiniz ama Oreolu olduğu için vanilyalı yapmanızı tavsiye ederim."
                          "Oreo bisküvisini sade yerseniz normal standart kremalı bir bisküvi gibi gelir hatta birazda serttir. İnsanlar lezzetini abartıyor diye düşünebilirsiniz. Ama süte batırıp yumuşamasını bekleyip yerseniz oldukça lezzetli oluyor. Epik bir lezzet ortaya çıkıyor. Şimdi Oreoyu süte değilde vanilya dondurmasının içerisine eklediğinizi ve bu aromayla yumuşadığını parça parça ağzınızda dağıldığını? Gözünüzü kapatın ve hayal edin. Çok lezzetli oluyor değil mi?"
                          " Oreolu Vanilyalı dondurma tarifini yayına hazırlarken henüz yapmadım ama tarifi yazarken gözümde canlandı ve bir an önce yapma ihtiyacı duydum. Kesinlikle yapmalıyım."
                          "Tarifin tadı içerisindeki kremalı bisküvi ve soslar sayesinde çift kat krema tadı yoğun, dolayısıyla oldukça tatlı, eğer ki şekere karşı duyarlılığınız varsa hoşunuza gitmeyebilir."
                          "Tarifin dokusu, Kremsi, pürüzsüz, parça çikolatalı, doku çeşitliliği çok fazla, Yapılışı ise herhangi bir pişirme işlemi olmadığı için kolay diyebilirim. Görünüşü dayanılmaz, bu görüntüye kim karşı koyabilir?",
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
                          '\n Dondurma Malzemeleri:'
                          '\n ⍟115 gr krem peynir, oda ısısında'
                          '\n ⍟2 su bardağı heavy cream'
                          '\n ⍟1 su bardağı tam yağlı süt'
                          '\n ⍟1/2 su bardağı şeker'
                          '\n ⍟1/4 çay kaşığı tuz'
                          '\n ⍟1/2 çay kaşığı vanilya ekstresi'
                          '\n ⍟1 yemek kaşığı mısır şurubu'
                          '\n ⍟15 Oreo kurabiyesi, kabaca parçalanmış',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '\n Fudge Malzemeleri:'
                          '\n ⍟1/4 su bardağı + 2 yemek kaşığı heavy cream'
                          '\n ⍟1 yemek kaşığı az tuzlu tereyağı'
                          '\n ⍟1/4 su bardağı şeker'
                          '\n ⍟2 yemek kaşığı esmer şeker'
                          '\n ⍟1/2 su bardağı çikolata parçacıkları'
                          '\n ⍟1/8 çay kaşığı tuz'
                          '\n ⍟1/2 çay kaşığı vanilya ekstresi',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "DONDURMANIN HAZIRLANMASI;",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Bir blenderın haznesine Oreo bisküvileri hariç diğer malzemeleri ekleyin ve homojen bir kıvama  gelene kadar karıştırın"
                          "Karışımı orta büyüklükte bir kaba aktarın ve üstünü streç film ile kapatın ve streçi bastırın, hazırlanan malzemenin yüzeyine temas etsin. Tamamen soğuyuncaya kadar en az 30 dakika veya geceden buzdolabına koyun ve soğutun.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "FUDGE’NİN HAZIRLANMASI",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Krema, tereyağı ve şekerleri küçük bir tencerede kısık ateşte ısıtın. Karışımı kaynatın ve şeker eriyene kadar yaklaşık 2 dakika pişirin. Ateşten alın ve çikolatalı parçaları karıştırın. Tamamen karıştırmadan önce 3 dakika bekletin. Tuz ve vanilyayı ilave edin. Kullanmadan önce karışımı oda sıcaklığına soğumaya bırakın. Fudge swirl, 2 güne kadar buzdolabındaki hava geçirmez bir kapta saklanabilir. Kullanmadan önce oda sıcaklığına getirin.",
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
                          "\n ⍟Öncelikle evde dondurma makineniz varsa krem karışımını içine dökün. Dondurma makinenizin talimatına göre dondurmayı hazırlayın karıştırmanın bitmesine 5 dakika kala Oreo çerezlerini karışıma ekleyin."
                          "\n ⍟Dondurma kaşığı ile yada kolayınıza gelen bir yardımcı gereçle malzemeyi hava geçirmeyen bir kaba aktarın, aktarırken dondurma ve parçacıkları eşit dağıtın. Üstünü streç film ile kaplayın ve yüzeyine doğru bastırın. Servis yapmadan önce 3 saat sertleşene kadar dondurun."
                          "\n ⍟Dondurma makineniz yoksa hiç üzülmeyin, size anlatacağım taktik ile çok kolay dondurmanızı yapabileceksiniz. Benmari usulüne çok benziyor ama sıcak su yerine buz koyacağız."
                          "\n ⍟Büyükçe bir kabı buz ile doldurun ve içine 8 yemek kaşığı kaya tuzu ekleyin. Bu bildiğimiz turşu kurarken kullandığımız tuz,"
                          "\n ⍟Buz ve Tuz tepkimeye girecek ve buz hızla erimeye başlayacak erirken bizde dondurmamızı çırpacağız."
                          "\n ⍟Tuzu ekledikten sonra dondurmayı çırpacağımız kabı buz dolu kaba koyuyoruz. Dondurmamızı çırpmaya başlıyoruz. Çok uzun aralıklarla çırpmayın ki mikser ısınıp dondurmamızı etkilemesin. Kıvam aldıktan sonra Oreo çerezli karışımı ekliyoruz 5 dakika daha çırpıyoruz ve karışımımızı hava geçirmez kaba alıyoruz. Yani 2 numaralı talimatı yapıyoruz.Afiyet olsun",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        PieChartSample10(),
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
