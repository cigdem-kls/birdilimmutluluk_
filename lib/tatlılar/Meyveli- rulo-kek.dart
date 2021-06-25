import 'package:birdilimmutluluk/rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MeyveliRulo extends StatefulWidget {
  @override
  _MeyveliRulo createState() =>
      _MeyveliRulo("images/Meyveli-Rulo-Pasta-Tarifi.jpg");
}

class _MeyveliRulo extends State<MeyveliRulo> {
  final image;
  int _rating;

  _MeyveliRulo(this.image);

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
                            "MEYVELİ RULO KEK",
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
                          "MEYVELİ RULO KEK",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Meyveli rulo kek, Instagramın sayesinde Japonların’da pasta dünyasını yeni yeni tanıyoruz. Bu Meyveli Rulo Kek Japonların meşhur ve çok satılan bir pastası, Hep yapmak istediğim ama bir türlü fırsatını bulamadığım jöle gibi sallanan coton cheesecake, fazlaca kabarmış ve oldukça lezzetli görülen dev pancakelerinden sonra Japon pasta dünyasına oldukça meral saldım. Kesinlikle en kısa zamanda hepsini tek tek yapacağım,"
                          " Japon tariflerini araştırırken Pasta blogerlarının hepsi olumlu görüşleriyle muhteşem lezzetlerden bahsetmişler. Bu tarifi ben kendim de denedim ve görselde ki sonuca ulaşabildim. Sizlere de tavsiye edebilirim. Damak tadınıza göre meyveli değilde çikolatalı, kestane şekerli gibi çeşitlendirebilirsiniz. Tamamen sizin yaratıcılığınıza kalmış bir durum",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          "ÖNEMLİ İPUÇLARI",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Yine unutmayın kullanacağınız malzemeler muhakkak oda ısısında olsun. Birde size bir tüyo vereceğim birkaç tarifte bahsettim gerçi, kullanacağınız şeker ultra ince olsun yani normal şeker tanesiyle pudra şeker tanesi arasında bir büyüklükte, doğal olarak diyeceksiniz ki nereden bulacağız biz bu şekeri, çözümü basit şekeri mutfak robotuna koyun ve 30-60 sn çalıştırın ve bu şekeri kullanın."
                          " Krem Tartar  çok fazla koymayın çay kaşığının yarısından da az olsun eğer krem tartar yoksa onun yerine aynı miktarda taze limon suyu veya beyaz sirkede koyabilirsiniz.",
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
                          '\n Kek Malzemesi :'
                          '\n ⍟4 yumurta sarısı (oda sıcaklığında)'
                          '\n ⍟20 gr pudra şekeri (1-1/2 yemek kaşığı)'
                          '\n ⍟40 ml süt (2-2/3 yemek kaşığı) oda sıcaklığında'
                          '\n ⍟40 gr Ayçiçek yağı (3 yemek kaşığı)'
                          '\n ⍟3 ml vanilya ektresi (1/2 çay kaşığı)'
                          '\n ⍟30 gr çok amaçlı un (1/4 su bardağı)'
                          '\n ⍟30 gr mısır nişastası (3 yemek kaşığı)'
                          '\n ⍟4 yumurta akı – oda sıcaklığında'
                          '\n ⍟bir tutam tuz'
                          '\n ⍟3/8 çay kaşığı krem tartar (yoksa limon suyu veya beyaz sirke kullanabilirsiniz)'
                          '\n ⍟60 gr pudra şekeri 4-1/2 yemek kaşığı) elenmiş',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black87),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '\n Dolgu Malzemesi :'
                          '\n ⍟125 ml Krem Şanti (%35-%40)'
                          '\n ⍟20 gr ultra ince şeker – elenmiş'
                          '\n ⍟Seçtiğiniz meyveler (1 adet kivi- Mandalina- ve çilek koyabilirsiniz',
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
                          "\n ⍟Fırını önceden ısıtın, alt üst ısıtma modunda 170°C"
                          "\n ⍟Bir kabın içerisine Yumurta sarılarını 20 gram ince şekeri (1,5 Yemek Kaşığı) koyun mikserle değil çırpıcıyla şeker tamamen çözülene kadar karıştırın."
                          "\n ⍟40 ml Sütü, 40 gr yağı ve vanilya ektresini ekleyin. Vanilya özünüz yoksa 1 paket vanilya da koyabilirsiniz. Bu malzemeler tamamen karışana kadar karıştırın."
                          "\n ⍟Sonra elek yardımıyla 30 gr un ve mısır nişastasını karışıma koyun. Pürüzsüz ve tam bir karışım olana kadar iyice karıştırın."
                          "\n ⍟Ayrı bir kapta yumurta aklarını bir tutam tuzu mikserle hızlı şekilde çırpın krem tartarı ekleyin çırpmaya devam edin köpük köpük olacaktır. 60 gr şekeri azar azar ekleyin ve yüksek modda çırpmaya devam edin. Kadifemsi bir doku elde etmeniz gerekiyor. Onu da nasıl anlarsınız, mikseri malzemeye batırıp çıkarın mikser çıktıktan sonra köpük malzemenin üstünde kalıyorsa düzleşmiyorsa olmuş demektir."
                          "\n ⍟Çırpılmış yumurta akını hava kabarcıkları olmayacak şekilde köpüklü ve pürüzsüz hamur elde edene kadar sarısıyla karıştırın. İki malzemeyi karıştırdığınızda topaklanmalar olmasın diye yavaşça çırpma teliyle çırpın sonra yine yavaşça silikon spatulayla karıştırmaya devam edin. Hamur çok ince akışkan olmamalıdır. Çok hava kabarcığı olursa kek güzel kabarmaz ve piştikten sonra sertleşir."
                          "\n ⍟Yağladığınız ve yağlı kağıt serdiğiniz kalıba hamuru dökün her yere eşit miktarda yayın ve sert bir zemine kalıbı orta şiddette birkaç kez vurun hava kabarcıkları dışarı çıksın. 170°C fırında 25-30 dakika pişirin, kek koyu altın rengini alacaktır. Pastanın piştiğini anlamak için parmağınızı ortasına hafifçe bastırdığınızda şekline geri dönmelidir."
                          "\n ⍟Fırın ısısı fırından fırına değişiklik gösterir. Küçük bir fırın ise alt rafa koyun ve düşük ısıda pişirin(150-160°C). Fırınınız fanlıysa yukarıda belirttiğim ısıdan 10-15°C düşük olmalıdır."
                          "\n ⍟Pastayı tepsiden çıkarın tel rafta soğumaya bırakın. Pasta tamamen soğuyunca kenarda fazlalıkları varsa kesin. Alüminyum folyo veya yağlı kağıt üzerine keki yerleştirin. Çırpılmış kremayı kekin üzerine yayın alt kenarda 2 cm diğer kenarlarda yarım cm kadar boşluk bırakın. Meyveleri üzerine yerleştirin."
                          "\n ⍟Şimdi geldi en zor kısmına pastayı yuvarlamaya marifetinizi burada göstereceksiniz. Yavaşça pastayı yuvarlayın eşit yuvarlayabilmek için alüminyum folyadan destek alabilirsiniz. Tam rulo şeklinde yuvarladığınızda streç film ile sarın ve 3-4 saat buzdolabında soğutun.",
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
                          "\n ⍟Krema ve şekeri koyulaşana kadar mikserle çırpın, koyulaştıktan sonra mikserin hızını düşürün ve düşük hızla çırpmaya devam edin. Çok çırpmamaya gayret edin yoksa kıvamı sert olmaz. Kullanacağınız meyveleri dilimleyin ve 30 dk buzdolabında bekletin. Böylelikle meyvenin suyu kremayı sulandırmayacak meyveler daha diri duracaktır.",
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
