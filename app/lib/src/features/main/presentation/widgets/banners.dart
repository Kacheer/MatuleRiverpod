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
        controller: PageController(viewportFraction: 0.85),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF48C1D8),
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(colors: [
                  Color(0xFF97D9F0),
                  Color(0xFF92E9D4)
                ])
              ),
              child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Шорты\nВторник',
                            style: AppFonts.title2Heavy
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            '4000 ₽',
                            style: AppFonts.title2Heavy
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      )
                    ),
                    Image(image:  AssetImage('assets/images/covid-vaccine.png'), width: 150, height: 150)
                  ],
                ),
              ),
            ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF48C1D8),
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(colors: [
                  Color(0xFF97D9F0),
                  Color(0xFF92E9D4)
                ])
              ),
              child: Row(
                  children: [
                    SizedBox(
                      width: 150,
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Рубашка\nВоскресенье',
                            style: AppFonts.title2Heavy
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            '4000 ₽',
                            style: AppFonts.title2Heavy
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      )
                    ),
                    Image(image:  AssetImage('assets/images/shirt.png'), width: 200, height: 200, fit: BoxFit.fitHeight)
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
