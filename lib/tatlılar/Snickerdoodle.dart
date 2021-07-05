import 'package:birdilimmutluluk/pages/rating.dart';
import 'package:birdilimmutluluk/pie_chart/pie_chart_page13.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class Snickerdoodle extends StatefulWidget {
  @override
  _Snickerdoodle createState() =>
      _Snickerdoodle("images/tarcin-sekerli-snickerdoodle-kurabiyesi.jpg");
}

class _Snickerdoodle extends State<Snickerdoodle> {
  final image;
  int _rating;
  _Snickerdoodle(this.image);

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
                        color: Colors.white60,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Text(
                            "SNİCKERDOODLES KURABİYE",
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
                          height: 10,
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
                          "TARÇIN ŞEKERLİ SNICKERDOODLES KURABİYESİ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Tarçın şekerli snickerdoodles kurabiyesi , bu tarif orijinal snickerdoodles tarifidir. Tereyağı ve yağ, şeker ve unla yapılan tarçın şekerine bandırılan ve yuvarlanan kurabiyedir. Bir başka özelliği hamuru tartar kreması ile karbonat kullanarak hazırlanır. Bu iki malzeme olmazsa snickerdoodles kurabiye olmaz. Kabartma tozu yerine krem tartar ve karbonat kullanın. Elbette ki tartar ve karbonat yerine 2 çay kaşığı kabartma tozu kullanabilirsiniz ama o zaman gerçek bir snickerdoodles olmayacak. Krem tartar kurabiyeye benzersiz keskin bir lezzet katar buda onu şekerli kurabiyelerden ayırır lezzetli bir snickerdoodles yapar.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "TARTAR KREMİ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Tartar kremi, asidik özelliklere sahip karbonata benzeyen bir maddedir. Çeşitli nedenlerle bir çok tarifte kullanırlar. Snickerdoodles ‘ta kullanılmasının 3 nedeni vardır,"
                          "1- Krem tartar snickerdoodles ‘a hafif asidik bir tat verir."
                          "2- Krem tartar kurabiye hamurundaki şekerin kristalleşmesini önler. Böylelikle kurabiye gevrek değil yumuşak olur."
                          "3- Krem tartar klasik olarak sncikerdoodles ‘ta karbonat ile birlikte kullanılır.  Krem tartar karbonatı aktive etmek için asidik bileşen olarak işlevini görür. Tıpkı bir mayanın yaptığı hamuru kabartır."
                          "Ancak şöyle bir durum var ki, Krem Tartar kullanmayan bir çok kişi var. Buda demek oluyor ki elinizin altında her an bulunmamasıdır. Şahsi fikrim snickerdoodles ‘ı özel yapan bu asidik tadı ama elinizde yoksa 2 çay kaşığı kabartma tozu kullanabilirsiniz. Ayrıca yine krem tartar yerine 2 çay kaşığı limon suyu ve 1/2 çay kaşığı karbonat ekleyerek asidik tadı biraz daha arttırabilirsiniz. Ama tavsiyem krem tartar kullanmanızdır. Pasta malzemeleri satılan yerlerde bulunuyor. Alın ve mutfağınızın bir köşesinde dursun. Kapalı kavanozda çok uzun bir süre muhafaza edebilirsiniz. Ayrıca beze, yumurta akı çırparak krema gibi ürünler yapacaksanız oldukça işinize yarayacaktır. Kullanmaya başladığınızda bir çok tarifinize ekleyeceğinize eminim.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "SOĞUTMA YOK",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Diğer kurabiye tariflerinde biliyorsunuz hamuru belli bir süre buzdolabında bekletmek zorundasınızdır. Snickerdoodles kurabiye tarifinde bunu yapmaya gerek yoktur.",
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
                          '\n ⍟3 su bardağı((375 g) Çok amaçlı un'
                          '\n ⍟2 çay kaşığı Tartar krem'
                          '\n ⍟1 çay kaşığı Kabartma tozu'
                          '\n ⍟1½ çay kaşığı Toz tarçın'
                          '\n ⍟½ çay kaşığı Tuz'
                          '\n ⍟1 su bardağı(230g) Tuzsuz tereyağı oda sıcaklığında,yumuşamış'
                          '\n ⍟1⅓ su bardağı Toz şeker(267g)'
                          '\n ⍟1 büyük Yumurta oda sıcaklğında'
                          '\n ⍟2 çay kaşığı Vanilya özütü'
                          '\n ⍟SÜSLEME'
                          '\n ⍟⅓ su bardağı(70g) Toz şeker'
                          '\n ⍟1 çay kaşığı Toz tarçın',
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
                          "\n ⍟Fırını önceden 190 ° C'de (375 ° F) ısıtın. İki büyük kurabiye tepsisine yağlı kağıt serin veya silikon fırın matını hazırlayın ve bir kenara koyun."
                          "\n ⍟Unu, tartar kremasını, kabartma tozu, tarçın ve tuzu orta büyüklükte bir kasede birleştirin ve karıştırın.."
                          "\n ⍟Büyük bir kapta tereyağı ve toz şekeri pürüzsüz ve kremsi olana kadar yaklaşık 2 dakika yüksek hızda çırpın. Yumurta ve vanilya özünü ekleyin. Karışana kadar orta-yüksek hızda çırpın. Gerektiğinde spatula ile kenarları sıyırın ve karışıma ekleyin. Mikser düşük hızda çalışırken, kuru malzemeleri ıslak malzemelere yavaş yavaş 3 seferde ekleyin. Hamur kalın olacaktır."
                          "\n ⍟Her biri yaklaşık 1.5 yemek kaşığı kurabiye hamuru alın ve yuvarlayın. Hamur toplarını tarçın+şeker karışımında yuvarlayın. İsterseniz üzerine ilave tarçın şekeri serpin. Fırın tepsilerine yaklaşık 9 cm aralıklarla yerleştirin."
                          "\n ⍟Kurabiyeleri 10 dakika pişirin. Çerezler çok kabarık ve yumuşak olacaktır. Hala çok sıcak olduklarında, düzleştirmek için bir kaşık veya çatalın arkasına hafifçe bastırın. Çerezleri fırın tepsisinde 10 dakika soğumaya bırakın ve tamamen soğuması için tel ızgaraya aktarın."
                          "\n ⍟Kurabiyeler, oda sıcaklığında hava geçirmez bir kapta 7 gün boyunca yumuşak ve taze kalır."
                          "\n ÜSTÜ İÇİN"
                          "\n ⍟Kurabiyelere serpeceğimiz Toz şeker ve tarçını küçük bir kapta birleştirin.",
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
                          "\n ⍟Kurabiye hamurunu buzlukta saklayabilirsin. Buzdolabında ise en fazla 3 gün muhafaza edebilirsiniz. Kurabiyeleri pişirmeden yuvarlayıp tepsiye koymadan önce oda ısısına gelmesini bekleyin. Dondurucuda 2-3 aya kadar saklayabilirsiniz. Dondurucudan çıkardıktan sonra çözünmesini bekleyin. Pişmiş kurabiyeleri dondurucuda 3 ay saklayabilirsiniz. Servis yapmadan önce buzdolabına koyun ve eritin."
                          "\n ⍟Tartar  Kreması : Bu tarif için tartar kreması gereklidir. snickerdoodles kurabiyesinin  özelliği tartar krem ve kabartma tozuyla yapılmasıdır.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, color: Colors.black),
                        ),
                        PieChartSample13(),
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
