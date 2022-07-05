
import 'package:durood_e_pak/Constants/DuroodSharifConstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'DuroodSharifDetailScreen.dart';


class HaftawarDuroodSharifScreen extends StatelessWidget {
   HaftawarDuroodSharifScreen({Key? key}) : super(key: key);

  List duroodpakList =[DuroodSharifConstants(title:"جمعہ سے پہلے کی رات کے لیے صلوٰۃ النبی", duroodsharif:" اَللّٰھُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ عَلٰی سَیِّدِنَا مُحَمَّدٍ النَّبِیِّ الْاُمِّیِّ الْحَبِیْبِ الْعَالِی الْقَدْرِ الْعَظِیْمِ الْجَاہِ وَعَلٰی اٰلِہٖ وَصَحْبِہٖ وَسَلِّمْ"
, translation:"اولیائے اسلام نے نقل کیا ہے کہ جو شخص جمعہ سے پہلے کی رات میں کم از کم ایک بار یہ درود شریف پڑھے گا اسے پیارے نبی صلی اللہ علیہ وسلم کا دیدار نصیب ہوگا ۔ اللہ تعالیٰ اس پر رحم فرمائے اور ان کو سلامتی عطا فرمائے موت کے وقت، اسی طرح قبر میں دفن کے وقت، اس حد تک کہ وہ نبی کریم صلی اللہ علیہ وسلم کو دیکھے گا۔اپنے مہربان ہاتھوں سے اسے قبر میں اتارتے ہیں۔ (افضل الصلوٰۃ علیٰ سید السادات صفحہ 151) "),
DuroodSharifConstants(title: "تمام گناہ معاف", duroodsharif: "اَللّٰھُمَّ صَلِّ عَلٰی سَیِّدِ نَا وَ مَوْلَانَا مُحَمَّدٍ وَّعَلٰی اٰلِہٖ وَسَلِّمْ", translation:"سیدنا انس رضی اللہ عنہ سے روایت ہے۔کہ پیارے اور بابرکت نبی صلی اللہ علیہ وسلم پر درود و سلام فرمایا: جس نے کھڑے ہو کر مجھ پر یہ درود پڑھا، پھر بیٹھنے سے پہلے۔ اور اگر بیٹھ کر پڑھے تو کھڑے ہونے سے پہلے اس کے گناہ معاف کر دیے جائیں گے۔ (ibid، صفحہ 65)" )
,DuroodSharifConstants(title:"رحمت کے 70 دروازے" , duroodsharif:"صَلَّی اللّٰہُ عَلٰی مُحَمَّدٍ" , translation:"جو شخص یہ درود شریف پڑھتا ہے اس کے لیے رحمت کے 70 دروازے کھل جاتے ہیں۔ (القول البادی، صفحہ 277)" ),
DuroodSharifConstants(title:"چھ لاکھ صلوات الانبیاء کا ثواب", duroodsharif: "اَللّٰھُمَّ صَلِّ عَلٰی سَیِّدِنَا مُحَمَّدٍ عَدَدَ مَا فِیْ عِلْمِ اللّٰہِ صَلَاۃً دَاۤئِمَۃًۢ بِدَوَامِ مُلْكِ اللّٰہِ" , translation:"شیخ احمد صوی رحمۃ اللہ علیہ، رہنما بعض اولیاء اسلام سے منقول ہے کہ اس صلاۃ الانبیاء کو ایک مرتبہ پڑھنے والے کو چھ لاکھ مرتبہ صلاۃ الانبیاء پڑھنے کا ثواب ملتا ہے۔ (افضل الصلوٰۃ علیٰ سید السادات صفحہ 149)" ),
DuroodSharifConstants(title: "نبی کریم صلی اللہ علیہ وسلم کا قرب", duroodsharif:"اَللّٰھُمَّ صَلِّ عَلٰی مُحَمَّدٍ کَمَا تُحِبُّ وَ تَرضٰی لَہٗ" , translation: "ایک دن کوئی شخص حضور صلی اللہ علیہ وسلم کی بارگاہ میں حاضر ہوا، اور حضور نبی اکرم صلی اللہ علیہ وآلہ وسلم ،اسے اپنے اور سیدنا ابوبکر صدیق رضی اللہ عنہ کے درمیان بٹھایا. محترم صحابہ کرام ، خدا ان سے راضی ہو۔ حیران تھے کہ وہ معزز شخص کون ہے؟ جب وہ چلا گیا تو حضور صلی اللہ علیہ وسلم نے فرمایا فرمایا جب وہ مجھ پر درود پڑھتا ہے تو ان الفاظ میں کرتا ہے۔ (القول البادی، صفحہ 125)"),
DuroodSharifConstants(title:"درود شفاعت" , duroodsharif: "اَللّٰہُمَّ صَلِّ عَلٰی مُحَمَّدٍ وَّ اَنْزِلْہُ الْمَقْعَدَ الْمُقَرَّبَ عِنْدَكَ یَوْمَ الْقِیَامَۃِ", translation: "سب سے عظیم اور مقدس ترین نبی ، خدا کی دعائیں اور سلام فرمایا: جس نے مجھ پر یہ درود پڑھا اس کے لیے میری شفاعت واجب ہو جائے گی۔(عطارغیب وطہرہیب، جلد 2، صفحہ 329، حدیث 31)"),
DuroodSharifConstants(title:"ہزار دنوں کے لیے نیک اعمال" , duroodsharif: "جَزَی اللّٰہُ عَنَّا مُحَمَّدًا مَا ھُوَ اَھْلُہٗ", translation: "سیدنا ابن عباس رضی اللہ عنہما سے روایت ہے کہ اللہ ان دونوں سے راضی ہو۔کہ عظیم اور بابرکت نبی ، خدا کی دعا اور سلام ہو،فرمایا: مذکورہ دعا پڑھنے والے کے لیے ستر فرشتے (اس کے کھاتے میں) ہزار دن کی نیکیاں لکھتے ہیں۔ (مجمع الزوائد، صفحہ 254، جلد 10، حدیث 17305)"),
DuroodSharifConstants(title:"ہر رات عبادت میں گزارنے کا آسان طریقہ" , duroodsharif:"لَآ اِلٰهَ اِلَّا اللّٰهُ الۡحَلِيۡمُ الۡكَرِيۡمُ سُبۡحٰنَ اللّٰهِ رَبِّ السَّمٰوٰتِ السَّبۡعِ وَ رَبِّ الۡعَرۡشِ الۡعَظِيۡم" , translation:"غریب القرآن کے صفحہ 187 پر درج ذیل روایت ہے کہ 'جو شخص رات کو تین مرتبہ یہ دعا پڑھے تو گویا اس نے لیلۃ القدر کو پا لیا'۔ ہمیں ہر رات اسے پڑھنا چاہیے۔ یہ دعا ہے" ), ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff274833),
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: IconButton(onPressed: (){
                  Get.back();
                }, icon: Icon(Icons.arrow_back_ios_new_outlined, size: 30,color: Color(0xffD7B13D),)),
              ),
            ],
          ),
         // SizedBox(height: 50),
 Expanded(
   child: ListView.builder(
          itemCount: duroodpakList.length,
          itemBuilder: (BuildContext context, int index) {
            return  GestureDetector(
          onTap: (){
             Get.to(DuroodSharifDetailScreen(duroodSharifConstant: duroodpakList[index]));
          },
              child: Card(
                    elevation: 2,
                    
                    color: Color(0xffD7B13D),
                    child: Container(
                      height: 100,
                      width: 300,
                    child: Center(child: Text(duroodpakList[index].title, textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),))
                    )
              ),
            );
          }),
 )])));
    
  }
}
