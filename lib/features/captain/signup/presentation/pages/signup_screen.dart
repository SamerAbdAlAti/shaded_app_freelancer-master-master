import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:shaded_app_freelancer/_core/functions/function.dart';
import 'package:shaded_app_freelancer/_core/theme.dart';
import 'package:shaded_app_freelancer/_core/widgets/build_button.dart';
import 'package:shaded_app_freelancer/_core/widgets/custom_appbar.dart';
import 'package:shaded_app_freelancer/features/captain/layout/presentation/pages/layout_screen.dart';
import 'package:shaded_app_freelancer/features/captain/signup/presentation/bloc-cubit/register/register_cubit.dart';
import 'package:shaded_app_freelancer/features/captain/signup/presentation/bloc-cubit/stepper_cubit.dart';
import '../../../../../_core/widgets/custom_text_form_field.dart';
import '../../../../authentication/presentation/pages/login_screen.dart';

class CaptainSignupPage extends StatefulWidget {
  final String phoneNumber;

  CaptainSignupPage({required this.phoneNumber});

  @override
  _CaptainSignupPageState createState() => _CaptainSignupPageState();
}

class _CaptainSignupPageState extends State<CaptainSignupPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CaptainRegisterCubit>(
          create: (context) => CaptainRegisterCubit(),
        ),
        BlocProvider<StepperCubit>(
          create: (context) => StepperCubit(),
        ),
      ],
      child: BlocBuilder<CaptainRegisterCubit, CaptainRegisterState>(
        builder: (context, state) {
          CaptainRegisterCubit registerCubit = CaptainRegisterCubit.get(context);

          List<Step> steps = [
            Step(
              title: Text(""),
              label: Text("بيانات التواصل", style: tajawalArabic(size: 14)),
              isActive: registerCubit.currentStep >= 0,
              content: SingleChildScrollView(
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "حدد إذا كنت فرد أو مؤسسة أو شركة",
                        style: tajawalArabic(size: 14, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(242, 242, 242, 0.5),
                            border: Border.all(width: 7, color: Color.fromRGBO(242, 242, 242, 0.5)),
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle),
                        child: DropdownButton<String?>(
                            value: registerCubit.selectedCategory,
                            elevation: 0,
                            dropdownColor: Colors.grey[200],
                            underline: SizedBox(),
                            isExpanded: true,
                            hint: Text(registerCubit.listOfCategory![1].toString()),
                            style: tajawalArabic(fontWeight: FontWeight.bold, size: 16),
                            items: registerCubit.listOfCategory!
                                .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e.toString(),
                                      style: tajawalArabic(color: Colors.black87),
                                    )))
                                .toList(),
                            onChanged: (String? value) {
                              // setState(() {
                              //   selectedCategory == value!;
                              // });
                            }),
                      ),
                      SizedBox(height: 28),
                      customFormField(
                          label: "ما نوع الخدمة التي تقدمها؟",
                          type: TextInputType.name,
                          labelSize: 15,
                          onSubmitted: () {
                            print("Hello");
                          }),
                      SizedBox(height: 28),
                      customMultipleFormField(
                          label: "سيظهر اسمك على ملفك الشخصي وإلى العملاء الذين \nقمت بإرسال عرض أسعار لهم",
                          firstHint: "إسم الأول",
                          secondHint: "إسم الأخير",
                          labelSize: 15),
                      SizedBox(height: 28),
                      Text(
                        "سوف نرسل لك فرص عمل في منطقتك والمناطق المجاورة",
                        style: tajawalArabic(size: 14, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(242, 242, 242, 0.5),
                            border: Border.all(width: 7, color: Color.fromRGBO(242, 242, 242, 0.5)),
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle),
                        child: DropdownButton<String?>(
                            value: registerCubit.selectedCountry,
                            elevation: 0,
                            dropdownColor: Colors.grey[200],
                            underline: SizedBox(),
                            isExpanded: true,
                            hint: Text(registerCubit.listOfCountry![1].toString()),
                            style: tajawalArabic(fontWeight: FontWeight.bold, size: 16),
                            items: registerCubit.listOfCountry!
                                .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e.toString(),
                                      style: tajawalArabic(color: Colors.black87),
                                    )))
                                .toList(),
                            onChanged: (String? value) {
                              // setState(() {
                              //   selectedCountry = value!;
                              // });
                            }),
                      ),
                      SizedBox(height: 5),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(242, 242, 242, 0.5),
                            border: Border.all(width: 7, color: Color.fromRGBO(242, 242, 242, 0.5)),
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle),
                        child: DropdownButton<String?>(
                          onChanged: (String? value) {
                            // setState(() {
                            //   selectedNear = value!;
                            // });
                          },
                          value: registerCubit.selectedNear,
                          elevation: 0,
                          dropdownColor: Colors.grey[200],
                          underline: SizedBox(),
                          isExpanded: true,
                          hint: Text(registerCubit.listOfNear![1].toString()),
                          style: tajawalArabic(fontWeight: FontWeight.bold, size: 16),
                          items: registerCubit.listOfNear!
                              .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    e.toString(),
                                    style: tajawalArabic(color: Colors.black87),
                                  )))
                              .toList(),
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ),
            Step(
              title: Text(""),
              label: Text("رقم التواصل", style: tajawalArabic(size: 14)),
              isActive: registerCubit.currentStep >= 1,
              content: SingleChildScrollView(
                child: Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "رقم الموبايل",
                      style: tajawalArabic(size: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "سوف نؤكد رقمك الخاص في وقت لاحق",
                      style: tajawalArabic(size: 12, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: IntlPhoneField(
                        textAlign: TextAlign.left,
                        cursorColor: appColor,
                        readOnly: true,
                        // initialValue: "$phoneNumber",
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0),
                            borderSide: BorderSide(),
                          ),
                        ),
                        initialCountryCode: 'SA',
                        keyboardType: TextInputType.phone,
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      ),
                    ),
                    SizedBox(height: 30),
                    customFormFieldWithDescription(
                      label: "أدخل البريد الإلكتروني",
                      description: "سوف تتلقى فرص عمل جديدة على بريدك الإكتروني",
                      type: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 30),
                    customFormFieldWithDescription(
                      label: "رقم الحساب البنكي",
                      description: "سيتم إرسال مستحقاتك على رقم هذا الحساب",
                      type: TextInputType.phone,
                    ),
                    SizedBox(height: 50),
                  ],
                )),
              ),
            ),
            Step(
              title: Text(""),
              label: Text("الصور المطلوبة", style: tajawalArabic(size: 14)),
              isActive: registerCubit.currentStep >= 2,
              content: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "الصورة الشخصية",
                      style: tajawalArabic(size: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "يجب أن تكون صورة السيلفي ملتقطة الآن",
                      style: tajawalArabic(size: 12, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 81,
                        height: 81,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0), border: Border.all(style: BorderStyle.solid, color: appColor)),
                        child: Icon(Icons.add_a_photo),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "الهوية الوطنية",
                      style: tajawalArabic(size: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "صورة للهوية الوطنية واضح بها جميع البيانات",
                      style: tajawalArabic(size: 12, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 81,
                      height: 81,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0), border: Border.all(style: BorderStyle.solid, color: appColor)),
                      child: Icon(Icons.add_a_photo),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "صورة السيارة",
                      style: tajawalArabic(size: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "صورة للسيارة من الأمام و الخلف واضح بها رقم اللوحة",
                      style: tajawalArabic(size: 12, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 81,
                      height: 81,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0), border: Border.all(style: BorderStyle.solid, color: appColor)),
                      child: Icon(Icons.add_a_photo),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "استمارة السيارة",
                      style: tajawalArabic(size: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "صورة لأستمارة السيارة واضح بها جميع البيانات",
                      style: tajawalArabic(size: 12, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 81,
                      height: 81,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0), border: Border.all(style: BorderStyle.solid, color: appColor)),
                      child: Icon(Icons.add_a_photo),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "صورة التأمين",
                      style: tajawalArabic(size: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "صورة لتأمين السيارة واضح بها جميع البيانات",
                      style: tajawalArabic(size: 12, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 81,
                      height: 81,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0), border: Border.all(style: BorderStyle.solid, color: appColor)),
                      child: Icon(Icons.add_a_photo),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "تفويض السيارة",
                      style: tajawalArabic(size: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "إذا كنت مفوضاً على السيارة (أختياري)",
                      style: tajawalArabic(size: 12, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 81,
                      height: 81,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0), border: Border.all(style: BorderStyle.solid, color: appColor)),
                      child: Icon(Icons.add_a_photo),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ];
          return Scaffold(
            appBar: defaultAppBar(context, "تسجيل الدخول كمزود خدمة", height: 60, isIcon: true, widget: LoginPage()),
            // backgroundColor: Colors.white,
            body: Theme(
              data: Theme.of(context).copyWith(colorScheme: ColorScheme.light(primary: appColor)),
              child: Stepper(
                steps: steps,
                physics: BouncingScrollPhysics(),
                type: StepperType.horizontal,
                currentStep: registerCubit.currentStep,
                elevation: 0,
                controlsBuilder: (context, details, {VoidCallback? onStepContinue}) {
                  return buildButton(
                      name: registerCubit.currentStep != 2 ? "التالي" : "تسجيل",
                      function: () {
                        if (registerCubit.currentStep < steps.length - 1) {
                          setState(() {
                            registerCubit.currentStep = registerCubit.currentStep + 1;
                          });
                        } else {
                          navAndFinish(context, CaptainHomeLayout());
                        }
                      },
                      color: appColor,
                      colorName: Colors.white);
                },
                onStepContinue: () {
                  setState(() {
                    if (registerCubit.currentStep < steps.length - 1) {
                      registerCubit.currentStep = registerCubit.currentStep + 1;
                    } else {
                      AlertDialog(
                        title: Text('طلب الموقع'),
                        content: Text('الرجاء , اضغط على موافق لكي يتم تحديد موقعك!'),
                        actions: [
                          TextButton(
                            onPressed: () async {
                              Navigator.of(context).pop(); // Close the dialog
                              await registerCubit.getLocation(context); // Get location after permission is granted
                            },
                            child: Text('موافق'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Close the dialog
                            },
                            child: Text('رفض'),
                          ),
                        ],
                      );
                      context.read<CaptainRegisterCubit>().register(context, registerCubit.phone.text, registerCubit.firstName.text);
                      navAndFinish(context, CaptainHomeLayout());
                    }
                  });
                },
                onStepTapped: (value) {
                  if (registerCubit.currentStep < steps.length - 1) {
                    context.read<StepperCubit>().nextStep();
                  } else {
                    navAndFinish(context, CaptainHomeLayout());
                    value = registerCubit.currentStep = 0;
                  }
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
