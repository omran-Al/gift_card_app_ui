import 'package:flutter/material.dart';
import 'package:gift_card_app_ui/gen/colors.gen.dart';
import 'package:gift_card_app_ui/models/card_model.dart';
import 'package:gift_card_app_ui/utilities/contect.dart';
import 'package:gift_card_app_ui/utilities/app_text.dart';
import 'package:gift_card_app_ui/widgets/custom_barNav.dart';

import '../../widgets/custom_clip.dart';
import '../../widgets/custom_gift.dart';

class MainScreen extends StatelessWidget {
  const MainScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: AppText.title(
            'Gift Card',
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 15),
            _searchCard(),
            SizedBox(height: 15),
            _CategoryFilters(),
            SizedBox(height: 15),
            _CardGird(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavBar(index: 0),
    );
  }
}

class _CategoryFilters extends StatelessWidget {
  const _CategoryFilters({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          ...CardCategory.values.map((category) => CustomClip(
                name: category.captialName(),
              ))
        ],
      ),
    );
  }
}

class _CardGird extends StatelessWidget {
  const _CardGird({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.60,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 19,
          mainAxisExtent: 200,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Center(
            child: CustomGiftCard(
              cardModel: CardModel.sampleCard[0],
              width: MediaQuery.of(context).size.width * 0.425,
            ),
          );
        },
      ),
    );
  }
}

class _searchCard extends StatelessWidget {
  const _searchCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Search card',
          filled: true,
          fillColor: ColorName.lightGrey,
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none,
          ),
        ),
        onChanged: (value) {},
      ),
    );
  }
}
