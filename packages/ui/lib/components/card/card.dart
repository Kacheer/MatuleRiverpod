import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui/components/chip/chips_provider.dart';
import 'package:ui/ui.dart';
import '../../src/colors.dart';

class Card extends ConsumerWidget{
  final List<String> categories;

  const Card({super.key, required this.categories});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 335,
      height: 136,
      color:Color(0xFF000000),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Expanded(
          child: Column(
            children: [
              Text("Рубашка Воскресенье для машинного вязания", 
              style: AppFonts.headlineMedium.copyWith(color: Color(0xFF000000)),),
              Row(
                children: [
                  Column(
                    children: [
                      Text("Мужская одежда"), 
                      // Мне ещё шрифты надо написать, но я возьму из прошлого проектаэ. Но я наглый, я ещё и кнопки спизжу
                      Text("300 ₽"),
                    ],
                  ),
                  // Тут кнопка должна быть
                ],
              )
            ],
          ) ),
      ),
    );
  }
}