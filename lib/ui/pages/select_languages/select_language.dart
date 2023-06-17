import 'package:flutter/material.dart';
import 'package:foody/generated/assets.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({super.key});

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  int selectedLanguageIndex = -1;

  //list of languages String
  List<String> languages = ['English', 'عربی', 'Spanish'];

  //List of Logo Language
  List logoLanguage = [
    Assets.imagesEnglish,
    Assets.imagesArabic,
    Assets.imagesSpanish
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Center(
                      child: SizedBox(
                          height: 80, child: Image.asset(Assets.imagesLogo))),
                  Spacer(),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Select Language",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)
                        ),
                      )
                    ],
                  ),
                ],
              )),
          Expanded(
            flex: 6,
            child: GridView.builder(
              itemCount: languages.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedLanguageIndex = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      width: 2, color: Colors.black)),
                              child: SizedBox(
                                  height: 40,
                                  child: Image.asset(logoLanguage[index]))),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Text(
                              languages[index],
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: selectedLanguageIndex == index
                              ? Padding(
                                  padding: EdgeInsets.all(15),
                                  child: SizedBox(
                                      height: 25,
                                      child: Image.asset(
                                        Assets.imagesChecked,
                                        color: Colors.deepOrange,
                                      )),
                                )
                              : SizedBox(),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "*You can change language later from menu bar",
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(width, 50),
                      ),
                      child: Text(
                        "Save",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
