import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BarraSuperiorSet extends AppBar {
  BarraSuperiorSet({super.key});

  @override
  Widget? get title => Text(
        "Configurar umidade do solo",
        style: GoogleFonts.nunito(
            textStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                letterSpacing: 0.5,
                wordSpacing: 1)),
      );
  @override
  Color? get backgroundColor => const Color.fromRGBO(0, 194, 203, 1);
  @override
  Color? get foregroundColor => Colors.white;
}
