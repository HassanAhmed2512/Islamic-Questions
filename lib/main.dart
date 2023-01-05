import 'package:flutter/material.dart';
import 'package:quizzapp/quizz.dart';
import 'package:quizzapp/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
bool isSwitched = false;
class _MyAppState extends State<MyApp> {


int score = 0 ;
 int indexofquestion =0;
 void again(){
  setState(() {
      indexofquestion=0;
       score =0 ;
  });
 }
 void nextquestion(int val){
  setState(() {
    score += val ;
    indexofquestion++;
  });
 }

  final List<Map<String, Object>> question = [
{
'question':"من هو النبي الذي بعث مرتين إلى قومين مختلفين؟",
'answer' : [
  {'text' : 'سيدنا إدريس عليه السلام ' , 'score' : '1'},
  {'text' : 'سيدنا نوح عليه السلام ' , 'score' : '0'},
  {'text' : 'سيدنا صالح عليه السلام ' , 'score' : '0'},
  ]
},
{
'question':"من هو النبي الذي ثبتت عنه الصفة بأنه: هبة الله؟",
'answer' : [
  {'text' : 'سيدنا إسحاق عليه السلام' , 'score' : '1'},
  {'text' : 'سيدنا ابراهيم عليه السلام' , 'score' : '0'},
  {'text' : 'سيدنا عيسي عليه السلام', 'score' : '0'},
  ]
  },
{
'question':"من هو الذي اختلف العلماء فيه هل هو نبي أو رجلاً صالحاً؟",
'answer' : [
  {'text' : 'سواع' , 'score' : '0'},
  {'text' : 'الخضر' , 'score' : '1'},
   {'text' : 'يغوث' , 'score' : '0'}
  ]
  },
{
'question': "كيف أهلك الله عاد قوم هود؟",
'answer' : [
  {'text' : 'أسودت وجههم' , 'score' : '0'},
  {'text' : 'أرسل الله عليهم بريح صرصر عاتية' , 'score' : '1'},
   {'text' : 'عذبهم الله بالمطر والريح' , 'score' : '0'}
  ]
  },
  {
'question': "كم لبث نوح عليه السلام بدعوة قومه لعبادة الله؟",
'answer' : [
  {'text' : '955 سنه' , 'score' : '0'},
  {'text' : '950 سنه' , 'score' : '1'},
   {'text' : '959 سنه' , 'score' : '0'}
  ]
  },
  {
'question': "من هو النبي الذي سماه الله تعالى بنفسه؟",
'answer' : [
  {'text' : 'سيدنا أدم عليه السلام' , 'score' : '0'},
  {'text' : 'سيدنا يحيي عليه السلام' , 'score' : '1'},
   {'text' : 'سيدنا عيسي عليه السلام' , 'score' : '0'}
  ]
  },
  {
'question': "ما هي النبتة التي وضع سيدنا يونس أوراقها على جسده بعد أن خرج من فم الحوت؟",
'answer' : [
  {'text' : 'أوارق الرّيحان' , 'score' : '0'},
  {'text' : 'أوراق اليقطين' , 'score' : '1'},
   {'text' : 'أوراق الزيتون' , 'score' : '0'}
  ]
  },
  {
'question': "نبيٌّ من أنبياء الله كان قومه ينحتون بيتوهم في الجبال فمن هو؟",
'answer' : [
  {'text' : 'نبي الله لوط عليه السلام' , 'score' : '0'},
  {'text' : 'نبي الله صالح عليه السلام' , 'score' : '1'},
   {'text' : 'نبي الله نوح عليه السلام' , 'score' : '0'}
  ]
  },
  {
'question': "ما هي مهنة نبي الله إدريس عليه السلام؟",
'answer' : [
  {'text' : 'فلاحًا' , 'score' : '0'},
  {'text' : 'خيَّاطًا' , 'score' : '1'},
   {'text' : 'نجَّارًا' , 'score' : '0'}
  ]
  },
  {
'question': "لماذا سمي أولو العزم من الرسل بهذا الاسم؟",
'answer' : [
  {'text' : 'لأنهم قاموا بإبلاغ الدين بصورة كاملة' , 'score' : '0'},
  {'text' : 'اتصفو بهذه الصفة والتي معناها الجد والثبات' , 'score' : '1'},
   {'text' : 'لأنهم واجهوا صعوبات كثيرة أثناء تأديه الرساله' , 'score' : '0'}
  ]
  },
  {
'question': "ما هو جوهر دعوة الرسل جميعهم؟",
'answer' : [
  {'text' : 'الإيمان بوجود إله' , 'score' : '0'},
  {'text' : 'التوحيد ' , 'score' : '1'},
   {'text' : 'ترك العبادات الأخري' , 'score' : '0'}
  ]
  },
  {
'question': "من هو صفي الله؟",
'answer' : [
  {'text' : 'نبي الله محمد عليه السلام' , 'score' : '0'},
  {'text' : 'نبي الله أدم عليه السلام' , 'score' : '1'},
   {'text' : 'نبي الله موسي عليه السلام' , 'score' : '0'}
  ]
  },
  {
'question': "أول من جاهد من الأنبياء في سبيل الله هو …..؟",
'answer' : [
  {'text' : 'نوح عليه السلام' , 'score' : '0'},
  {'text' : 'إدريس عليه السلام' , 'score' : '1'},
   {'text' : 'سليمان عليه السلام' , 'score' : '0'}
  ]
  },
  {
'question': "ما هو المكان الذي جعله النبي محمد صلى الله عليه وسلم مكانًا سريًا خاص بالدعوة في مكة المكرمة؟",
'answer' : [
  {'text' : 'جبل الطور' , 'score' : '0'},
  {'text' : 'دار الأرقم' , 'score' : '1'},
   {'text' : 'مسجد قباء' , 'score' : '0'}
  ]
  },
  {
'question': "ما هي الآية التي اجتمعت فيها كل حروف اللغة العربية؟",
'answer' : [
  {'text' : 'أخر سورة البقرة' , 'score' : '0'},
  {'text' : 'أخر سورة الفتح' , 'score' : '1'},
   {'text' : 'أول سورة الكهف' , 'score' : '0'}
  ]
  },
   {
'question': "ما هي السورة التي تسمى قلب القرآن؟",
'answer' : [
  {'text' : 'سورة التوبة' , 'score' : '0'},
  {'text' : 'سورة الرحمن' , 'score' : '1'},
   {'text' : 'سورة الكهف' , 'score' : '0'}
  ]
  },
   {
'question': "ما هو أول موضوع تحدث به النبي عند مجيئه إلى المدينة أول مرة؟",
'answer' : [
  {'text' : 'موضوع المشوري' , 'score' : '0'},
  {'text' : 'الصلاة في جوف الليل' , 'score' : '1'},
   {'text' : 'الصلاة في أوقاتها' , 'score' : '0'}
  ]
  },
   {
'question': "من هو أول الأئمة الأربعة ؟",
'answer' : [
  {'text' : 'محمد بن إدريس الشافعي ' , 'score' : '0'},
  {'text' : 'أبو حنيفة النعمان بن ثابت' , 'score' : '1'},
   {'text' : 'أحمد بن حنبل' , 'score' : '0'},
   {'text' : 'مالك بن أنس' , 'score' : '0'}

  ]
  },
   {
'question': "ما هى السورة التي بدأت وانتهت بالتسبيح؟",
'answer' : [
  {'text' : 'سورة ق' , 'score' : '0'},
  {'text' : 'سورة الحشر' , 'score' : '1'},
   {'text' : 'سورة لقمان' , 'score' : '0'}
  ]
  },
   {
'question': "ما هي الحواميم السبعة المبدوءة ب(حم)؟",
'answer' : [
  {'text' : 'فصلت / الرَّعْد / غافر/ الشورى / إبراهِيم /الجاثية/ الأحقاف' , 'score' : '0'},
  {'text' : 'غافر فصلت/ الشورى/الزخرف/الدخان/ الجاثية/ الأحقاف' , 'score' : '1'},
   {'text' : 'الشورى/الزخرف/ فصلت/الدخان/الجاثية/ الأحقاف/النُّور' , 'score' : '0'}
  ]
  },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text("اسئلة دينية" , style: TextStyle( color: isSwitched == false ? Colors.white : Colors.black,),),
          actions: [
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
              activeColor: Colors.white,
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.black,
            ),
          ],
        ),
        body: Container(
           color: isSwitched == false ? Colors.white : Colors.black,
          child: indexofquestion<question.length? Quizz(question, indexofquestion, nextquestion) : Result(again,score),
          
        ),
      ),
    );
  }
}
