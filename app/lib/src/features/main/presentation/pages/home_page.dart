import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui/components/input/beautiful_input.dart';
import 'package:ui/components/input/input.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
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
                  child: CustomInput(hintText:  "Искать описание")
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text("Акции и новости"),
                ),
                SizedBox(
                  height: 152,
                  child: PageView(
                    padEnds: false,
                    controller: PageController(
                        viewportFraction:
                            0.85),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20,
                            right: 16),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                              child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        width: 150,
                                        child: Flexible(
                                          child: Text(
                                            'Шорты Вторник',
                                            style: TextStyle(fontSize: 20),
                                            maxLines: 2,
                                            overflow: TextOverflow.clip,
                                          ),
                                        )),
                                    Text('4000 ₽'),
                                  ],
                                ),
                                Spacer(),
                                Icon(Icons.discount_rounded),
                              ],
                            ),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:
                              const Center(child: Text('Рубашка Воскресенье')),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("Каталог описаний"),
                ),
              ],
            )));
  }
}
