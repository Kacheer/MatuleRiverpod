import 'dart:math';

import 'package:app/src/features/main/presentation/widgets/banners.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui/components/chip/chips_list.dart';
import 'package:ui/components/input/beautiful_input.dart';
import 'package:ui/components/input/input.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final List<String> list = ["Все", "Мужчинам", "Женщинам"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            top: true,
            bottom: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomInput(hintText: "Искать описание")),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 32, 20, 16),
                  child: Text(
                    "Акции и новости",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF939396)),
                  ),
                ),
                Banners(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 32, 20, 16),
                  child: Text(
                    "Каталог описаний",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF939396)
                      ),
                  ),
                ),
                ChipsList(categories: list,)
              ],
            )
          )
        );
  }
}
