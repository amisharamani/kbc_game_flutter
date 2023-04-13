import 'package:flutter/material.dart';
import 'package:p_4_kbc/screens/global.dart';
class Scorepage extends StatefulWidget {
  const Scorepage({Key? key}) : super(key: key);
  @override
  State<Scorepage> createState() => _ScorepageState();
}
class _ScorepageState extends State<Scorepage> {
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
          Image.network("http://purepng.com/public/uploads/large/purepng.com-mickey-mouse-happymickey-mousemickeymouseanimal-cartooncharacterwalt-disneyub-iwerksstudioslarge-yellow-shoered-shortswhite-gloves-1701528648830wwrcw.png"),
          ),
          const SizedBox(height: 40),
          Text(
            "Congratulations!! \n\nYou Won\n ₹${Global.wonPrice}",
            style: const TextStyle(color: Colors.white, fontSize: 25),
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
            label: const Text("Restart",
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
