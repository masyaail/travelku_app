// import 'package:flutter/material.dart';
// import 'package:travelku/pages/detail.dart';

// class CardCustomExample extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final String image;
  
//   const CardCustomExample(required String title, {
//     Key? key,
//     required this.title,
//     required this.subtitle,
//     required this.image,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(bottom: 10.0),
//               child: Center(
//                 child: Image.network(
//                   image,
//                   fit: BoxFit.fill,
//                   height: 280.0,
//                   width: 400.0,
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   width: 45,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(title,
//                         style: const TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.w600)),
//                     const SizedBox(
//                       height: 6.0,
//                     ),
//                     Text(
//                       subtitle,
//                       style: const TextStyle(
//                           fontSize: 14, fontWeight: FontWeight.w300),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
