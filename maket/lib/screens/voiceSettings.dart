import 'package:audio_wave/audio_wave.dart';
import 'package:flutter/material.dart';
import 'package:maket/components/dropDownMenu.dart';
import 'package:maket/components/raisedButtonCard.dart';
import 'package:maket/components/sideBarMenu.dart';
import 'package:maket/components/sliderThemeContext.dart';
import 'package:maket/components/textTitle.dart';
import 'package:maket/constants.dart';
import 'package:getwidget/getwidget.dart';

class VoiceSettings extends StatefulWidget {
  @override
  _VoiceSettingsState createState() => _VoiceSettingsState();
}

class _VoiceSettingsState extends State<VoiceSettings> {
  String initialDropdownValue1 = 'External Mic (Realtek(R) Audio)';
  String initialDropdownValue2 = 'Realtek HD Audio 2nd output (Realtek(R)';
  final dropdownItems1= [
    'External Mic (Realtek(R) Audio)',
    'temp',
  ];
  final dropdownItems2= [
    'Realtek HD Audio 2nd output (Realtek(R)' ,
    'temp',
    ];

  double slider1 = 90.0;
  double slider2 = 50.0;
  bool isSwitched = false;
  final padding = EdgeInsets.symmetric(horizontal: 20, vertical: 10);

  bool checkedValue1 = true;
  bool checkedValue2 = false;
  bool inputState1 = false;
  bool inputState2 = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kmainColor,
      drawer: SideBarMenu(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kmainColor,
        title: Text(
          'Настройки голоса'.toUpperCase(),
          style: TextStyle(
            color:Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 20
              ),
              TextTitleStyle('Устройство ввода'),
              DropDownMenu(
                initialValue: initialDropdownValue1,
                listItems: dropdownItems1,
                  press: (String value){
                    setState(() {
                      initialDropdownValue1 = value;
                    });
                  }
              ),
              SizedBox(
                  height: 10
              ),
              TextTitleStyle('Устройство вывода'),
              DropDownMenu(
                initialValue: initialDropdownValue2,
                listItems: dropdownItems2,
                press: (String value){
                  setState(() {
                    initialDropdownValue2 = value;
                  });
                }
              ),
              SizedBox(
                  height: 10
              ),
              TextTitleStyle('Громкость микрофона'),
              SliderThemeContext(
                initialValue: slider1,
                press: (dynamic newValue){
                  setState(() {
                    slider1 = newValue;
                  });
                }
              ),
              TextTitleStyle('Громкость звука'),
              SliderThemeContext(
                initialValue: slider2,
                  press: (dynamic newValue){
                    setState(() {
                      slider2 = newValue;
                    });
                  }
              ),
              TextTitleStyle('проверка микрофона'),
              const Padding(
                padding: EdgeInsets.symmetric (horizontal: 20, vertical: 10),
                child: Text(
                  'Проблема с микрофоном? Начните проверку и скажите какую-нибудь ерунду - мы тут же её воспроизведём.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: padding,
                child: Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: kblue,
                        ),
                        onPressed: (){},
                        child: const Text(
                          'Давайте пр...',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),
                        )
                    ),
                    SizedBox(width: 15),
                    AudioWave(
                      animationLoop: 1,
                      width: size.width * 0.5,
                      bars: [
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                        AudioWaveBar(height: 30, color: Colors.grey[400]),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: padding,
                child: GestureDetector(
                  child: Text.rich(
                    TextSpan(
                      text: 'Need help with voice or video? Check out our ',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: 'troubleshooting guide',
                          style: TextStyle(
                            color: Colors.tealAccent[700],
                            fontSize: 16,
                          ),
                        ),
                        TextSpan(
                          text: '.',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              TextTitleStyle('режим ввода'),
              RaisedButtonContext(
                text: 'Активация по голосу',
                color: inputState1 ? kblue : ksideBarColor,
                press: (){
                  setState(() {
                    inputState1 = !inputState1;
                  });
                },
                value: inputState1,
                pressCheckBox: (newValue){
                  setState(() {
                    inputState1 = newValue;
                  });
                },
              ),
              RaisedButtonContext(
                text: "Режим рации",
                color: inputState2 ? kblue : ksideBarColor,
                press: (){
                  setState(() {
                    inputState2 = !inputState2;
                  });
                },
                value: inputState2,
                pressCheckBox: (newValue){
                  setState(() {
                    inputState2 = newValue;
                  });
                },
              ),
              SizedBox(height: 10),
              TextTitleStyle('чувствительность ввода'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.7,
                    padding: padding,
                    child: Text(
                      'Автоматически определять чувствительность микрофона.',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: padding,
                    child:
                    GFToggle(
                      onChanged: (val){
    setState(() {
          isSwitched = val;
        });
                      },
                      value: isSwitched,
                      enabledTrackColor: kblue,
                      enabledThumbColor:Colors.white,
                      type: GFToggleType.ios,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
