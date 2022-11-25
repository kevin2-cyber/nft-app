

// [Auction] tile: as shown on the home page
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:mobile_exam/app/ui/details.dart';
import 'package:mobile_exam/utils/extensions.dart';

import '../../../model/auction.dart';

class AuctionItemTile extends StatelessWidget {
  final Auction auction;
  const AuctionItemTile({super.key, required this.auction});

  @override

  /// Gesture detector to navigate through to the action description or
  /// navigate to the details page when tapped
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Details(auction: auction),
      ),
    ),
    child: Container(
      /// fill 80% of the display width
      width: context.width * 0.8,
      decoration: BoxDecoration(
        border: Border.all(color: context.theme.disabledColor),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),

      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// tag & icon
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(TablerIcons.brand_sentry),
                  SizedBox(width: 12),
                  Text(
                    auction.tag,
                    style: context.theme.textTheme.subtitle1?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              /// Artist information
              Text(
                '@${auction.artist}',
                style: context.theme.textTheme.subtitle1?.copyWith(
                  color: context.colorScheme.onBackground.withOpacity(0.67),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),

          // NFT Image
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: context.theme.disabledColor.withOpacity(0.1),
              ),

              // add shared element transition.
              // image transitions to next page
              child: Hero(
                tag: auction.image,
                child: CachedNetworkImage(
                  imageUrl: auction.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          SizedBox(height: 16),

          /// bottom section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Remaining time stats
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '20h: 35min: 08s',
                    style: context.theme.textTheme.subtitle1
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Remaining Time',
                    style: context.theme.textTheme.subtitle2?.copyWith(
                      color: context.colorScheme.onBackground
                          .withOpacity(0.67),
                    ),
                  ),
                ],
              ),

              /// Highest bid stats
              Column(
                mainAxisSize: MainAxisSize.min,

                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    /// multiply by some random value and set
                    /// to 2 decimal places
                    '${(auction.bid * 1.58).toStringAsFixed(2)}H ETH',
                    style: context.theme.textTheme.subtitle1
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Higher bid',
                    style: context.theme.textTheme.subtitle2?.copyWith(
                      color: context.colorScheme.onBackground
                          .withOpacity(0.67),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}