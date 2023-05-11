import 'package:flutter/material.dart';

class FAQ {
  final String question;
  final String answer;

  FAQ({required this.question, required this.answer});
}

List<FAQ> faqs = [
  FAQ(
    question: "Ano ang tamang pagbibigay ng tubig sa mga gulay?",
    answer: "Ang mga gulay ay nangangailangan ng sapat na kantidad ng tubig upang lumaki at magbunga ng maayos. Gayunpaman, mahalaga rin na hindi sobrang bibigyan ng tubig ang mga halaman upang maiwasan ang pagkasira ng mga ugat. Mahalaga rin na hindi mababad ng tubig ang mga dahon dahil ito ay maaaring magdulot ng mga sakit at peste.",
  ),
  FAQ(
    question: "Paano malalaman kung may sapat na pataba ang mga gulay?",
    answer: "Maaaring magtanong sa mga garden center kung ano ang mga tamang uri ng pataba para sa mga iba't ibang uri ng gulay. Maaari rin magkaroon ng pagsusuri ng lupa upang malaman kung ano ang mga kailangang nutrients ng mga halaman.",
  ),
  FAQ(
    question: "Paano maiiwasan ang paglaganap ng mga peste at sakit sa mga gulay?",
    answer: "Maaaring maiwasan ang paglaganap ng mga peste at sakit sa mga gulay sa pamamagitan ng tamang pag-aalaga at pagmamanupaktura. Maglagay ng natural na mga insecticide tulad ng mga halaman na may natural na kemikal.",
  ),
  FAQ(
    question: "Ano ang dapat gawin kapag mayroong mga gulay na nasira o mayroong mga sira sa mga dahon?",
    answer: "Kapag mayroong mga gulay na nasira o mayroong mga sira sa mga dahon, mahalaga na agad itong tanggalin upang hindi kumalat ang sakit sa ibang mga halaman. Maaaring maglagay ng natural na mga insecticide o magpakonsulta sa mga eksperto upang malaman kung ano ang mga dapat gawin.",
  ),
  FAQ(
    question: "Ano ang dapat gawin upang maiwasan ang sobrang init at lamig sa mga gulay?",
    answer: "Maaaring maglagay ng mga screen o shade cloth upang maiwasan ang sobrang sikat ng araw. Kapag naman may malamig na klima, maaaring maglagay ng mga plastic cover o greenhouses upang mapanatili ang tamang temperatura sa loob ng paso.",
  ),
  FAQ(
    question: "Ano ang tamang oras para magtanim ng mga gulay?",
    answer: "Ang tamang oras para magtanim ng mga gulay ay depende sa uri ng gulay at klima ng lugar. Sa mga lugar na may mainit na klima, mas maganda magtanim sa mga umaga o hapon upang maiwasan ang mainit na oras ng tanghali. Sa mga lugar naman na may malamig na klima, mas maganda magtanim sa tagsibol upang maiwasan ang malamig na klima ng taglamig.",
  ),
  FAQ(
    question: "Ano ang mga kailangan upang magtanim ng mga gulay sa container?",
    answer: "ng pagtatanim ng mga gulay sa container ay nangangailangan ng tamang laki ng paso, malinis na lupa, magandang drainage, sapat na sikat ng araw, at tamang pataba o fertilizer. Mahalaga rin na hindi masyadong marami ang itatanim sa bawat paso.",
  ),
  FAQ(
    question: "Ano ang mga pangunahing kailangan upang magtanim ng mga gulay?",
    answer: "Ang pagtatanim ng gulay ay nangangailangan ng maayos na lugar na may sapat na sikat ng araw, sapat na tubig, malinis na lupa, at mga kagamitan tulad ng panghukay, butil, at punla.",
  ),
  FAQ(
    question: "Paano malalaman kung handa na ang mga gulay na anihin?",
    answer: "Ang handa na mga gulay para anihin ay depende sa uri ng gulay at tagal ng panahon mula sa pagtatanim. Maaaring basahin ang mga tagubilin sa packaging ng mga biniling buto o tanungin ang mga eksperto sa garden center.",
  ),
  FAQ(
    question: "Ano ang mga gulay na madaling itanim sa bahay?",
    answer: "May ilang mga gulay na madaling itanim sa bahay tulad ng kamatis, pipino, okra, kangkong, pechay, mustasa, ampalaya, sitaw, patola, sibuyas, bawang, at iba pa.",
  ),
  FAQ(
    question: "Paano magtanim ng gulay mula sa butil?",
    answer: "Kailangan munang maghanda ng tamang lupa at punla. Pagkatapos ay maghukay ng butas sa lupa, ilagay ang butil, takpan ng lupa, at patubuin sa tamang kondisyon.",
  ),
  FAQ(
    question: "Ano ang mga paraan upang mapanatili ang kalusugan ng mga halaman?",
    answer: "Upang mapanatili ang kalusugan ng mga halaman, kailangan munang maghanda ng sapat na lupa at mapanatili ang tamang moisture. Maaari ring magdagdag ng pataba o fertilizer upang mapanatili ang tamang nutrients. Mahalaga rin ang pagbabantay sa mga peste at sakit na maaaring makaapekto sa mga halaman.",
  ),
  FAQ(
    question: "Paano malalaman kung ang isang gulay ay sariwa at masustansiya pa?",
    answer: "Ang sariwang gulay ay karaniwang mayroong malambot na texture at hindi malanta. Ang kulay ng mga gulay ay dapat buo at hindi nagtataglay ng mga bahid ng pagkabulok o pagkakasira.",
  ),
];

class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  _FAQScreenState createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAQs"),
      ),
      body: ListView.builder(
        itemCount: faqs.length,
        itemBuilder: (BuildContext context, int index) {
          return ExpansionTile(
            title: Text(faqs[index].question),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(faqs[index].answer),
              ),
            ],
          );
        },
      ),
    );
  }
}
