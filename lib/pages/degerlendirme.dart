import 'package:birdilimmutluluk/pages/BackgroundImage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Degerlendirme extends StatefulWidget {
  @override
  _Degerlendirme createState() => _Degerlendirme();
}

class _Degerlendirme extends State<Degerlendirme> {
  var myFeedbackText = "DAHA İYİ OLABİLİR";
  var sliderValue = 0.0;
  IconData myFeedback = FontAwesomeIcons.sadTear;
  Color myFeedbackColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/login.jpg'),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
        ),
      ),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
          Material(
            color: Colors.black26,
            elevation: 14.0,
            borderRadius: BorderRadius.circular(24.0),
            shadowColor: Colors.black12,
            child: Container(
                width: 350.0,
                height: 320.0,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: Text(
                        myFeedbackText,
                        style: TextStyle(color: Colors.black, fontSize: 22.0),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: Icon(
                        myFeedback,
                        color: myFeedbackColor,
                        size: 90.0,
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: Slider(
                          min: 0.0,
                          max: 10.0,
                          divisions: 5,
                          value: sliderValue,
                          activeColor: Colors.black54,
                          inactiveColor: Colors.black12,
                          onChanged: (newValue) {
                            setState(() {
                              sliderValue = newValue;
                              if (sliderValue >= 0.0 && sliderValue <= 2.0) {
                                myFeedback = FontAwesomeIcons.sadTear;
                                myFeedbackColor = Colors.red;
                                myFeedbackText = "DAHA İYİ OLABİLİR";
                              }
                              if (sliderValue >= 2.1 && sliderValue <= 4.0) {
                                myFeedback = FontAwesomeIcons.frown;
                                myFeedbackColor = Colors.yellow;
                                myFeedbackText = "ORTALAMANIN ALTINDA";
                              }
                              if (sliderValue >= 4.1 && sliderValue <= 6.0) {
                                myFeedback = FontAwesomeIcons.meh;
                                myFeedbackColor = Colors.amber;
                                myFeedbackText = "NORMAL";
                              }
                              if (sliderValue >= 6.1 && sliderValue <= 8.0) {
                                myFeedback = FontAwesomeIcons.smile;
                                myFeedbackColor = Colors.green;
                                myFeedbackText = "İYİ";
                              }
                              if (sliderValue >= 8.1 && sliderValue <= 10.0) {
                                myFeedback = FontAwesomeIcons.laugh;
                                myFeedbackColor = Colors.pink;
                                myFeedbackText = "MÜKEMMEL";
                              }
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: Align(
                        alignment: Alignment.center,
                        child: TextButton(
                          child: Text(
                            'KAYDET',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BackgroundImage()),
                            );
                          },
                        ),
                      )),
                    ),
                  ],
                )),
          ),
        ]),
      ),
    );
  }
}
