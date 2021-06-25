import 'package:birdilimmutluluk/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Macaron extends StatefulWidget {
  @override
  _Macaron createState() => _Macaron("images/macaron.jpg");
}

class _Macaron extends State<Macaron> {
  final image;
  int _rating;
  _Macaron(this.image);

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
                            "MACARON TARİFİ",
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
                                        "15 dk",
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
                          "MÜKEMMEL MACARON TARİFİ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Mükemmel macaron tarifi, Fransız tatlı kurabiyesi olarak bilinir ama İtalyan ve Türk mutfağında da yeri olan ve sık yapılan bir tariftir. Hemen hemen her fırında bulmak mümkündür. Fındık veya badem ile yapılır ve gıda boyaları ile renklendirilerek muhteşem estetik bir görüntü ortaya çıkar. Lüks pastaneler de gördüğünüz rengarenk Mükemmel macaron ları sizlerde evde kolaylıkla yapabilirsiniz. Mükemmel macaron tarifi tam ölçüdür. Aroma veya özütünü kendi damak zevkinize göre değiştirebilir siniz.",
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
                          '\n ⍟¾ su bardağı (90g) Öğütülmüş Badem'
                          '\n ⍟1 su bardağı (125g) Pudra Şekeri veya pastacı şekeri'
                          '\n ⍟2 Yumurta Beyazı'
                          '\n ⍟½ çay kaşığı Tuz'
                          '\n ⍟¼ su bardağı Şeker'
                          '\n ⍟1 çay kaşığı Çilek Özü'
                          '\n ⍟1-2 Damla Kırmızı Jel Boya',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "BUTTERCREAM KREMASI",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '\n ⍟½ su bardağı (110g) Tereyağı'
                          '\n ⍟1½ su bardağı (190g pudra şekeri | Toz şeker'
                          '\n ⍟½ çay kaşığı Vanilya Özü',
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
                          "\n ⍟Öğütülmüş bademleri ve pudra şekeri veya pastacı şekerini bir mutfak robotuna ekleyin ve malzemeler iyice bir araya gelene kadar 5-6 kez kesik kesik (pulse) çalıştırın. Malzemeler iyice karıştıktan sonra orta büyüklükte bir kaseye dökün."
                          "\n ⍟2 yumurtanın sarılarını ayırın, sarıları başka bir tarif için saklayın ve beyazlarını karıştırma kabına ekleyin. Yumurta aklarını bir stand karıştırıcıda veya mikserde köpüklene ne kadar çırpın ve tuzu ekleyin."
                          "\n ⍟Mikser yüksek hızla çalışırken yavaş yavaş şekeri ekleyin. Yumurta akı kıvam almaya başladığında henüz daha yumuşak  haldeyken çilek özü ve kırmızı jel boyayı ekleyin. Kıvam sertleşene kadar çırpmaya devam edin."
                          "\n ⍟Kuru malzemelerin üzerine yumurta akı karışımının yarısını ekleyin ve karıştırın iyice karıştıktan sonra diğer yarısını ekleyin. Karışımın iyice homojen olması lazım mikserle karıştırmanızı tavsiye etmiyorum. Tahta kaşık veya silikon karıştırıcıyla yavaşça karıştırabilir siniz. "
                          "\n ⍟Küçük boru ucu taktığınız sıkma torbasına karışımı kaşıkla ekleyin. Fırın tepsisine yağlı kağıt serin ve yaklaşık 3 cm lik parçalar halinde karışımı tepsiye sıkın. Hava kabarcıklarını gidermek için tepsiyi 15-20 cm yüksekten tezgaha 56 kez bırakın ve 30 dakika bekletin. "
                          "\n ⍟Macaronlara dokunduğunuzda üzerine dokunduğunuzda bozulmuyorsa 150 °C (300 F) önceden ısıttığınız fırına yerleştirin. 15 dakika boyunca pişirin. Soğumaya bırakın ",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "KREMASI İÇİN",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "\n ⍟Buttercream kremasını hazırlamak için tereyağını mikserle 5 dakika boyunca çırpın. Şekerin 3/1 ekleyin iyice karışana kadar çırpın, diğer 3/1 ekleyin çırpın ve kalan şekeri ekleyin. Kıvam alınca vanilyasını ekleyip karıştırın."
                          "\n ⍟Malzemeyi yine karıştırma torbasına koyun ve macaronun üstüne sıkın, üzerine diğer macaron parçasını koyun ve bastırın.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "İPUÇLARI",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "\n ⍟Macaronlar piştikten sonra ertesi gün tam servis kıvamında olur. O yüzden bir gün önceden hazırlayın."
                          "\n ⍟Özüt olarak farklı bir özüt ile değiştirip başka lezzetler yakalayabilirsiniz."
                          "\n ⍟Macaronu farklı buttercream, ganache, lemon curd veya reçel dolgularla tatlandırabilirsiniz."
                          "\n ⍟Lemon curd yapmak için bu tarifte artan yumurtayı kullanabilirsiniz. Çilek yerine 1 çay kaşığı limon özü ve 2 damla sarı jel boya ekleyin.",
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
