
// user profile image widget
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobile_exam/utils/extensions.dart';

class UserAvatar extends StatelessWidget {
  final String avatar;
  final double size;
  const UserAvatar({super.key, required this.avatar, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      // force image to be bound by the decoration of the (Container]
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.theme.disabledColor.withOpacity(0.1),
      ),
      height: size,
      width: size,

      /// however, this image provider does not cache the image
      /// and downloads it every time the user visits the page
      /// which is not ideal. So let's use a package called
      /// 'cached_network_image. By the way I have added all of the needed
      ///dependencies
      child: CachedNetworkImage(
        imageUrl: avatar,
        // crop in on the image
        fit: BoxFit.cover,
      ),
    );
  }
}