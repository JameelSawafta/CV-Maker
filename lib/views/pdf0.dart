import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/myprovider.dart';

import 'mobile.dart';

class Pdf0 extends StatefulWidget {
  const Pdf0({Key? key}) : super(key: key);

  @override
  State<Pdf0> createState() => _Pdf0State();
}

class _Pdf0State extends State<Pdf0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _creatPDF,
          child: Text('Create PDF'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff05172a),
          ),
        ),
      ),
    );
  }
  Future<void> _creatPDF() async{
    PdfDocument document = PdfDocument();
    final page = document.pages.add();
    final pageWidth = page.getClientSize().width;
    final pageHeight = page.getClientSize().height;


    String addressAndEmailAndPhone = '''
${Provider.of<MyProvider>(context, listen: false).address}
${Provider.of<MyProvider>(context, listen: false).email} | ${Provider.of<MyProvider>(context, listen: false).phone}
    ''';

    String career = '''
${Provider.of<MyProvider>(context, listen: false).companyName}
${Provider.of<MyProvider>(context, listen: false).jobTitle}
    ''';

    String k = Provider.of<MyProvider>(context, listen: false).keySkills;
    List<String> keySkills = k.split(',');

    String i = Provider.of<MyProvider>(context, listen: false).interests;
    List<String> interests = i.split(',');

    final PdfUnorderedList UnorderedList = PdfUnorderedList(
        marker: PdfUnorderedMarker(
            font: PdfStandardFont(PdfFontFamily.helvetica, 10),
            style: PdfUnorderedMarkerStyle.disk),
        items: PdfListItemCollection(<String>[
          ...keySkills,
        ]),
        textIndent: 10,
        indent: 20);

    final PdfUnorderedList UnorderedList2 = PdfUnorderedList(
        marker: PdfUnorderedMarker(
            font: PdfStandardFont(PdfFontFamily.helvetica, 10),
            style: PdfUnorderedMarkerStyle.disk),
        items: PdfListItemCollection(<String>[
          ...interests,
        ]),
        textIndent: 10,
        indent: 20);

    int sizeOfListSQ = UnorderedList.items.count * 9;
    int sizeOfListI = UnorderedList2.items.count * 8;


    page.graphics.drawString(Provider.of<MyProvider>(context, listen: false).fullName, PdfStandardFont(PdfFontFamily.helvetica,15, style: PdfFontStyle.bold ),bounds: Rect.fromLTWH(pageWidth/2, 0, 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.center));
    page.graphics.drawString(addressAndEmailAndPhone, PdfStandardFont(PdfFontFamily.helvetica,12 ),bounds: Rect.fromLTWH(pageWidth/2, 20, 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.center));
    page.graphics.drawString(Provider.of<MyProvider>(context, listen: false).personalStatement, PdfStandardFont(PdfFontFamily.helvetica,12 ),bounds: Rect.fromLTWH(0, 52.5, 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString('Professional Experience', PdfStandardFont(PdfFontFamily.helvetica,13.5, style: PdfFontStyle.bold ),bounds: Rect.fromLTWH(0, 100, 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString(career, PdfStandardFont(PdfFontFamily.helvetica,11, style: PdfFontStyle.bold ),bounds: Rect.fromLTWH(0, 125, 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString('${Provider.of<MyProvider>(context, listen: false).startDateCareer.toString().substring(0, 7)} => ${Provider.of<MyProvider>(context, listen: false).endDateCareer.toString().substring(0, 7)}', PdfStandardFont(PdfFontFamily.helvetica,12 ),bounds: Rect.fromLTWH(pageWidth, 125, 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.right));
    page.graphics.drawString('    - ${Provider.of<MyProvider>(context, listen: false).companyDetails}', PdfStandardFont(PdfFontFamily.helvetica,12 ),bounds: Rect.fromLTWH(0, 152.5, 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.left));

    page.graphics.drawString('Education', PdfStandardFont(PdfFontFamily.helvetica,13.5, style: PdfFontStyle.bold ),bounds: Rect.fromLTWH(0, 200, 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString('${Provider.of<MyProvider>(context, listen: false).schoolName}', PdfStandardFont(PdfFontFamily.helvetica,11, style: PdfFontStyle.bold ),bounds: Rect.fromLTWH(0, 225, 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString('${Provider.of<MyProvider>(context, listen: false).degree} - ${Provider.of<MyProvider>(context, listen: false).grade}', PdfStandardFont(PdfFontFamily.helvetica,11, style: PdfFontStyle.bold ),bounds: Rect.fromLTWH(0, 240, 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString('${Provider.of<MyProvider>(context, listen: false).startDateEducation.toString().substring(0, 7)} => ${Provider.of<MyProvider>(context, listen: false).endDateEducation.toString().substring(0, 7)}', PdfStandardFont(PdfFontFamily.helvetica,12 ),bounds: Rect.fromLTWH(pageWidth, 225, 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.right));
    page.graphics.drawString('    - ${Provider.of<MyProvider>(context, listen: false).fieldOfStudy}', PdfStandardFont(PdfFontFamily.helvetica,12 ),bounds: Rect.fromLTWH(0, 260.5, 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.left));

    page.graphics.drawString('Projects', PdfStandardFont(PdfFontFamily.helvetica,13.5, style: PdfFontStyle.bold ),bounds: Rect.fromLTWH(0, 300, 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString('${Provider.of<MyProvider>(context, listen: false).projectTitle}', PdfStandardFont(PdfFontFamily.helvetica,11, style: PdfFontStyle.bold ),bounds: Rect.fromLTWH(0, 325, 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString('${Provider.of<MyProvider>(context, listen: false).projectDetails}', PdfStandardFont(PdfFontFamily.helvetica,11, style: PdfFontStyle.bold ),bounds: Rect.fromLTWH(0, 340, 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString('${Provider.of<MyProvider>(context, listen: false).projectStartDate.toString().substring(0, 7)} => ${Provider.of<MyProvider>(context, listen: false).projectEndDate.toString().substring(0, 7)}', PdfStandardFont(PdfFontFamily.helvetica,12 ),bounds: Rect.fromLTWH(pageWidth, 325, 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.right));

    page.graphics.drawString('Key Skills', PdfStandardFont(PdfFontFamily.helvetica,13.5, style: PdfFontStyle.bold ),bounds: Rect.fromLTWH(0, 380, 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.left));

    UnorderedList.draw(page: page,
        bounds: Rect.fromLTWH(
            0, 405, 0, 0));

    page.graphics.drawString('Inteersts', PdfStandardFont(PdfFontFamily.helvetica,13.5, style: PdfFontStyle.bold ),bounds: Rect.fromLTWH(0, 425+(sizeOfListSQ*1), 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.left));
    UnorderedList2.draw(page: page,
        bounds: Rect.fromLTWH(
            0, 450+(sizeOfListSQ*1), 0, 0));

    page.graphics.drawString('References', PdfStandardFont(PdfFontFamily.helvetica,13.5, style: PdfFontStyle.bold ),bounds: Rect.fromLTWH(0, 480+(sizeOfListSQ*1)+(sizeOfListI*1), 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString('${Provider.of<MyProvider>(context, listen: false).referenceName} - ${Provider.of<MyProvider>(context, listen: false).referenceJobTitle}, ${Provider.of<MyProvider>(context, listen: false).referenceCompany}', PdfStandardFont(PdfFontFamily.helvetica,11, style: PdfFontStyle.bold ),bounds: Rect.fromLTWH(0, 505+(sizeOfListSQ*1)+(sizeOfListI*1), 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString('${Provider.of<MyProvider>(context, listen: false).referenceEmail} | ${Provider.of<MyProvider>(context, listen: false).referencePhone}', PdfStandardFont(PdfFontFamily.helvetica,11, style: PdfFontStyle.bold ),bounds: Rect.fromLTWH(0, 520+(sizeOfListSQ*1)+(sizeOfListI*1), 0, 0),format: PdfStringFormat(alignment: PdfTextAlignment.left));



    List<int> bytes = await document.save();
    document.dispose();

    saveAndLunchFile(bytes,'CVfile.pdf');

  }
}
