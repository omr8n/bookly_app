import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          errorWidget: (context, url, error) => const Icon(
            Icons.error,
          ),
        ),
      ),
    );
  }
}

// class CustomBookImage extends StatelessWidget {
//   const CustomBookImage({super.key, required this.imageUrl});

//   final String imageUrl;
//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 2.6 / 4,
//       child: Container(
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(16),
//             color: const Color.fromARGB(255, 119, 141, 159),
//             image:
//                 const DecorationImage(image: AssetImage(AssetsData.testImage))),
//         // fit: BoxFit.fill,
//         // imageUrl: imageUrl,
//         // errorWidget: (context, url, error) => const Icon(
//         //   Icons.error,
//         // ),
//       ),
//     );
//   }
// }
