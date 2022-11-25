import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:mobile_exam/app/ui/widgets/auction.item.tile.dart';
import 'package:mobile_exam/app/ui/widgets/nft.app.bar.dart';
import 'package:mobile_exam/model/auction.dart';
import 'package:mobile_exam/utils/constants.dart';
import 'package:mobile_exam/utils/extensions.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _categories = [
    'Trending',
    'Digital Arts',
    '3D Videos',
    'Games',
    'Collectibles'
  ];

  // Reverse the list
  final _auctions = kSampleAuctions.reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          const NFTAppBar(
              leading: 'A.',
              trailing: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  kNFTIcon,
                ),
              ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.07,
              ),
              const Text(
                'Live',
                style: TextStyle(
                  fontSize: 15,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.07,
              ),
              Stack(
                children: [
                  Positioned(
                    left: 55,
                    top: 0,
                    bottom: 15,
                    child: Container(
                      height: 30,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: kNFTColorRandom,
                      ),
                    ),
                  ),
                  const Text(
                    'Auctions.',
                    style: TextStyle(
                      fontSize: 25,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.55,
              ),
              const Icon(
                  TablerIcons.adjustments_horizontal,
                color: kPrimaryColor,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.07,
              ),
              const Text(
                  'Enjoy the latest hot auctions',
                style: TextStyle(
                  color: kPrimaryTextColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),

          // list of categories
          // we will use a list view that scrolls horizontally
          SizedBox(
            // using 40 because the height of the text and the spacing <= 40
            height: 40,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20),

                /// change scroll direction, but this requires that we make
                /// our list constrained vertically in terms of the height
                scrollDirection: Axis.horizontal,

                /// allow it to shrink to the size of it content
                shrinkWrap: true,

                /// animate the list specially too
                itemBuilder: (context, index) =>
                    AnimationConfiguration.staggeredList(
                      duration: const Duration(milliseconds: 1200),
                      position: index,
                      child: SlideAnimation(
                        horizontalOffset: 100,
                        child: FadeInAnimation(
                          child: Container(
                            decoration: BoxDecoration(
                              // only set the first item to be active
                              color: index == 0
                                  ? context.colorScheme.onBackground
                                  : context.colorScheme.background,

                              // small curvature at the edges of the container
                              borderRadius: BorderRadius.circular(40),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            // get the text at the selected index in the categories list
                            child: Text(
                              _categories[index],
                              style:
                              context.theme.textTheme.subtitle1?.copyWith(
                                /// invert the colors
                                color: index == 0
                                    ? context.colorScheme.background
                                    : context.colorScheme.onBackground,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                // set some spacing between the individual children
                separatorBuilder: (context, index) => SizedBox(width: 16),

                /// show as many itens as there are in the category
                itemCount: _categories.length),
          ),

          /// actual NFTs
          /// since it is in an [Expanded], we don't need to constrain it vertically
          /// because it is already filling up the remaining space
          ///
          Expanded(
            child: ListView.separated(
              padding:
              const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,

              /// let's extract this into a standalone widget to keep our page cleaned
              itemBuilder: (context, index) =>
                  AnimationConfiguration.staggeredList(
                    position: index,
                    // shorter duration
                    duration: const Duration(milliseconds: 550),
                    child: SlideAnimation(
                      /// let's make the list static through the animation with keys,
                      key: ValueKey(index),
                      horizontalOffset: 150,
                      child: FadeInAnimation(
                        child: AuctionItemTile(auction: _auctions[index]),
                      ),
                    ),
                  ),

              // set some spacing between the individual children
              separatorBuilder: (context, index) => SizedBox(width: 24),

              /// show as many itens as there are in the auction
              itemCount: _auctions.length,
            ),
          ),
        ],
      ),
    );
  }
}
