// import 'package:flutter/material.dart';
// import 'package:medical_care/constant/colors.dart';
// import 'package:medical_care/presentation/widget/default_text.dart';
// import 'package:sizer/sizer.dart';
//
// class DrugCard extends StatelessWidget {
//   const DrugCard({
//     Key? key,
//     required this.name,
//     required this.color,
//   }) : super(key: key);
//   final String name;
//   final Color color;
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 3,
//       shape: OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(10)
//             // bottomLeft: Radius.circular(30),
//             // bottomRight: Radius.circular(20),
//             ),
//         borderSide: BorderSide(
//           color: color,
//           width: 3,
//         ),
//       ),
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.5.h),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             DefaultText(
//               text: name,
//               color: Colors.black,
//             ),
//             Row(
//               children: [
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.alarm,
//                     size: 30,
//                     color: AppColors.kColorDark,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.edit,
//                     size: 30,
//                     color: AppColors.kColor2,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.delete,
//                     size: 30,
//                     color: Colors.red[600],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
