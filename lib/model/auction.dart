
// data model for auction
import 'dart:math';

import 'package:mobile_exam/utils/constants.dart';

class Auction {
  final String tag;
  final String image;
  final String artist;
  final String avatar;
  final String description;
  final double bid;
  final DateTime expiration;

  Auction({
    required this.tag,
    required this.image,
    required this.artist,
    required this.avatar,
    required this.description,
    required this.bid,
    required this.expiration,
  });
}

const _kDummyText =
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
    ' Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
    ' when an unknown printer took a galley of type and scrambled it to make a type specimen book.';

// sample data
final kSampleAuctions = <Auction> [
  Auction(
    tag: 'Day ${Random().nextInt(100)}',
    image: kNFTImageX,
    artist: 'Jeremy Schneider',
    avatar: kNFTIcon,
    description: _kDummyText,
    bid: Random().nextInt(100).toDouble(),
    expiration: DateTime.now(),
  ),
  Auction(
    tag: 'Day ${Random().nextInt(100)}',
    image: kNFTImageY,
    artist: 'Jeremy Schneider',
    avatar: kNFTIcon,
    description: _kDummyText,
    bid: Random().nextInt(100).toDouble(),
    expiration: DateTime.now(),
  ),
];
