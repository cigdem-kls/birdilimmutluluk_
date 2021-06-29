import 'package:birdilimmutluluk/BackgroundImage.dart';
import 'package:birdilimmutluluk/tatl%C4%B1lar/Krem-peynirli-havuclu-kek.dart';
import 'package:birdilimmutluluk/tatl%C4%B1lar/Meyveli-%20rulo-kek.dart';
import 'package:birdilimmutluluk/tatl%C4%B1lar/Orijinal-cheesecake-tarifi.dart';
import 'package:birdilimmutluluk/tatl%C4%B1lar/Snickerdoodle.dart';
import 'package:birdilimmutluluk/tatl%C4%B1lar/cappuccino-cupcake.dart';
import 'package:birdilimmutluluk/tatl%C4%B1lar/cikolatali-catlak-kurabiye.dart';
import 'package:birdilimmutluluk/tatl%C4%B1lar/donut2.dart';
import 'package:birdilimmutluluk/tatl%C4%B1lar/gercek-browni-tarifi.dart';
import 'package:birdilimmutluluk/tatl%C4%B1lar/kirmizi_kadife_kek.dart';
import 'package:birdilimmutluluk/tatl%C4%B1lar/limonlu-cheesecake-tarifi.dart';
import 'package:birdilimmutluluk/tatl%C4%B1lar/macaron.dart';
import 'package:birdilimmutluluk/tatl%C4%B1lar/mangolu-puding.dart';
import 'package:birdilimmutluluk/tatl%C4%B1lar/oreoludondurma.dart';
import 'package:birdilimmutluluk/tatl%C4%B1lar/pancake-tarifi.dart';
import 'package:flutter/material.dart';

class Search extends SearchDelegate {
  List<String> data = [
    "HARIKA DONUT TARIFI",
    "CAPPUCCINO CUPCAKE TARIFI",
    "CATLAK KURABIYE TARIFI",
    "KIRMIZI KADIFE KEK",
    "TEREYAGLI BROWNIE TARIFI",
    "KREM PEYNIR HAVUCLU KEK",
    "LIMONLU CHEESECAKE TARIFI",
    "MACARON TARIFI",
    "MANGOLU PUDING TARIFI",
    "MEYVELI RULO KEK",
    "OREO VANILYALI DONDURMA",
    "ORIJINAL CHEESECAKE TARIFI",
    "FLUFFY PANCAKE TARIFI",
    "SNICKERDOODLES KURABIYE",
  ];

  List<String> recentSearch = [
    "CAPPUCCİNO CUPCAKE TARİFİ",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => BackgroundImage())),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query != null && data.contains(query.toLowerCase())) {
      return ListTile(
        title: Text(query),
        onTap: () {},
      );
    } else if (query == "HARIKA DONUT TARIFI") {
      return ListTile(
        title: Text("HARİKA DONUT TARİFİ"),
        trailing: Icon(
          Icons.arrow_forward_ios,
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Donut2()));
        },
      );
    } else if (query == "CAPPUCCINO CUPCAKE TARIFI") {
      return ListTile(
        title: Text("CAPPUCCİNO CUPCAKE TARİFİ"),
        trailing: Icon(
          Icons.arrow_forward_ios,
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CappuccinoCupcake()));
        },
      );
    } else if (query == "CATLAK KURABIYE TARIFI") {
      return ListTile(
        title: Text("ÇATLAK KURABİYE TARİFİ"),
        trailing: Icon(
          Icons.arrow_forward_ios,
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CatlakCikolata()));
        },
      );
    } else if (query == "TEREYAGLI BROWNIE TARIFI") {
      return ListTile(
        title: Text("TEREYAĞLI BROWNİE TARİFİ"),
        trailing: Icon(
          Icons.arrow_forward_ios,
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Browni()));
        },
      );
    } else if (query == "KIRMIZI KADIFE KEK") {
      return ListTile(
        title: Text("KIRMIZI KADİFE KEK"),
        trailing: Icon(
          Icons.arrow_forward_ios,
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => KadifeKek()));
        },
      );
    } else if (query == "KREM PEYNIR HAVUCLU KEK") {
      return ListTile(
        title: Text("KREM PEYNİR HAVUÇLU KEK"),
        trailing: Icon(
          Icons.arrow_forward_ios,
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => KremPeynirli()));
        },
      );
    } else if (query == "LIMONLU CHEESECAKE TARIFI") {
      return ListTile(
        title: Text("LİMONLU CHEESECAKE TARİFİ"),
        trailing: Icon(
          Icons.arrow_forward_ios,
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => LimonluCheesecake()));
        },
      );
    } else if (query == "MACARON TARIFI") {
      return ListTile(
        title: Text("MACARON TARİFİ"),
        trailing: Icon(
          Icons.arrow_forward_ios,
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Macaron()));
        },
      );
    } else if (query == "MANGOLU PUDING TARIFI") {
      return ListTile(
        title: Text("MANGOLU PUDİNG TARİFİ"),
        trailing: Icon(
          Icons.arrow_forward_ios,
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MangoluPuding()));
        },
      );
    } else if (query == "MEYVELI RULO KEK") {
      return ListTile(
        title: Text("MEYVELİ RULO KEK"),
        trailing: Icon(
          Icons.arrow_forward_ios,
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MeyveliRulo()));
        },
      );
    } else if (query == "OREO VANILYALI DONDURMA") {
      return ListTile(
        title: Text("OREO VANİLYALI DONDURMA"),
        trailing: Icon(
          Icons.arrow_forward_ios,
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => OreoluDondurma()));
        },
      );
    } else if (query == "ORIJINAL CHEESECAKE TARIFI") {
      return ListTile(
        title: Text("ORİJİNAL CHEESECAKE TARİFİ"),
        trailing: Icon(
          Icons.arrow_forward_ios,
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => OrijinalCheesecake()));
        },
      );
    } else if (query == "FLUFFY PANCAKE TARIFI") {
      return ListTile(
        title: Text("FLUFFY PANCAKE TARİFİ"),
        trailing: Icon(
          Icons.arrow_forward_ios,
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Pancake()));
        },
      );
    } else if (query == "SNICKERDOODLES KURABIYE") {
      return ListTile(
        title: Text("SNİCKERDOODLES KURABİYE"),
        trailing: Icon(
          Icons.arrow_forward_ios,
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Snickerdoodle()));
        },
      );
    } else {
      return ListTile(
        title: Text("Sonuç bulunamadı"),
        onTap: () {},
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
        itemCount: recentSearch.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recentSearch[index]),
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CappuccinoCupcake()));
            },
          );
        });
  }
}
