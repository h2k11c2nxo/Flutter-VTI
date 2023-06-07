import 'dart:ui';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../app_router/app_router.dart';
import '../data/category.dart';
import '../data/popular.dart';
import '../gen/assets.gen.dart';

@RoutePage()
class TravelBlogPage extends StatelessWidget {
  TravelBlogPage({Key? key}) : super(key: key);

  List<Category> listCategory = [
    Category(Assets.images.icStar.path, 'Top 30 places'),
    Category(Assets.images.icNature.path, 'Nature'),
    Category(Assets.images.icFood.path, 'Food'),
    Category(Assets.images.icStar.path, 'Top 30 places'),
    Category(Assets.images.icNature.path, 'Nature'),
    Category(Assets.images.icFood.path, 'Food'),
    Category(Assets.images.icStar.path, 'Top 30 places'),
    Category(Assets.images.icNature.path, 'Nature'),
    Category(Assets.images.icFood.path, 'Food'),
    Category(Assets.images.icStar.path, 'Top 30 places'),
    Category(Assets.images.icNature.path, 'Nature'),
    Category(Assets.images.icFood.path, 'Food'),
  ];

  List<Popular> listPopular = [
    Popular(
      Assets.images.icSalavatYulaev.path,
      Assets.images.icLiked.path,
      'Monument to Salavat Yulaev ',
      4.9,
    ),
    Popular(
      Assets.images.icSalavatYulaev.path,
      Assets.images.icLiked.path,
      'Monument to Salavat Yulaev ',
      2.9,
    ),
    Popular(
      Assets.images.icSalavatYulaev.path,
      Assets.images.icLiked.path,
      'Monument to Salavat Yulaev ',
      3.9,
    ),
    Popular(
      Assets.images.icSalavatYulaev.path,
      Assets.images.icLiked.path,
      'Monument to Salavat Yulaev ',
      4.9,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Bashkortostan',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 34,
                        color: Color.fromRGBO(36, 36, 36, 1),
                      ),
                    ),
                  ),
                  SvgPicture.asset(Assets.images.icMap.path),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Choose another',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromRGBO(36, 36, 36, 1),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromRGBO(248, 248, 248, 1),
                    suffixIcon: SvgPicture.asset(
                      Assets.images.icSearch.path,
                    ),
                    suffixIconConstraints: const BoxConstraints(
                      minHeight: 24,
                      minWidth: 24,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(248, 248, 248, 1),
                      ),
                    ),
                    hintText: 'Enter name or category '),
              ),
              const SizedBox(
                height: 28,
              ),
              const Text(
                'Category',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(36, 36, 36, 1),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              _buildCategory(),
              const SizedBox(
                height: 28,
              ),
              _buildPopular(),
            ],
          ),
        ),
      ),
    ));
  }

  Widget _buildCategory() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          listCategory.length,
          (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Container(
                height: 52,
                width: 164,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(248, 248, 248, 1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    SvgPicture.asset(listCategory[index].iconUrl),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      listCategory[index].title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildPopular() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          listCategory.length,
          (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Container(
                height: 280,
                width: 212,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Stack(
                  children: [
                    Image.asset(Assets.images.icSalavatYulaev.path),
                    Container(
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.only(right: 16, top: 16),
                      child: SvgPicture.asset(Assets.images.icLiked.path),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24, top: 183),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Monument to Salavat Yulaev ',
                            softWrap: true,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            height: 23,
                            width: 53,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 0.1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 7,
                                ),
                                SvgPicture.asset(
                                  Assets.images.icRate.path,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
