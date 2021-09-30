import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_pictures/injection.dart';
import 'package:space_pictures/language/app_localizations.dart';
import 'package:space_pictures/presentation/photo_list/photo_list_primary_page.dart';

void main() {
  configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space pictures',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,

        textTheme: TextTheme(
          bodyText1: GoogleFonts.montserrat(fontSize: 13.0,),
          bodyText2: GoogleFonts.montserrat(fontSize: 15.0,),
          subtitle1: GoogleFonts.montserrat(fontSize: 13.0, fontWeight: FontWeight.w500),
          subtitle2: GoogleFonts.montserrat(fontSize: 15.0, fontWeight: FontWeight.w500),
          headline6: GoogleFonts.montserrat(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.blueAccent),
          headline5: GoogleFonts.montserrat(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),

      ),

      supportedLocales: const [
        Locale('en', 'US'),
       // Locale('pl', 'PL'),
      ],

      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],

      localeResolutionCallback: (locale, supportedLocales) {

        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode &&
              supportedLocale.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      home: const PhotoListPrimaryPage(),
    );
  }
}
