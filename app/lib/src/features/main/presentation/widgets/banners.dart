import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui/components/input/input.dart';
import 'package:ui/ui.dart';

class Banners extends ConsumerStatefulWidget {
  const Banners({super.key});

  @override
  ConsumerState<Banners> createState() => _BannersState();
}

class _BannersState extends ConsumerState<Banners> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 152,
      child: PageView(
        padEnds: false,
        controller: PageController(
            viewportFraction: 0.85),
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 20, right: 16),
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
                                style: AppFonts.title2Heavy,
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
              child: const Center(child: Text('Рубашка Воскресенье')),
            ),
          ),
        ],
      ),
    );
  }
}
