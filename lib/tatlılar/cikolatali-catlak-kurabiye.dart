import 'package:birdilimmutluluk/pages/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CatlakCikolata extends StatefulWidget {
  @override
  _CatlakCikolata createState() =>
      _CatlakCikolata("images/cikolatali-catlak-kurabiye.jpg");
}

class _CatlakCikolata extends State<CatlakCikolata> {
  final image;
  int _rating;

  _CatlakCikolata(this.image);

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
                            "ÇATLAK KURABİYE TARİFİ",
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
                                        "25 dk",
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
                                        "12 dk",
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
                          "ÇİKOLATALI ÇATLAK KURABİYE",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Çikolatalı Çatlak Kurabiye tarifi; Genelde tatil kurabiyesi diye bilinen çatlak kurabiyelerin üzerine pudra şekeri veya ince granül şeker veya esmer şeker serperek farklı lezzetler yakalanabiliyor. Özellikle çatlak veya buruşuk görünümü ile estetik olarakta ilgimizi çekmeyi başaran ve iştahı kabartan lezzetli bir kurabiyedir. Çatlak kurabiye yapmak çokta zor bir deneyim değil, size zor geliyorsa bile emin olun bu zahmete değiyor. Daha önce tatmadıysanız tavsiyemdir. Dışarıdan gevrek bir kurabiye gibi görünse de içi kek kadar yumuşak ve yemesi kolaydır. Piştikten sonraki kokusu iştah kabartıcı,",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "ÖNEMLİ OLAN HAMURU YÖNETMEK",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Çikolatalı Çatlak Kurabiye hamurunu hazırladığınızda 4 saat muhakkak buzdolabında bekletmeniz gerekiyor. Bu adımı atlamamanız lazım ya da süresini düşürmemeniz lazım. Çünkü dokusunu bu soğutma işleminden alıyor. Ayrıca kurabiye hamurunun sertleşmesini sağlar, böylece elinize yapışmaz. Elinizle yuvarlamaya başladığınızda biraz yapışkan olacaktır sorun değil önemli olan çikolatalı çatlak kurabiye hamuru kolayca yönetmek. Az kalsın en önemli unsuru unutuyordum. Kurabiye tarifini yapmadan önce malzemeleriniz kesinlikle oda ısısında olmalı, bazen göz ardı ettiğimiz bir durum ama emin olun Yumurta, Tereyağının oda ısısında olması tarifin kıvamı ve lezzeti için en önemli etkendir. Tereyağı oda ısısında olsun ama tamamen erimiş olmasın. ",
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
                          '\n ⍟113 gr(40ounce) Şekersiz çikolata rendelenmiş'
                          '\n ⍟¼ su bardağı(60ml) Sıvı yağ'
                          '\n ⍟2 su bardağı(250g) Çok amaçlı un'
                          '\n ⍟2 çay kaşığı Kabartma tozu'
                          '\n ⍟½ çay kaşığı Tuz'
                          '\n ⍟2 su bardağı(400g) şeker'
                          '\n ⍟2 çay kaşığı Vanilya ekstresi'
                          '\n ⍟4 büyük Yumurta'
                          '\n ⍟1 su bardağı(120g) Pudra şekeri',
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
                          "\n ⍟Rendelenmiş çikolata ve sıvı yağı sos tenceresine koyun ve düşük ateşte eritin. Çikolata eridikten sonra yaklaşık 4 dakika kadar pürüzsüz hale gelene kadar karıştırın. Ateşten alın ve hafifçe soğumaya bırakın."
                          "\n ⍟Un(eleyin), kabartma tozu ve tuzu orta büyüklükte kabın içerisinde karıştırın ve bir kenara koyun."
                          "\n ⍟Şekeri ve erittiğimiz çikolata yağı karışımını bir spatula yardımıyla karıştırma kabına yerleştirin ve malzemeler bir araya gelinceye kadar (yaklaşık 2 dakika) orta hızda karıştırın (kumlu bir doku olacak). Karıştırıcıyı durdurun ve kasenin kenarlarını spatula ile kazıyın. Karıştırıcıyı yine orta hızda vanilyayı ve her seferinde 1 tane yumurtayı ekleyin, yumurta malzemeye tamamen karışmadan diğerini eklemeyin.(yaklaşık her yumurta 2.5 dakika) Mikseri durdurun ve karıştırma kabının kenarlarını kazıyın. Düşük hızda, un karışımını ekleyin ve tam karışana kadar karıştırın, mikseri tekrar durdurun ve kenarlarını tekrar kazıyın ve 1 dakika kadar bekleyin. Hamurun kıvamı akışkan olacaktır. Sonra hamurun üzerini streçle örtün ve sertleşene kadar en az 2 saat veya gece boyunca buzdolabında soğutun."
                          "\n ⍟Fırını 175°C(350 °F) ısıtın. 2 fırın tepsinin altına silikon pad veya yağlı kağıt serin"
                          "\n ⍟Pudra şekerini bir tabağa veya sığ bir kaseye yerleştirin. Hamuru 3 cm lik toplar halinde (her biri yaklaşık 1 çorba kaşığı) yuvarlayın, şekerin içine bırakın ve tamamen kaplanana kadar yuvarlayın. Topların 15 tanesini, hazırlanan fırın tepsilerinin her birine 3 cm aralıklarla yerleştirin. (Kalan hamuru buzdolabında soğutun.)"
                          "\n ⍟5 dakika pişirin, tepsiyi çevirin tekrar fırına koyun yaklaşık 5 dakika veya 7 dakika daha pişirmeye devam edin. Piştikten sonra kurabiyeleri tel rafa aktarın ve tamamen soğutun. Kalan hamurla tekrarlamadan önce fırın tepsilerinin tamamen soğumasını bekleyin (yağlı kağıdı yeniden kullanabilirsiniz). Kurabiyeler hava geçirmez bir kapta 3 ila 4 gün saklanabilir.",
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
                          "\n PİŞİRME İÇİN UYARI"
                          "\n ⍟ Çatlak kurabiye yapmadan önce birkaç uyarıda bulunacağım. 3 fırın tepsisiyle yapılıyor ama elinizde tek tepsi varsa tabi ki kullanabilirsiniz ama tekrar pişirmek için kurabiyeleri üzerine yerleştirmeden önce fırın tepsisinin oda sıcaklığına gelmesini sağlayın. ",
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
