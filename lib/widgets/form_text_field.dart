import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({super.key, required this.text, required this.hintText});

  final String text;
  final String hintText;

  @override

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: GoogleFonts.inter(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey[500],
            ),
            filled: true,
            fillColor: Colors.grey[100],
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(
                width: 2.5,
                color: Colors.grey
              ),
            ), 
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue[800]!,
                width: 3
              ),
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.remove_red_eye),
              color: Colors.grey[600],
              iconSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}