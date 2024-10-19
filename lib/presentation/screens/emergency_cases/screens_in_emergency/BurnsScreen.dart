import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:sizer/sizer.dart';

class BurnsScreen extends StatefulWidget {
  const BurnsScreen({Key? key}) : super(key: key);

  @override
  State<BurnsScreen> createState() => _BurnsScreenState();
}

class _BurnsScreenState extends State<BurnsScreen> {
  bool arabic = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              arabic == false ? arabic = true : arabic = false;
              setState(() {});
            },
            icon: const Icon(
              Icons.translate,
              color: AppColors.kColora,
            ),
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 26,
          ),
          color: AppColors.kColorDark,
        ),
        title: Text(
          style: TextStyle(
            fontSize: 19.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.kColora,
            fontFamily: AppFonts.kFontsCourgette,
          ),
          arabic == false ? 'Burns' : 'حروق',
          textAlign: arabic == true ? TextAlign.right : TextAlign.left,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: arabic == false
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Text(
                arabic == false ? 'Types Of Burns' : 'أنواع الحروق',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColora),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                arabic == false
                    ? 'Burns are the removal of skin from a part of the body by the following means : '
                    : 'الحروق هي إزالة الجلد من جزء من الجسم بالوسائل التالية',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                arabic == false
                    ? '• Dry heat: such as a hot iron or cooking oven.'
                    : ' الحرارة الجافة s: مثل المكواة الساخنة أو فرن الطهي .',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                arabic == false
                    ? '• Electricity: such as an electric shock.'
                    : ' الكهرباء : مثل الصدمة الكهربائية .',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                arabic == false
                    ? '• Friction: like someone holding a rope pulling his hand with force.'
                    : ' الاحتكاك : كمن يمسك بحبل يسحب يده بقوة .',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                arabic == false
                    ? '• Acids: bathroom or oven cleaners.'
                    : ' الأحماض : منظفات الحمامات أو الأفران .',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                arabic == false
                    ? '• Alkalis: such as lime.'
                    : ' القلويات : مثل الجير .',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                arabic == false
                    ? '• Radiation: such as cases of treatment with large doses of x-rays or x-rays scorching sun.'
                    : 'الإشعاع : مثل حالات العلاج بجرعات كبيرة من الأشعة السينية أو أشعة الشمس الحارقة ',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                arabic == false
                    ? '• Moist heat: boiling water or steam.'
                    : 'الحرارة الرطبة : ماء مغلي أو بخار .',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(fontSize: 13.sp),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                arabic == false ? 'Burn classification' : ' : تصنيف الحرق',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColora),
              ),
              SizedBox(
                height: 2.h,
              ),
              Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset(
                      "assets/images/Types of burns.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  //assets/images/Types of burns.jpg

                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    width: 90.w,
                    child: Column(
                      crossAxisAlignment: arabic == false
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.end,
                      children: [
                        Text(
                          arabic == false
                              ? '• Superficial burns'
                              : ' : الحروق السطحية',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19.sp,
                              color: AppColors.kColora),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          arabic == false
                              ? 'where the lesion is confined to the epidermis, i.e. the upper layer of the skin Pain accompanies this, and this type of burn heals quickly.'
                              : 'حيث تقتصر الآفة على البشرة ، أي الطبقة العليا من الجلد يصاحبها الألم ، وهذا النوع من الحروق يشفى بسرعة',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          arabic == false ? '• Deep burns' : ' : حروق عميقة',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19.sp,
                              color: AppColors.kColora),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          arabic == false
                              ? 'The lesions extend to the epidermis and dermis, and the pain is mild or non-existent. This type of burn is slow to heal and leaves scars afterwards.'
                              : 'تمتد الآفات إلى البشرة والأدمة ، ويكون الألم خفيفًا أو غير موجود. هذا النوع من الحروق بطيء في الشفاء ويترك ندوبًا بعد ذلك',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                arabic == false
                    ? 'First aid for burns:'
                    : ' : الإسعافات الأولية للحروق',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColora),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                arabic == false ? 'Minor burns:' : ' : حروق طفيفة',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColora),
              ),
              Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset(
                      "assets/images/Minor burns.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  //assets/images/Minor burns.jpg
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    width: 90.w,
                    child: Column(
                      crossAxisAlignment: arabic == false
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.end,
                      children: [
                        Text(
                          arabic == false
                              ? '• Hold the burn under cold running water.'
                              : 'ضع الحرق تحت الماء الجاري البارد',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          arabic == false
                              ? '• Cover the burn with a cloth soaked in cold water until the pain is gone.'
                              : 'قم بتغطية الحرق بقطعة قماش مبللة بالماء البارد حتى يزول الألم',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          arabic == false
                              ? '• When the pain subsides, apply a special burn ointment to the burn and cover it with a dry bandage.'
                              : 'عندما يهدأ الألم ، ضع مرهم حروق خاص على الحرق وقم بتغطيته بضمادة جافة',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          arabic == false
                              ? '• When there are blisters, do not try to pop them.'
                              : 'عندما تكون هناك بثور ، لا تحاول أن تفرقعها',
                          textAlign:
                              arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                arabic == false ? 'Major burns:' : ' : حروق كبيرة',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColora),
              ),

              SizedBox(
                height: 2.h,
              ),
              Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset(
                      "assets/images/Major burns.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  //assets/images/Major burns.jpg
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    width: 90.w,
                    child: Column(
                      crossAxisAlignment: arabic == false
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.end,
                      children: [
                        Text(
                          arabic == false
                              ? '• Immediately remove the victim from the source of the burn.'
                              : 'أخرج المصاب على الفور من مصدر الحرق',
                          textAlign:
                          arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          arabic == false
                              ? '• Put cold water on the burn in large quantities, provided that it is not ice cold The burnt part makes up a large percentage of the body, so do not put water on it.'
                              : 'ضع الماء البارد على الحرق بكميات كبيرة بشرط ألا يكون مثلجاً فالجزء المحترق يشكل نسبة كبيرة من الجسم فلا تضع الماء عليه',
                          textAlign:
                          arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          arabic == false
                              ? '• Never use ice.'
                              : 'لا تستخدم الثلج أبدًا',
                          textAlign:
                          arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          arabic == false
                              ? '• After the burning subsides, the clothes on the burn are taken off, but if they are sticky, don\'t You try to take it off.'
                              : 'بعد أن يهدأ الحرق ، يتم خلع الملابس الموجودة على الحرق ، ولكن إذا كانت لزجة ، فلا تحاول نزعها',
                          textAlign:
                          arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          arabic == false
                              ? '• Cover burns with a dry dressing to keep air out.'
                              : 'قم بتغطية الحروق بضمادة جافة لإبعاد الهواء',
                          textAlign:
                          arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          arabic == false
                              ? '• Work to relax.'
                              : 'اعمل على الاسترخاء',
                          textAlign:
                          arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          arabic == false
                              ? '• Call an ambulance.'
                              : 'اتصل بالإسعاف',
                          textAlign:
                          arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                arabic == false ? 'Electrical burns:' : ' : الحروق الكهربائية',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColora),
              ),

              Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset(
                      "assets/images/electrical burns.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  //assets/images/electrical burns.jpg
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    width: 90.w,
                    child: Column(
                      crossAxisAlignment: arabic == false
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.end,
                      children: [
                        Text(
                          arabic == false
                              ? '• Keep the injured person away from the electrical source that caused the burn.'
                              : 'أبعد المصاب عن مصدر الكهرباء الذي تسبب في الحرق',
                          textAlign:
                          arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          arabic == false
                              ? '• Cover the wound site with a dry sterile dressing.'
                              : 'غطي مكان الجرح بضمادة جافة معقمة',
                          textAlign:
                          arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          arabic == false
                              ? '• Do not use water to soothe a burn.'
                              : 'لا تستخدم الماء لتهدئة الحرق',
                          textAlign:
                          arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),

                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          arabic == false
                              ? '• Call an ambulance.'
                              : 'اتصل بالإسعاف',
                          textAlign:
                          arabic == true ? TextAlign.right : TextAlign.left,
                          style: TextStyle(fontSize: 13.sp),
                        ),                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
