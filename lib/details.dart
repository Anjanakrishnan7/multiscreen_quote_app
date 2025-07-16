import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiscreen_quote_app/model.dart';
class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final Quote details=ModalRoute.of(context)!.settings.arguments as Quote;
    return Scaffold(
      body: Center(
        child: Container(width: 450,height: 450,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.white,Colors.blue])
          ),
          child: Column(
            children: [
              Text("${details.quote}",style: GoogleFonts.nunitoSans(fontSize: 40),),
              Text("${details.author}",style: GoogleFonts.aboreto(fontSize: 20),),

            ]
          ),
        ),
      ),
    );
  }
}
