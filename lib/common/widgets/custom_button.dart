import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/state/s1.dart';

class CustomButton extends ConsumerWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        // ボタンを押した時のアクションをここに書きます。
        final S1Notifier notifier = ref.read(s1NotifierProvider.notifier);
        notifier.updateState();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF8B4513), // ボタンの背景色
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Text(
        'ランクマッチ',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.rampartOne().fontFamily,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
