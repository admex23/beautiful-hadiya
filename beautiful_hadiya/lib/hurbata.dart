import 'package:flutter/material.dart';

class Hurbata extends StatefulWidget {
  const Hurbata({super.key});

  @override
  State<Hurbata> createState() => _HurbataState();
}

class _HurbataState extends State<Hurbata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' The cultures food'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/photo_2022-08-29_15-13-06.jpg'),
            const SizedBox(
              height: 50,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  """#አተካና»

አንድን ብሔር ከሌላው ብሔር ጋር የሚያመሳስለውም ሆነ የሚያለያየው የራሱ የሆነ በርካታ ባህላዊ መገለጫዎች አሉት።ለአብነትም የአመጋገብ፣የአለባበስ፣የቤት አሰራር፣የለቅሶና የሰርግ ስርዓቶች ወዘተ ይጠቀሳሉ።

የሀድያ ብሔርም ማንነቱን አጉልቶ የሚያሳይበት የራሱ የሆነ መገለጫዎች አሉት።ከነዚህም ውስጥ ባህላዊ የምግብ ዝግጅትና የአመጋገብ ስርዓት አንዱ ነው።

በሀድያ ባህል መሰረት የሚዘጋጁ ባህላዊ ምግቦች ከዝግጅታቸው አንስቶ አስከ አበላል ስርዓት ድረስ የራሱ የሆነ ስርዓት አለው።በባህሉ መሰረት ከሚዘጋጁ ሀገረሰባዊ ምግቦች ውስጥ በትልቅ ባህላዊ ክብረ በዓል ላይ የሚዘጋጀው አተካና የተሰኘው ምግብ አንዱ ነው።

ያሆዴ በዓል በሀድያ ብሔር ዘንድ አሮጌው ዓመት አልፎ አዲሱን ዓመት መቀበያ በመሆኑ በብሔሩ ዘንድ ትልቅና የተለየ ቦታ የሚሰጠው ባህላዊ ክብረ በዓል ነው።ያሆዴ በዓል ሲነሳ የምግብ ዝግጅቱም አብሮ ይነሳል።ከሚዘጋጁ የምግብ ዓይነቶች ውስጥ በዋናነት የሚጠቀሰው«አተካና»የተሰኘው ባህላዊ ምግብ ነው።

አተካና የሚዘጋጀው ከተመረጡ የእንሰት ተክሎች ከሚገኘው ቡዕላ ሲሆን እንዲሁም ደግሞ በባህሉ መሰረት ምግቡ ጣፋጭ እንዲሆን የሚረዱ የተለያዩ የእስሳት ተዋጽኦ ውጤቶች ማለትም አይብ፣ቅቤ እና ወተት እንዲሁም የተለያዩ ቅመማ ቅመሞችን በመጠቀም ይዘጋጃል።

አተካና በዋናነት የሚዘጋጀው በመስቀል በዓል ሲሆን ያም «ፉሊጥ ሂሞ»/መስከረም 15 ማታ/ ያሆዴ በዓል መድረሱን እያበሰሩና እየጨፈሩ ለሚዞሩ ወጣቶች በባህሉ መሰረት አተካና ይሰጣቸዋል።

አተካና ከያሆዴ በዓል ውጪ የሚሰራው ትልቅ ክብር ለሚሰጠው እንግዳ፣የባል ጓደኛ ሲመጣ፣የሴት ልጅ ባል ሲመጣ፣እንዲሁም ሴቶች ሲወልዱ ይሰራል።

አተካና የሀድያ ብሔር መገለጫ ከሆኑት ሀገረሰባዊ ምግቦች ውስጥ አንዱ ሲሆን በብሔሩ ማህበረሰብ ዘንድ ትልቅ ቦታ የሚሰጠው በመሆኑ ከአሰራሩ ጀምሮ እስከሚቀርብበት ዕቃ ድረስ የራሱ የሆነ ቅደም ተከተል ያለውና ለሰውነት የማይከብድ እንደውም የምግብ ፍላጎትን የሚጨምር ልዩ ጣዕም ያለውና ተወዳጅ የሆነ ምግብ ነው።

በአጠቃላይ አተካና በብሔሩ ዘንድ የተለየ ቦታ ያለው ባህላዊ ምግብ ነው።ምግቡ ከእንሰት ውጤቶችና ከተለያዩ ግብዓቶች የሚዘጋጅ ዘውትር የማይበላና በአብዛኛው በዓመት አንድ ጊዜ በሚከበረው ያሆዴ በዓል ላይ ተዘጋጅቶ የሚቀርብ ተናፋቂ ምግብ ነው።""",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
