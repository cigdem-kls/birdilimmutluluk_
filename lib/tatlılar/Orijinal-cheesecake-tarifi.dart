import 'package:birdilimmutluluk/pages/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class OrijinalCheesecake extends StatefulWidget {
  @override
  _OrijinalCheesecake createState() =>
      _OrijinalCheesecake('images/ORIJINAL-CHEESECAKE-TARİFİ.jpg');
}

class _OrijinalCheesecake extends State<OrijinalCheesecake> {
  final image;
  int _rating;

  _OrijinalCheesecake(this.image);

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
                            "ORİJİNAL CHEESECAKE ",
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
                                        "45 dk",
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
                          "ORIJINAL CHEESECAKE TARİFİ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Orijinal Cheesecake Tarifi, kremsi ve pürüzsüz bir cheesecake tarifi için başka bir yere bakmayın. Kusursuz kıvam pişirme için su banyosunda pişirmeyi ihmal etmeyin. Orijinal Cheesecake tariflerinde taban için kullanılan bisküvi Graham Krakerlerin ‘den yapılır. Ayrıca ev yapımı Graham Kraker tarifine de ulaşabilirsiniz. Bulamazsanız veya yapmakla uğraşmak istemezseniz yulaflı bisküvide kullanabilirsiniz. Orijinal Cheesecake tarifi malzemeleri ana malzemelerdir ve klasiktir. Her cheesecake tarifinde kullanılan malzemelerdir.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "CHEESECAKE HANGİ PEYNİRLE YAPILIR?",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Orijinal Cheesecake tariflerinde kullanılan peynir mascarpone peyniridir ikinci alternatif tarifi ise krem peynirdir. Ama bizim ülkemizde marketlerde satılan krem peynirler değil. Kıvam ve lezzet olarak mascarpone peynirine benzerler ve daha yağlıdır. Yağ oranı yüksek olunca dolgu kremanın kıvamı çok daha iyi ve daha lezzetli oluyor. Maalesef bu biz bu peynirlere kolay ulaşamadığımız için ev yapımı tarifleri ile yapabiliyoruz.",
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
                          '\n TABANI İÇİN MALZEMELER'
                          '\n ⍟1-⅕ su bardağı Yulaflı bisküvi veya Graham Kraker'
                          '\n ⍟5 yemek kaşığı(70gr) Tereyağı erimiş'
                          '\n ⍟¼ su bardağı(50g) Toz şeker',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          '\n DOLGU İÇİN MALZEMELER'
                          '\n ⍟900 gr Krem peynir veya Labne tam yağlı'
                          '\n ⍟1 su bardağı(200g) Toz şeker'
                          '\n ⍟1 su bardağı(240g) Tam yağlı ekşi krema oda sıcaklığında'
                          '\n ⍟1 çay kaşığı Saf vanilya özü'
                          '\n ⍟2 çay kaşığı Taze limon suyu isteğe bağlı, ancak önerilir'
                          '\n ⍟3 büyük Yumurta oda sıcaklığında',
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
                          "\n ⍟Fırın rafını alt orta konuma ayarlayın ve fırını 170 ° C (350° F) olarak önceden ısıtın."
                          "\n TABANI İÇİN TALİMATLAR"
                          "\n ⍟Bir mutfak robotu kullanarak, bisküvileri kırıntılara ayırın."
                          "\n ⍟Orta büyüklükte bir kabın içine dökün ve şekeri ekleyin, karıştırın ve tereyağı tamamen karışıncaya eritin ekleyin. (Bunların hepsini mutfak robotunda yapabilirsiniz). Karışım kumlu olacaktır."
                          "\n ⍟Kalıbınızın tabanına dökün ve sıkıca bastırın. 22 veya 25 cm 'lik (9-10) kelepçeli kalıp kullanabilirsiniz. Kalıbın kenarlarıda bisküvi olmasını istiyorsanız kalıbın kenarlarından yukarı doğru bastırın. Bisküvileri bastırmak için su bardağının tabanını kullanabilirsiniz."
                          "\n ⍟8 dakika pişirin. Fırından çıkarın ve sıcak kalıbı büyük bir alüminyum folyo üzerine yerleştirin. Dolguyu hazırlarken kabuğun hafifçe soğumasına izin verin."
                          "\n DOLGUSU İÇİN MALZEMELER"
                          "\n ⍟Büyük bir kapta, orta yüksek hızda, silikon kaşık veya mikserle krem peyniri ve toz şekeri 2 dakika kadar pürüzsüz ve kremsi hale gelinceye kadar karıştırın,"
                          "\n ⍟Ekşi krema, vanilya özü ve limon suyunu ekleyin ve ardından tamamen birleşinceye kadar çırpın. "
                          "\n ⍟Orta hızda, yumurtaları birer birer ekleyin, her eklemeden sonra sadece karışana kadar çırpın. Yumurta hamurun içine karıştıktan sonra, karıştırmayı durdurun. "
                          "\n ⍟Cheesecake'in soğurken sönmesini ve çatlamasını önlemeye yardımcı olmak için, kremayı fazla çırpmaktan kaçının."
                          "\n SU BANYOSU İÇİN TALİMATLAR"
                          "\n ⍟Kelepçeli kalıbımızı alüminyum folyonun üzerine koyup kenarlardan yukarı doğru katlayarak sardık."
                          "\n ⍟Derin bir fırın tepsinin içerisine alüminyum folyo ile sardığımız kalıbı koyuyoruz. Isıttığımız suyu yaklaşık 3cm kadar dolacak şekilde fırın kabımıza dolduruyoruz. Fırına yerleştiriyoruz. Sizin için daha kolay olacaksa fırın tepsisini fırına yerleştirip fırının içindeyken de su doldurabilirsiniz. Sizin için hangisi daha kolay olursa."
                          "\n ⍟55-70 dakika kadar cheesecake pişirin. İlk yarım saat fırını kesinlikle açmayın. Üzeri erkenden kızarmışsa kontrol edin. Merkezi pişene kadar pişirin. Bittiğinde, kalıbı hafifçe sallayın, peynirli kekin merkezi hafifçe sallanıyorsa pişmiştir. Fırının kapağını aralayın ve 1 saat kadar içinde soğumasını bekleyin. Böylece çatlamasını ve sönmesini önlemiş oluruz."
                          "\n ⍟Soğutulmuş cheesecake'i kalıptan çıkarmak için bıçakla kenarlardan ayırın ve sonra çıkarın. İstediğiniz soslarla servis edebilirsiniz.",
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
                          "\n ⍟Cheesecake ne kadar dinlendirirseniz o kadar iyi olur. Bir gün önceden yapıp ertesi gün servis ederseniz daha iyi olur."
                          "\n ⍟Başlamadan önce tüm soğuk malzemeleri oda sıcaklığına getirin. Oda sıcaklığı bileşenleri hızlı ve eşit bir şekilde birleştirir, böylece fazla karıştırmak zorunda kalmazsınız. Ayrıca, malzemelerin soğuk olması birbirine iyi karışmayacağından kıvamı kötü olacaktır."
                          "\n ⍟Peynirli kek hamuru fazla karıştırmayın ,Su banyosunda pişirin"
                          "\n ⍟Cheesecake'i 1 saat boyunca fırın kapağını aralayarak soğumasını bekleyin"
                          "\n ⍟Sonra oda sıcaklığında tamamen soğutun.",
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
