import 'package:flutter/material.dart';
import 'package:space_pictures/domain/photo_list/photo_element.dart';
import 'package:space_pictures/language/app_localizations.dart';
import 'package:space_pictures/presentation/photo_element_details/group_of_text_horizontal.dart';

class DetailTexts extends StatelessWidget {
  const DetailTexts({
    Key? key,
    required this.photoElement,
  }) : super(key: key);

  final PhotoElement photoElement;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          GroupofTextHorizontal(title: AppLocalizations.of(context)!.translate('text_date'), text: photoElement.date),
          GroupofTextHorizontal(title: AppLocalizations.of(context)!.translate('text_copyright'), text: photoElement.copyright),
          GroupofTextHorizontal(title: AppLocalizations.of(context)!.translate('text_description'), text: photoElement.description),
        ],
      ),
    );
  }
}
