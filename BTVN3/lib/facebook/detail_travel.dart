import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';

import '../data/service.dart';
import '../gen/assets.gen.dart';

@RoutePage()
class DetailTravelPage extends StatelessWidget {
  DetailTravelPage({Key? key}) : super(key: key);

  List<Service> listService = [
    Service(Assets.images.icPrice.path, 'from 90 \$'),
    Service(Assets.images.icDistance.path, '4 KM'),
    Service(Assets.images.icBreakfast.path, 'Full Board'),
    Service(Assets.images.icEnsurance.path, 'Insurance'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      Assets.images.icSalavatYulaev.path,
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                    InkWell(
                      onTap: () {
                        context.router.pop();
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 24, top: 24),
                        height: 32,
                        width: 32,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: SvgPicture.asset(Assets.images.icBack.path),
                      ),
                    ),
                    Positioned(
                      bottom: 24,
                      left: 24,
                      child: Container(
                        height: 44,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(255, 255, 255, 0.1),
                        ),
                        child: Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(left: 4, top: 4),
                                child:
                                    Image.asset(Assets.images.icPerson9.path)),
                            const Padding(
                              padding: EdgeInsets.only(left: 8, top: 6),
                              child: Column(
                                children: [
                                  Text('Azat Khabirov '),
                                  Text('Location guide')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 16,
                      child: SvgPicture.asset(Assets.images.icLiked.path),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                const Text(
                  'Shulgaт-Tash cave ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    color: Color.fromRGBO(36, 36, 36, 1),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: ReadMoreText(
                        'A truly amazing example of the creation of nature, the Kapova cave with cave paintings of ancient people with...withwithwithwithwithwithwithwithwithwithwithwithwith',
                        trimLines: 3,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: '\nRead more',
                        trimExpandedText: '\nLess',
                        lessStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color.fromRGBO(255, 103, 139, 1),
                        ),
                        moreStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color.fromRGBO(255, 103, 139, 1),
                        ),
                      ),
                    ),
                    Expanded(flex: 2, child: SizedBox())
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                _buildListService(),
                const SizedBox(
                  height: 22,
                ),
                _buildButton(),
                const SizedBox(
                  height: 36,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildListService() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(listService.length, (index) {
          return Container(
            margin: const EdgeInsets.only(right: 12),
            height: 92,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color.fromRGBO(248, 248, 248, 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(listService[index].iconUrl),
                const SizedBox(
                  height: 12,
                ),
                Text(listService[index].title),
              ],
            ),
          );
        }),
      ),
    );
  }

  _buildButton() {
    return SizedBox(
      width: double.infinity,
      height: 64,
      child: ElevatedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(255, 103, 139, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Buy a tour',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            SvgPicture.asset(Assets.images.icArrow.path),
          ],
        ),
      ),
    );
  }
}
