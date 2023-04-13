import 'package:flutter/material.dart';
import 'package:p_4_kbc/screens/global.dart';
class Lostpage extends StatefulWidget {
  const Lostpage({Key? key}) : super(key: key);
  @override
  State<Lostpage> createState() => _LostpageState();
}
class _LostpageState extends State<Lostpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SizedBox(
          height: 200,
          width: 200,
          child:
          Image.network("https://e1.pngegg.com/pngimages/621/46/png-clipart-yellow-loser-text-thumbnail.png"),
          ),
          const SizedBox(height: 40),
          const Text(
            "oops! \n\n Sorry, You Lost the Game :(",
            style: TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 100),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              primary: Colors.white.withOpacity(0.2),
              onPrimary: Colors.white.withOpacity(0.8),
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {
              setState(() {
                Global.initialQuestion = 0;
                Global.wonPrice = 500;
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/', (route) => false);
              });
            },
            icon: const Icon(
              Icons.refresh,
              size: 40,
              color: Colors.white,
            ),
            label: const Text("Try Again",
                style: TextStyle(
                  fontSize: 25,
                )),
          )
          ],
        ),
      ),
    );
  }
}
