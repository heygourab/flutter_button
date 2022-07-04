import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final outlinedButtonStyle = OutlinedButton.styleFrom(
      primary: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      side: const BorderSide(color: Colors.grey, width: 2),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      textStyle: GoogleFonts.poppins(
        fontSize: 15,
        letterSpacing: 0.2,
        fontWeight: FontWeight.w500,
      ),
    );

    final elevatedButtonStyle = ElevatedButton.styleFrom(
      primary: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 18),
      shadowColor: Colors.transparent,
      textStyle: GoogleFonts.poppins(
        fontSize: 17,
        letterSpacing: 0.2,
        fontWeight: FontWeight.w500,
      ),
    );

    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: 'Item added to your cart successfully.');
                },
                style: outlinedButtonStyle,
                child: Row(
                  children: const [
                    Icon(FontAwesomeIcons.bagShopping),
                    SizedBox(width: 8),
                    Text('Add To Cart')
                  ],
                ),
              ),
              ElevatedButton(
                style: elevatedButtonStyle,
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: 'Thank you for shopping with us!');
                },
                child: const Text('Buy Now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
