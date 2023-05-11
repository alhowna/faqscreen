import 'package:flutter/material.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('FAQs'),
      ),
      body: ListView(
        children: <Widget>[
          FaqItem(
            question: 'Ano ang tamang pagbibigay ng tubig sa mga gulay?',
            answer: 'Ang mga gulay ay nangangailangan ng sapat na kantidad ng tubig upang lumaki at magbunga ng maayos. Gayunpaman, mahalaga rin na hindi sobrang bibigyan ng tubig ang mga halaman upang maiwasan ang pagkasira ng mga ugat. Mahalaga rin na hindi mababad ng tubig ang mga dahon dahil ito ay maaaring magdulot ng mga sakit at peste.',
          ),
          FaqItem(
            question: 'Paano malalaman kung may sapat na pataba ang mga gulay?',
            answer: 'Maaaring magtanong sa mga garden center kung ano ang mga tamang uri ng pataba para sa mga ibat ibang uri ng gulay. Maaari rin magkaroon ng pagsusuri ng lupa upang malaman kung ano ang mga kailangang nutrients ng mga halaman.',
          ),
          FaqItem(
            question: 'Paano maiiwasan ang paglaganap ng mga peste at sakit sa mga gulay?',
            answer: 'Maaaring maiwasan ang paglaganap ng mga peste at sakit sa mga gulay sa pamamagitan ng tamang pag-aalaga at pagmamanupaktura. Maglagay ng natural na mga insecticide tulad ng mga halaman na may natural na kemikal.',
          ),
          FaqItem(
            question: 'Ano ang dapat gawin kapag mayroong mga gulay na nasira o mayroong mga sira sa mga dahon?',
            answer: 'Kapag mayroong mga gulay na nasira o mayroong mga sira sa mga dahon, mahalaga na agad itong tanggalin upang hindi kumalat ang sakit sa ibang mga halaman. Maaaring maglagay ng natural na mga insecticide o magpakonsulta sa mga eksperto upang malaman kung ano ang mga dapat gawin.',
          ),
          FaqItem(
            question: 'Ano ang dapat gawin upang maiwasan ang sobrang init at lamig sa mga gulay?',
            answer: 'Maaaring maglagay ng mga screen o shade cloth upang maiwasan ang sobrang sikat ng araw. Kapag naman may malamig na klima, maaaring maglagay ng mga plastic cover o greenhouses upang mapanatili ang tamang temperatura sa loob ng paso.",
          ),
        ],
      ),
    );
  }
}

class FaqItem extends StatefulWidget {
  final String question;
  final String answer;

  const FaqItem({required this.question, required this.answer, Key? key})
      : super(key: key);

  @override
  _FaqItemState createState() => _FaqItemState();
}

class _FaqItemState extends State<FaqItem> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          setState(() {
            _expanded = !_expanded;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                widget.question,
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 8.0),
              AnimatedCrossFade(
                duration: const Duration(milliseconds: 200),
                firstChild: const SizedBox.shrink(),
                secondChild: Text(
                  widget.answer,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                crossFadeState: _expanded
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
