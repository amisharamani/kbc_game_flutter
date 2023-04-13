import 'package:flutter/material.dart';
import 'package:p_4_kbc/screens/global.dart';
class Wonpage extends StatefulWidget {
  const Wonpage({Key? key}) : super(key: key);
  @override
  State<Wonpage> createState() => _WonpageState();
}
class _WonpageState extends State<Wonpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            const Spacer(),
        SizedBox(
          height: 200,
          width: 200,
          child:
          Image.network("https://www.shutterstock.com/image-vector/win-sign-colour-confetti-vector-260nw-322012643.jpg"),
          ),
          const Text(
            "Your Answer is Correct ",
            style: TextStyle(color: Color(0xff76323e), fontSize: 25),
          ),
          const SizedBox(height: 50),
          Text(
            "You Won\n ₹${Global.wonPrice}",
            style: const TextStyle(color: Color(0xffc78640), fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
                onPressed: () {
                  Global.initialQuestion++;
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/', (route) => false);
                  if (Global.allQuestions.length == Global.initialQuestion) {
                    Navigator.of(context).pushNamed('score_page');
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white.withOpacity(0.2),
                  onPrimary: Colors.white.withOpacity(0.8),
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 20),
                )),
          ),
          const Spacer(
            flex: 2,
          ),
          ],
        ),
      ),
    );
  }
}
