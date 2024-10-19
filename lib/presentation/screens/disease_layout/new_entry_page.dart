// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:medical_care/constant/constants.dart';
// import 'package:sizer/sizer.dart';
//
// import '../../../common/convert_time.dart';
// import '../../../models/medicine_type.dart';
//
// class NewEntryPage extends StatefulWidget {
//   const NewEntryPage({Key? key}) : super(key: key);
//
//   @override
//   State<NewEntryPage> createState() => _NewEntryPageState();
// }
//
// class _NewEntryPageState extends State<NewEntryPage> {
//   late TextEditingController nameController;
//   late TextEditingController dosageController;
//
//   late GlobalKey<ScaffoldState> _scaffoldKey;
//   @override
//   void dispose() {
//     super.dispose();
//     nameController.dispose();
//     dosageController.dispose();
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     nameController = TextEditingController();
//     dosageController = TextEditingController();
//     _scaffoldKey = GlobalKey<ScaffoldState>();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         title: Text('Add New Medicine'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(2.h),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             PanelTitle(
//               title: 'Medicine Name',
//               isRequired: true,
//             ),
//             TextFormField(
//               controller: nameController,
//               decoration: InputDecoration(
//                 border: UnderlineInputBorder(),
//               ),
//               style: Theme.of(context)
//                   .textTheme
//                   .titleSmall!
//                   .copyWith(color: kOtherColor),
//             ),
//             PanelTitle(
//               title: 'Dosage in mg',
//               isRequired: false,
//             ),
//             TextFormField(
//               controller: dosageController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 border: UnderlineInputBorder(),
//               ),
//               style: Theme.of(context)
//                   .textTheme
//                   .titleSmall!
//                   .copyWith(color: kOtherColor),
//             ),
//             SizedBox(
//               height: 2.h,
//             ),
//             PanelTitle(
//               title: 'Medicine Type',
//               isRequired: false,
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 1.h),
//               child: StreamBuilder(
//                 builder: (context, snapshot) {
//                   return Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       MedicineTypeColumn(
//                           medicineType: MedicineType.bottle,
//                           name: 'Bottle',
//                           svgPicture: 'assets/icons/bottle.svg',
//                           isSelected: snapshot.data == MedicineType.bottle
//                               ? true
//                               : false),
//                       MedicineTypeColumn(
//                           medicineType: MedicineType.pill,
//                           name: 'Pill',
//                           svgPicture: 'assets/icons/pill.svg',
//                           isSelected: snapshot.data == MedicineType.pill
//                               ? true
//                               : false),
//                       MedicineTypeColumn(
//                           medicineType: MedicineType.syringe,
//                           name: 'Syringe',
//                           svgPicture: 'assets/icons/syringe.svg',
//                           isSelected: snapshot.data == MedicineType.syringe
//                               ? true
//                               : false),
//                       MedicineTypeColumn(
//                           medicineType: MedicineType.tablet,
//                           name: 'Tablet',
//                           svgPicture: 'assets/icons/tablet.svg',
//                           isSelected: snapshot.data == MedicineType.tablet
//                               ? true
//                               : false),
//                     ],
//                   );
//                 },
//               ),
//             ),
//             PanelTitle(
//               title: 'Interval selection',
//               isRequired: true,
//             ),
//             const IntervalSelection(),
//             PanelTitle(
//               title: 'Starting time',
//               isRequired: true,
//             ),
//             SelectTime(),
//             SizedBox(height: 2.h,),
//             Padding(
//                 padding: EdgeInsets.only(
//                   left: 8.w,
//                   right: 8.w,
//                 ),
//                 child: SizedBox(
//                     width: 80.w,
//                     height: 8.h,
//                     child: TextButton(
//                       style: TextButton.styleFrom(
//                         backgroundColor: kPrimaryColor,
//                         shape: const StadiumBorder(),
//                       ),
//                       child: Center(
//                         child: Text(
//                           'Confirm',
//                           style:
//                               Theme.of(context).textTheme.subtitle2!.copyWith(
//                                     color: kScaffoldColor,
//                                   ),
//                         ),
//                       ),
//                       onPressed: () {},
//                     )))
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class SelectTime extends StatefulWidget {
//   const SelectTime({Key? key}) : super(key: key);
//
//   @override
//   State<SelectTime> createState() => _SelectTimeState();
// }
//
// class _SelectTimeState extends State<SelectTime> {
//   TimeOfDay _time = const TimeOfDay(hour: 0, minute: 00);
//   bool _clicked = false;
//
//   Future<TimeOfDay> _selectTime() async {
//     final TimeOfDay? picked =
//         await showTimePicker(context: context, initialTime: _time);
//
//     if (picked != null && picked != _time) {
//       setState(() {
//         _time = picked;
//         _clicked = true;
//
//         //update state via provider, we will do later
//       });
//     }
//     return picked!;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 8.h,
//       child: Padding(
//         padding: EdgeInsets.only(top: 2.h),
//         child: TextButton(
//           style: TextButton.styleFrom(
//               backgroundColor: kPrimaryColor, shape: const StadiumBorder()),
//           onPressed: () {
//             _selectTime();
//           },
//           child: Center(
//             child: Text(
//               _clicked == false
//                   ? "Select Time"
//                   : "${convertTime(_time.hour.toString())}:${convertTime(_time.minute.toString())}",
//               style: Theme.of(context)
//                   .textTheme
//                   .subtitle2!
//                   .copyWith(color: kScaffoldColor),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class IntervalSelection extends StatefulWidget {
//   const IntervalSelection({Key? key}) : super(key: key);
//
//   @override
//   State<IntervalSelection> createState() => _IntervalSelectionState();
// }
//
// class _IntervalSelectionState extends State<IntervalSelection> {
//   var _selected = 0;
//   final _intervals = [6, 8, 12, 24];
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(top: 1.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             'Remind me every ',
//             style: Theme.of(context)
//                 .textTheme
//                 .titleSmall!
//                 .copyWith(color: Colors.black),
//           ),
//           DropdownButton(
//             iconEnabledColor: kOtherColor,
//             dropdownColor: kScaffoldColor,
//             itemHeight: 8.h,
//             hint: _selected == 0
//                 ? Text(
//                     'Select an Interval',
//                     style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                           color: kPrimaryColor,
//                         ),
//                   )
//                 : null,
//             elevation: 4,
//             value: _selected == 0 ? null : _selected,
//             items: _intervals.map(
//               (int value) {
//                 return DropdownMenuItem<int>(
//                   value: value,
//                   child: Text(value.toString(),
//                       style: Theme.of(context).textTheme.bodySmall),
//                 );
//               },
//             ).toList(),
//             onChanged: (newVal) {
//               setState(
//                 () {
//                   _selected = newVal!;
//                 },
//               );
//             },
//           ),
//           Text(
//             _selected == 1 ? 'hour' : "hours",
//             style: Theme.of(context)
//                 .textTheme
//                 .titleSmall!
//                 .copyWith(color: Colors.black),
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class MedicineTypeColumn extends StatelessWidget {
//   const MedicineTypeColumn(
//       {Key? key,
//       required this.name,
//       required this.svgPicture,
//       required this.isSelected,
//       required this.medicineType})
//       : super(key: key);
//   final MedicineType medicineType;
//   final String name;
//   final String svgPicture;
//   final bool isSelected;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {},
//       child: Column(
//         children: [
//           Container(
//             width: 20.w,
//             height: 10.h,
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               color: isSelected ? kOtherColor : Colors.grey[200],
//               borderRadius: BorderRadius.circular(16),
//             ),
//             child: Center(
//               child: Padding(
//                 padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
//                 child: SvgPicture.asset(
//                   '$svgPicture',
//                   color: isSelected ? Colors.white : kOtherColor,
//                   height: 7.h,
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 1.h),
//             child: Container(
//               width: 20.w,
//               height: 4.h,
//               decoration: BoxDecoration(
//                 color: isSelected ? kOtherColor : Colors.transparent,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Center(
//                 child: Text(
//                   '$name',
//                   style: Theme.of(context).textTheme.titleSmall!.copyWith(
//                         color: isSelected ? Colors.white : kOtherColor,
//                       ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class PanelTitle extends StatelessWidget {
//   PanelTitle({Key? key, required this.title, required this.isRequired})
//       : super(key: key);
//   String title;
//   bool isRequired;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 2.h),
//       child: Text.rich(TextSpan(children: <TextSpan>[
//         TextSpan(
//           text: title,
//           style:
//               Theme.of(context).textTheme.labelMedium!.copyWith(fontFamily: ''),
//         ),
//         TextSpan(
//           text: isRequired ? " *" : '',
//           style: Theme.of(context)
//               .textTheme
//               .labelMedium!
//               .copyWith(color: kPrimaryColor),
//         )
//       ])),
//     );
//   }
// }
