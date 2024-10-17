import 'dart:io';
import 'package:esightsolutions/global/constants/styles/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'global/constants/routes/routes.dart';
import 'package:flutter/foundation.dart'; 

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? ScreenUtilInit(
            designSize: const Size(1440, 1024), 
            child: MaterialApp(
              routes: routes,
              title: 'EsightSolution',
              initialRoute: '/',
              debugShowCheckedModeBanner: false,
              theme: ThemeData.light().copyWith(
                searchBarTheme: const SearchBarThemeData(
                  backgroundColor: WidgetStatePropertyAll(kWhite),
                ),
              ),
            ),
          )
        : Platform.isIOS
            ? ScreenUtilInit(
                designSize: const Size(333, 675),
                child: CupertinoApp(
                  title: 'EsightSolution',
                  routes: routes,
                  initialRoute: '/',
                  theme: const CupertinoThemeData(
                    barBackgroundColor: kWhite,
                    primaryColor: kBlack,
                  ),
                  debugShowCheckedModeBanner: false,
                  localizationsDelegates: const [
                    DefaultWidgetsLocalizations.delegate,
                    DefaultMaterialLocalizations.delegate,
                    DefaultCupertinoLocalizations.delegate,
                  ],
                ),
              )
            : ScreenUtilInit(
                designSize: const Size(333, 675),
                child: MaterialApp(
                  routes: routes,
                  title: 'EsightSolution',
                  initialRoute: '/',
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData.light().copyWith(
                    searchBarTheme: const SearchBarThemeData(
                      backgroundColor: WidgetStatePropertyAll(kWhite),
                    ),
                  ),
                ),
              );
  }
}
