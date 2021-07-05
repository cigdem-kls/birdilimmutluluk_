import 'package:birdilimmutluluk/pages/rating.dart';
import 'package:birdilimmutluluk/pie_chart/pie_chart_page2.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class Donut2 extends StatefulWidget {
  @override
  _Donut2 createState() => _Donut2("images/donut.jpg");
}

class _Donut2 extends State<Donut2> {
  final image;
  int _rating;
  _Donut2(this.image);

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
                  child: Center(
                    child: GestureDetector(
                      onHorizontalDragStart: (DragStartDetails details) {
                        setState(() {});
                      },
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
                                "HARİKA DONUT TARİFİ",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              LikeButton(
                                size: 40,
                                countBuilder:
                                    (int count, bool isLiked, String text) {
                                  var color =
                                      isLiked ? Colors.red : Colors.grey;
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.grey[200])),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "Hazırlanma zamanı",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            "60 dk",
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.grey[200])),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "Pişirme süresi",
                                            style:
                                                TextStyle(color: Colors.grey),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.grey[200])),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "Zorluk Derecesi",
                                            style:
                                                TextStyle(color: Colors.grey),
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
                              "İKİ ÇEŞİT DONUT VARDIR",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Genelde kahvaltıda tüketilen Ev yapımı : Harika donut tarifi yapmak için iki pişirme seçeceğiniz var. Fırında veya kızgın yağda. Her iki pişirme şeklinde de hamur mayalanır, hamur kesilir. Fırında olacaksa kalıplara yerleştirilir ve pişirilir. Yağda pişirecekseniz termal bir termometreye ihtiyaç duyacaksınız. Çünkü Ev yapımı : Harika donut (çörek) tarifi yapmak için dikkat etmeniz gereken şeylerden biri yağın ısısıdır. Yağı 190 °C’ye kadar ısıtıp bu ısıda sabit tutmalısınız. Fritözünüz varsa işiniz bir nebze daha kolay olacaktır",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black87),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Text(
                              "HAMUR KIVAMI",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Ev yapımı : Harika donut (çörek) tarifi için hamur kıvamı mükemmel olmalıdır. Ne çok sulu nede çok katı, tabiri caizse kulak memesi kıvamında olmalı. Hamur kıvamı için malzemeler oda ısısında olmalı. Oda ısısında olunca malzemeler birbirine homojen şekilde karışıyor sonradan yağ kusma yapmıyor.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black87),
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            Text(
                              "DONUT KALIBINIZ YOKSA",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Donut kalıbınız yoksa hiç üzülmeyin. Genelde kurabiye veya bisküvi kalıplarından büyük olanla ana gövde kesilir ortası içinde küçük yuvarlak kalıp kullanırsınız. Sadece donut kesmek için özel kalıplarda mevcut ama ülkemizde çok sık bulunan gereçler değil. Eğer donut seviyorsanız ve evde kendiniz yapmak istiyorsanız donut kalıbınız yoksa su bardağı ile kesebilirsiniz. Ortasındaki deliği ise soda kapağı ile açabilirsiniz. Hem pratik hemde hızlı olacaktır. Bu şekilde de Harika donut tarifi yapabilirsiniz.",
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
                              '\n ⍟1 su bardağı + 1 yemek kaşığı süt'
                              '\n ⍟1 paket kuru maya'
                              '\n ⍟2 yumurta'
                              '\n ⍟8 yemek kaşığı tereyağı, eritilmiş soğutulmuş'
                              '\n ⍟¼ su bardağı şeker'
                              '\n ⍟1 çay kaşığı tuz'
                              '\n ⍟4 su bardağı + 1 yemek kaşığı çok amaçlı un'
                              '\n ⍟Kızartmak için yağ',
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
                              "\n ⍟Sütü bir kapta ılıtın çok sıcak olmasın. Büyük bir kapta maya ile birleştirin. Hafifçe karıştırın ve mayayı ekleyin. Hafifçe karıştırın, karışım köpüklü olana kadar yaklaşık 5 dakika bekleyin."
                              "\n ⍟Mikserinize veya stant karıştırıcınıza hamur aparatını takın. Maya karışımına yumurta, tereyağı, şeker ve tuzu ekleyin. Unun yarısını (2 su bardağı + 2 yemek kaşığı) ekleyin. Homojen bir yapı olana kadar karıştırın. Kabın kenarındaki unları sıyırmayı unutmayın.Unun diğer yarısını da ekleyin karıştırın. Hamur çok cıvık olduysa bir seferde 2 yemek kaşığı un ekleyin.Hamuru unlu bir yüzeye aktarın ve yavaşça pürüzsüz hale gelinceye kadar yoğurun. Büyük bir kaseyi az miktarda bir yağ ile yağlayın. Hamuru kaseye aktarın ve üzerini streçle film ile kapatın. Yaklaşık 1 saat hamur 2 karına ulaşana kadar oda sıcaklığında mayalayın."
                              "\n ⍟Hamuru iyice unlanmış bir yüzeye tekrar aktarın. Hamuru 1,5-2 cm kalınlığında açın. Yuvarlak kalıplarla veya donut kalıbınız varsa donut kalıbınızla hamurunu kesin. Çapı yaklaşık 7,5 cm olacak. Kestiğiniz hamurları çıkarın. Doldurulmuş donut yapacaksanız ortasını delmenize gerek yok.Artan hamurları da yoğurun ve değerlendirin."
                              "\n ⍟Donutları, unladığınız fırın tepsisine aralarında ki mesafeyi koruyarak yerleştirin. Mutfak havlusuyla örtün ve yaklaşık 45 dakika oda ısısında bekletin. Eğer oda sıcaklığınız uygun değilse fırını 200 ° C'ye ısıtın, ardından ısıyı kapatın, fırın tepsilerini fırına koyun ve kapağı açık bırakın"
                              "\n ⍟Donutlar kabarmadan yaklaşık 15 dakika önce, yağı orta ateşte çelik tabanlı bir tencereye koyun ve 190 ° C'ye ısıtın. Bu arada, soğutma raflarını, fırın tepsilerini veya kâğıt havluları olan tabakları hazırlayın."
                              "\n ⍟Donutları dikkatlice kızgın yağa koyun ve kızartın. Pişitiğin de altın seri olacaktır spatula ile çevirin, Donutların delik kısmı daha hızlı pişer, her tarafı ortalama 45 sn kadar pişirin. Pişen donutları soğutma raflarına aktarın ve hamurun geri kalanını pişirin.Yağın ısısı çok önemlidir, Derece ile sürekli 190° C'de olduğunu kontrol edin.Doldurmak istediğiniz donutların içerisine dolgusunu doldurun soğuduktan sonra servis edin.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black87),
                            ),
                            PieChartSample2(),
                          ],
                        ),
                      ),
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
