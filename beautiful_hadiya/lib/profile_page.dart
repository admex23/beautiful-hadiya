import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Profilepage extends StatelessWidget {
  // const Profilepage({super.key});
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    List<int> ans = [];
    int la = imgList.length;
    for (int i = 0; i < la; i += 1) {
      ans.add(i);
    }
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          CrouselSliderAnimation(
            ans: ans,
            images: imgList,
          ),
        ],
      ),
    );
  }
}

class CrouselSliderAnimation extends StatefulWidget {
  const CrouselSliderAnimation({
    Key? key,
    required this.ans,
    required this.images,
  }) : super(key: key);

  final List<int> ans;
  final List<dynamic> images;

  @override
  State<CrouselSliderAnimation> createState() => _CrouselSliderAnimationState();
}

class _CrouselSliderAnimationState extends State<CrouselSliderAnimation> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400,
          width: 400,
          child: CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              enableInfiniteScroll: true,
              autoPlay: false,
              autoPlayCurve: Curves.fastOutSlowIn,
              onPageChanged: ((index, reason) {
                setState(() {
                  activeIndex = index;
                });
              }),
              height: 400,
            ),
            items: widget.ans.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    width: 400,
                    height: 400,
                    decoration: const BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(15)),
                    ),
                    child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(15)),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(widget.images[i]),
                                fit: BoxFit.cover),
                          ),
                        )),
                  );
                },
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 10),
        Center(
          child: AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: widget.images.length,
            effect: const ExpandingDotsEffect(
              dotWidth: 7,
              dotHeight: 7,
            ),
          ),
        ),
      ],
    );
  }
}
