import 'package:flutter/material.dart';
import 'package:p_4_kbc/screens/global.dart';
import 'package:p_4_kbc/screens/lost_page.dart';
import 'dart:math';
import 'package:p_4_kbc/screens/score_page.dart';
import 'package:p_4_kbc/screens/won_page.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Homepage(),
        'score_page': (context) => const Scorepage(),
        'lost_page' : (context) => const Lostpage(),
        'won_page' : (context) => const Wonpage(),
      },
    ),
  );
}
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  Random random = Random();
  int randomColor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("QUIZ APP 🤔",style: TextStyle(fontSize: 20,fontWeight:
        FontWeight.bold,color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          IndexedStack(
            index: Global.initialQuestion,
            children: Global.allQuestions
                .map((e) => Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 250,
                  decoration: BoxDecoration(
                    color: Global.color,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "${e['question']}",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            final Random random = Random();
                            final randomColor = random.nextInt(1000);
                            Global.color = Color.fromRGBO(
                                255, randomColor, 164, 1);
                            if (e['response'] == "A") {
                              Global.wonPrice =
                                  Global.wonPrice + Global.wonPrice;
                              Navigator.of(context)
                                  .pushNamed('won_page');
                            } else {
                              Navigator.of(context)
                                  .pushNamed('lost_page');
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white.withOpacity(0.2),
                          onPrimary: Colors.white.withOpacity(0.8),
                        ),
                        child: Text(
                          "${e['choice 1']}",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            final Random random = Random();
                            final randomColor = random.nextInt(1000);
                            Global.color =
                                Color.fromRGBO(200, randomColor, 45, 1);
                            if (e['response'] == "B") {
                              Global.wonPrice =
                                  Global.wonPrice + Global.wonPrice;
                              Navigator.of(context)
                                  .pushNamed('won_page');
                            } else {
                              Navigator.of(context)
                                  .pushNamed('lost_page');
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white.withOpacity(0.2),
                          onPrimary: Colors.white.withOpacity(0.8),
                        ),
                        child: Text(
                          "${e['choice 2']}",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            final Random random = Random();
                            final randomColor = random.nextInt(700);
                            Global.color =
                                Color.fromRGBO(200, randomColor, 78, 1);
                            if (e['response'] == "C") {
                              Global.wonPrice =
                                  Global.wonPrice + Global.wonPrice;
                              Navigator.of(context)
                                  .pushNamed('won_page');
                            } else {
                              Navigator.of(context)
                                  .pushNamed('lost_page');
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white.withOpacity(0.2),
                          onPrimary: Colors.white.withOpacity(0.8),
                        ),
                        child: Text(
                          "${e['choice 3']}",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            final Random random = Random();
                            final randomColor = random.nextInt(500);
                            Global.color =
                                Color.fromRGBO(200, randomColor, 98, 1);
                            if (e['response'] == "D") {
                              Global.wonPrice =
                                  Global.wonPrice + Global.wonPrice;
                              Navigator.of(context)
                                  .pushNamed('won_page');
                            } else {
                              Navigator.of(context)
                                  .pushNamed('lost_page');
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white.withOpacity(0.2),
                          onPrimary: Colors.white.withOpacity(0.8),
                        ),
                        child: Text(
                          "${e['choice 4']}",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
