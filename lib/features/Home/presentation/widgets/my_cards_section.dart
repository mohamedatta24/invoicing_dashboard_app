import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/dots_indicator.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/my_cards_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      setState(() {
        currentIndex = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "My Card",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20.0,
            color: Color(0xff064061),
          ),
        ),
        const SizedBox(height: 20.0),
        MyCardsPageView(controller: pageController),
        const SizedBox(height: 16.0),
        DotsIndicator(currentIndex: currentIndex),
      ],
    );
  }
}
