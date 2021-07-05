import 'package:birdilimmutluluk/pages/rating.dart';
import 'package:birdilimmutluluk/pie_chart/pie_chart_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class CappuccinoCupcake extends StatefulWidget {
  @override
  _CappuccinoCupcake createState() =>
      _CappuccinoCupcake("images/cappuccinocupcake.jpg");
}

class _CappuccinoCupcake extends State<CappuccinoCupcake> {
  final image;
  int _rating;
  Color baseColor = Colors.black87;

  _CappuccinoCupcake(this.image);

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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Text(
                            "CAPPUCCİNO CUPCAKE ",
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
                          "CAPPUCCINOLU SOĞUK CHEESECAKE",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Cappuccinolu Soğuk Cheesecake, soğuk cheesecake pişirmeden jelatin ile katılaşma sağlanan cheesecakedir. Cheesecake çok fazla çeşidi yapılan peynirli tatlılaların başında geliyor. Lezzeti ve görüntüsü de insanın iştahını kabartacak cinsten, bu cheesecake tarifi kahveden ilham alınmış hafif, kremsi ve fazla tatlı değil. Fırınınızı açmanıza bile gerek duymadan rahatlıkla yapabilirsiniz. Kahvenin aroması espresso tozundan yapılmış, online marketlerden bulmak kolay ama uğraşma istemiyorsanız normal granül kahvede kullanabilirsiniz. Tat olarak hiçbir kaybınız olmayacaktır."
                          "Üzerindeki kremayı Krem Şanti’nin içerisine kahve koyarak aroma verebilir veya sade olarak ta tercih edebilirsiniz. Hazırladığınız kremayı sıkma torbanıza koyun ve dekoratif olarak 1,2 veya 1,5 cm’lik boru ucu seçebilirsiniz. Resimdeki gibi dekore edip üzerine toz tarçın serpebilirsiniz. Cappuccinolu soğuk cheesecake yaparken dikkat edilmesi gereken konu malzemeleri çok fazla çırparak sulanmasına neden olmayın. Krem peynir yerine Labne peyniri kullanabilirsiniz. Labne kullanacaksanız peynirinizi muhakkak süzün ve fazla suyunu alın."
                          "Cappuccinolu Soğuk Cheesecake yapmaya başlamadan önce malzemeleriniz muhakkak oda ısısında olsun. Orjinal cheesecake tariflerinde taban için Graham kraker kullanılır. Bu tariftede Graham Kraker kullanılıyor ama maalesef ülkemizde satılmıyor. İsterseniz evde kendiniz yapabilirsiniz. Tarifini aşağıda veriyorum. İsterseniz de yulaflı burçak bisküvi veya kurabiyeleri rondodan geçirip hazırlayabilirsiniz.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, color: baseColor),
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
                          '\n TABANI İÇİN;'
                          '\n ⍟1 su bardağı Graham Kraker yoksa burçak biskuvi, rondo ile ufalanmış'
                          '\n ⍟4 yemek kaşığı (57 gr.)tuzsuz tereyağı, erimiş',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "Dolgu için;",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "\n ⍟3/4 su bardağı süt."
                          "\n ⍟1,5 çay kaşığı toz jelatin (1 zarf-7gr)"
                          "\n ⍟720 gr krem ​​peynir, yumuşatılmış"
                          "\n ⍟225gr ekşi krema, sour cream"
                          "\n ⍟3/4 su bardağı şeker"
                          "\n ⍟2 çay kaşığı vanilya özü"
                          "\n ⍟3 yemek kaşığı instant espresso tozu yoksa normal nescafe"
                          "\n ⍟2 su bardağı krema"
                          "\n ⍟Süsleme için tarçın",
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
                          "\n Tabanı için:"
                          "\n ⍟Bisküvi kırıntılarını ve eritilmiş tereyağını karıştırın ve kırıntıların ıslak kuma benzemesini bekleyin. Karışımı 22 cm’lik kelepçeli kalıbınızın tabanına eşit şekilde yayın ve bastırın. Peynirli dolgumuzu hazırlayana kadar buzdolabına koyun."
                          "\n Dolgu için:"
                          "\n ⍟Sütü küçük tencereye dökün ve toz jelatini sütün yüzeyine serpin. 2 dakika bekletin. Tavayı düşük ateşte jelatin eriyene kadar ısıtın. Ara sıra karıştırmayı unutmayın. İyice karıştığında ocaktan alın ve biraz soğumasını bekleyin."
                          "Krem peyniri, pürüzsüz hale gelinceye kadar orta hızda çırpın varsa stand mikserinizi kullanın. Ekşi krema, şeker, ve vanilyayı ekleyin çırpmaya devam edin yavaş yavaş jelatin karışımı ekleyin ve çırpmaya devam edin."
                          "Instant yani hazır espresso tozunu 1,5 çorba kaşığı sıcak suyla çözünene kadar karıştırın. Yavaş yavaş cheesecake karışımının içine karıştırarak ekleyin."
                          "Buzdolabında beklettiğimiz kalıbımızı çıkarıyoruz ve hazır olan peynirli karışımı silikon kaşık yardımıyla karıştırarak ve eşit şekilde hazırladığımız tabanın üzerine yayıyoruz."
                          "onraki adımımız kalıbımızı en az 4 saat buzdolabında bekletiyoruz. Bu süre yeterli olacaktır ama cheesecake bir gece buzdolabında bekletme taraftarıyım lezzetide oturmuş oluyor."
                          " Servis yapmak için uygun bir pasta tabağına dikkatlice cheesecakemizi alıyoruz. Dilerseniz kahve veya hazır espresso tozu ile frosting krema hazırlayıp sıkma torbası ile resimdeki gibi süsleyebilirsiniz. Frosting krema ile uğraşmak istemezseniz krem şanti ile de yapabilirsiniz. En son üzerine toz tarçın serpip servis yapabilirsiniz.",
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
                          "\n ⍟Sütü küçük tencereye dökün ve toz jelatini sütün yüzeyine serpin. 2 dakika bekletin. Tavayı düşük ateşte jelatin eriyene kadar ısıtın. Ara sıra karıştırmayı unutmayın. İyice karıştığında ocaktan alın ve biraz soğumasını bekleyin."
                          "\n ⍟Krem peyniri, pürüzsüz hale gelinceye kadar orta hızda çırpın varsa stand mikserinizi kullanın. Ekşi krema, şeker, ve vanilyayı ekleyin çırpmaya devam edin yavaş yavaş jelatin karışımı ekleyin ve çırpmaya devam edin."
                          "\n ⍟Instant yani hazır espresso tozunu 1,5 çorba kaşığı sıcak suyla çözünene kadar karıştırın. Yavaş yavaş cheesecake karışımının içine karıştırarak ekleyin."
                          "\n ⍟Buzdolabında beklettiğimiz kalıbımızı çıkarıyoruz ve hazır olan peynirli karışımı silikon kaşık yardımıyla karıştırarak ve eşit şekilde hazırladığımız tabanın üzerine yayıyoruz."
                          "\n ⍟Sonraki adımımız kalıbımızı en az 4 saat buzdolabında bekletiyoruz. Bu süre yeterli olacaktır ama cheesecake bir gece buzdolabında bekletme taraftarıyım lezzetide oturmuş oluyor."
                          "\n ⍟Servis yapmak için uygun bir pasta tabağına dikkatlice cheesecakemizi alıyoruz. Dilerseniz kahve veya hazır espresso tozu ile frosting krema hazırlayıp sıkma torbası ile resimdeki gibi süsleyebilirsiniz. Frosting krema ile uğraşmak istemezseniz krem şanti ile de yapabilirsiniz. En son üzerine toz tarçın serpip servis yapabilirsiniz.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, color: Colors.black),
                        ),
                        PieChartSample(),
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
