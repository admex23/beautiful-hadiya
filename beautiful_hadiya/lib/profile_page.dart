import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Profilepage extends StatelessWidget {
  // const Profilepage({super.key});
  final List<String> imgList = [
    "images/haddiya1.jpg",
    "images/haddiya2.jpg",
    "images/haddiya3.jpg",
    "images/haddiya4.jpg",
    "images/haddiya5.jpg",
    "images/haddiya6.jpg",
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
                                image: AssetImage(widget.images[i]),
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
