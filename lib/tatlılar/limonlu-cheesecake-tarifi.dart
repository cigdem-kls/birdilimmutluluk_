import 'package:birdilimmutluluk/pages/rating.dart';
import 'package:birdilimmutluluk/pie_chart/pie_chart_page6.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LimonluCheesecake extends StatefulWidget {
  @override
  _LimonluCheesecake createState() =>
      _LimonluCheesecake("images/limonlu-cheesecake-tarifi.jpg");
}

class _LimonluCheesecake extends State<LimonluCheesecake> {
  final image;
  int _rating;

  _LimonluCheesecake(this.image);

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
                            "LİMONLU CHEESECAKE ",
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
                                        "1 dk",
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
                          "PİŞMEYEN LİMONLU CHEESECAKE",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Pişmeyen Limonlu Cheesecake, yapımı kolay gibi gözükse de yapım aşamasında bir takım aksiliklerle karşılaşabilirsiniz. İşin içerisinde süt ve limon aynı tarifte varsa en büyük riskiniz kıvamı tutturamamak ya da sütün citrik asit ile kesilmesi, talimatları adım adım yapın ve ipuçlarını muhakkak dikkate alın.",
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
                          '\n ⍟350 gr.Yoğunlaştırılmış süt'
                          '\n ⍟1 ymk kşğıTaze limon suyu'
                          '\n ⍟450 gr.Krem peynir'
                          '\n ⍟165 gr.Az tuzlu tereyağ'
                          '\n ⍟2 ymk kşğıŞeker'
                          '\n ⍟2 paketYulaflı bisküvi',
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
                          "\n ⍟Bisküvileri kilitli buzdolabı poşetine koyup merdane ile çok ufak kırıntılar oluşana kadar ufalıyoruz veya mutfak robotunda çekiyoruz. "
                          "\n ⍟Bisküvileri orta büyüklükte bir kaba alın ve şekeri ekleyin harmanlayın"
                          "\n ⍟Hemen peşinden eritmiş olduğunuz tereyağını karışıma ekleyin."
                          "\n ⍟22 cm lik kelepçeli kalıbınıza malzemeleri boşaltın ve kalıbın her yerine eşit miktarda yayın ayrıca kalıbın yanlarına da 4,5 – 5 cm yüksekliğinde bisküvi kırıntılarını yayın. Buzluğa koyun ve en az 10 dk bekletin."
                          "\n ⍟Tabanımız buzlukta beklerken dolgusunu yapalım. Büyük bir kapta Krem peyniri orta hızda ayarlanmış mikser ile pürüzsüz hale gelinceye kadar çırpın."
                          "\n ⍟Yoğunlaştırılmış sütü yavaş yavaş ekleyin, kabın kenarlarında kalan malzemeyi kazıyarak karışıma dahil etmeyi unutmayın. Limon suyu ve vanilyayı da ekleyerek malzemeyi karıştırın."
                          "\n ⍟Buzluktan çıkardığınız tabanın içine hazırladığımız dolguyu dökün ve spatula ile düzeltin. Streç film ile kalıbın üzerini örtün, streç filmin kremaya değmesine dikkat edin. Kabuklaşmasını engelleyecektir. Bu şekilde buzdolabına koyun ve en az 3 saat kadar soğutun."
                          "\n ⍟3 bekledikten sonra kalıbı buzdolabından çıkarın. Kelepçeli kalıbınız dan Cheesecake çıkarın. Servise hazırdır. ",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        PieChartSample6(),
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
