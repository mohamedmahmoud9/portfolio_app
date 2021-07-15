import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_app/core/icons/my_flutter_app_icons.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            cardColor: const Color(0xFF323232),
            textTheme: TextTheme(
              bodyText2: TextStyle(
                color: Colors.white,
                fontFamily: 'JosefinSans',
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
              bodyText1: TextStyle(
                color: Colors.black87,
                fontFamily: 'Dosis',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              headline5: TextStyle(color: Colors.white, fontSize: 24.sp),
              headline6: TextStyle(
                color: Colors.black87,
                fontSize: 26.sp,
                fontFamily: 'Dosis',
                fontWeight: FontWeight.w500,
              ),
              headline3: TextStyle(
                color: const Color(0xFFFFFFFF),
                fontFamily: 'Dosis',
                fontWeight: FontWeight.w700,
                fontSize: 42.sp,
              ),
              subtitle1: TextStyle(
                  color: Colors.white, fontFamily: 'Dosis', fontSize: 24.sp),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFE43F5A),
                  padding: EdgeInsets.all(16.sp),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.sp)),
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Dosis',
                      letterSpacing: 1,
                      wordSpacing: 1.5,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp)),
            ),
            outlinedButtonTheme: OutlinedButtonThemeData(
                style: OutlinedButton.styleFrom(
                    side:
                        BorderSide(width: 2.sp, color: const Color(0xFFE43F5A)),
                    primary: const Color(0xFFE43F5A),
                    padding: EdgeInsets.all(16.sp),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.sp)),
                    textStyle: TextStyle(
                        color: const Color(0xFFE43F5A),
                        fontFamily: 'Dosis',
                        letterSpacing: 1,
                        wordSpacing: 1.5,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp))),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSansCondensed',
                      fontWeight: FontWeight.w300,
                      fontSize: 16.sp)),
            ),
            buttonTheme: const ButtonThemeData(
                buttonColor: Colors.white, textTheme: ButtonTextTheme.primary),
            appBarTheme: const AppBarTheme(
                color: Color(0xFF000000),
                actionsIconTheme: IconThemeData(
                  color: Colors.white,
                ),
                elevation: 0.0,
                iconTheme: IconThemeData(color: Colors.white),
                textTheme: TextTheme(
                  button: TextStyle(
                    color: Colors.white,
                  ),
                )),
            // scaffoldBackgroundColor: const Color(0xFF000000),
            backgroundColor: const Color(0xFF000000),
            primaryColor: const Color(0xFF000000),
            hintColor: const Color(0xFFE43F5A)),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPhone = MediaQuery.of(context).size.width <= 500;
    return Scaffold(
      drawer: isPhone
          ? Drawer(
              child: Container(
                color: Theme.of(context).primaryColor,
                child: Column(
                  children: [
                    DrawerHeader(
                        child: Image.asset(
                      'assets/images/169_generated.png',
                      width: 80,
                    )),
                    ListTile(
                      title: Text(
                        'Home',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    )
                  ],
                ),
              ),
            )
          : null,
      appBar: isPhone
          ? AppBar(
              toolbarHeight: 75,
              centerTitle: isPhone ? true : false,
              title: Image.asset(
                'assets/images/169_generated.png',
                width: 50.sp,
              ),
              actions: isPhone
                  ? []
                  : [
                      TextButton(onPressed: () {}, child: const Text('Home')),
                      TextButton(onPressed: () {}, child: const Text('About')),
                      TextButton(
                          onPressed: () {}, child: const Text('Service')),
                      TextButton(onPressed: () {}, child: const Text('Work')),
                      TextButton(onPressed: () {}, child: const Text('Contact'))
                    ],
            )
          : null,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/bg2.jpeg'),
                            colorFilter: ColorFilter.mode(
                                Colors.black54, BlendMode.darken))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.white10, width: 8.sp)),
                          child: CircleAvatar(
                            backgroundImage: const AssetImage(
                              'assets/images/me.jpg',
                            ),
                            radius: MediaQuery.of(context).size.height / 7,
                          ),
                        ),
                        SizedBox(
                          height: 50.sp,
                        ),
                        Text(
                          "Hi There, I'm",
                          style: Theme.of(context).textTheme.bodyText2,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Mohamed Mahmoud",
                          style: Theme.of(context).textTheme.headline3,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Mobile Application Developer",
                          style: Theme.of(context).textTheme.subtitle1,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 16.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 2.sp, vertical: 4.sp),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white54, width: 2),
                                  shape: BoxShape.circle),
                              child: IconButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    launch(
                                        'https://www.facebook.com/m.mahmooud.20/');
                                  },
                                  icon: Icon(MyFlutterApp.facebook_1,
                                      size: 18.sp)),
                            ),
                            SizedBox(
                              width: 8.sp,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 2.sp, vertical: 4.sp),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white54, width: 2),
                                  shape: BoxShape.circle),
                              child: IconButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    launch('https://twitter.com/m_mahmoud_20/');
                                  },
                                  icon: Icon(MyFlutterApp.twitter_1,
                                      size: 18.sp)),
                            ),
                            SizedBox(
                              width: 8.sp,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 2.sp, vertical: 4.sp),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white54, width: 2.sp),
                                  shape: BoxShape.circle),
                              child: IconButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    launch(
                                        'https://www.instagram.com/mohamed_mahmoudd_/');
                                  },
                                  icon: Icon(MyFlutterApp.instagram,
                                      size: 18.sp)),
                            ),
                            SizedBox(
                              width: 8.sp,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 2.sp, vertical: 4.sp),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white54, width: 2.sp),
                                  shape: BoxShape.circle),
                              child: IconButton(
                                  color: Colors.white,
                                  onPressed: () => launch(
                                      'https://www.linkedin.com/in/m-mahmoud-20/'),
                                  icon: Icon(
                                    MyFlutterApp.linkedin_1,
                                    size: 18.sp,
                                  )),
                            ),
                            SizedBox(
                              width: 8.sp,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 2.sp, vertical: 4.sp),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white54, width: 2.sp),
                                  shape: BoxShape.circle),
                              child: IconButton(
                                  color: Colors.white,
                                  onPressed: () => launch(
                                      'https://github.com/mohamedmahmoud9'),
                                  icon: Icon(MyFlutterApp.github, size: 18.sp)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16.sp,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text('Portofolio'),
                              ),
                              SizedBox(
                                width: 16.sp,
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                child: const Text('Contact Me'),
                              ),
                            ]),
                      ],
                    )),
                SizedBox(
                  height: 18.sp,
                ),
                Padding(
                  padding: EdgeInsets.all(16.0.sp),
                  child: Column(
                    children: [
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: Theme.of(context).textTheme.bodyText1,
                              children: [
                                const TextSpan(text: 'My name is '),
                                const TextSpan(
                                    text: 'Mohamed Mahmoud',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                    )),
                                const TextSpan(text: ', and I am a '),
                                const TextSpan(
                                    text: 'Mobile Application Developer',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                    )),
                                const TextSpan(text: ' with a '),
                                TextSpan(
                                    text:
                                        'passion for building scalable Mobile Applications,',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Theme.of(context).hintColor)),
                                const TextSpan(text: ' with a '),
                                TextSpan(
                                    text: '2+ years ',
                                    style: TextStyle(
                                      color: Theme.of(context).hintColor,
                                      fontWeight: FontWeight.w700,
                                    )),
                                const TextSpan(
                                    text: 'of well-rounded experience in '),
                                TextSpan(
                                  text: 'Flutter Development.\n',
                                  style: TextStyle(
                                    color: Theme.of(context).hintColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const TextSpan(text: " I graduated in "),
                                const TextSpan(
                                  text: "2021",
                                ),
                                const TextSpan(
                                    text: " with a Bachelor's Degree in"),
                                TextSpan(
                                    text: ' Computer Science.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Theme.of(context).hintColor)),
                              ])),
                      SizedBox(
                        height: 16.sp,
                      ),
                      Text(
                        'Skills & Knowlege',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: EdgeInsets.all(16.sp),
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dart',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'JosefinSans',
                                          fontSize: 14.sp),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: LinearProgressIndicator(
                                        minHeight: 10.sp,
                                        backgroundColor: Colors.grey[400],
                                        color: Theme.of(context).hintColor,
                                        value: 95 / 100,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )),
                          Expanded(
                              child: Padding(
                            padding: EdgeInsets.all(16.sp),
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Flutter',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'JosefinSans',
                                          fontSize: 14.sp),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: LinearProgressIndicator(
                                        minHeight: 10.sp,
                                        backgroundColor: Colors.grey[400],
                                        color: Theme.of(context).hintColor,
                                        value: 95 / 100,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                      // Container(
                      //   height: 200.sp,
                      //   child: GridView(
                      //     scrollDirection: Axis.horizontal,
                      //       gridDelegate:
                      //           const SliverGridDelegateWithFixedCrossAxisCount(
                      //               crossAxisCount: 1)),
                      // ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: TextButton.icon(
                              onPressed: () =>
                                  launch('whatsapp://send?phone=+201010375415'),
                              icon: const Icon(Icons.call),
                              label: Text(
                                '(+20)1010374415',
                                style: TextStyle(fontSize: 12.sp),
                              ),
                              style: TextButton.styleFrom(
                                  primary: Colors.black87,
                                  textStyle:
                                      const TextStyle(color: Colors.black87)),
                            ),
                          ),
                          Expanded(
                            child: TextButton.icon(
                              onPressed: () => launch(
                                  'mail://mailto?email=mohamed0105050@gmail.com'),
                              icon: const Icon(Icons.email_outlined),
                              label: Text('mohamed0105050@gmail.com',
                                  style: TextStyle(fontSize: 12.sp)),
                              style: TextButton.styleFrom(
                                  primary: Colors.black87,
                                  textStyle: const TextStyle(
                                    color: Colors.black87,
                                  ),
                                  alignment: Alignment.centerLeft),
                            ),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.location_on_outlined),
                              label: Text(
                                'Al Masoura, Egypt',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                  primary: Colors.black87,
                                  textStyle:
                                      const TextStyle(color: Colors.black87)),
                            ),
                          ),
                          Expanded(
                            child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.date_range),
                              label: Text('22 Sept 1999',
                                  style: TextStyle(fontSize: 12.sp)),
                              style: TextButton.styleFrom(
                                  primary: Colors.black87,
                                  textStyle: const TextStyle(
                                    color: Colors.black87,
                                  ),
                                  alignment: Alignment.centerLeft),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (!isPhone)
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/169_generated.png',
                      width: 50.sp,
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        TextButton(onPressed: () {}, child: const Text('Home')),
                        TextButton(
                            onPressed: () {}, child: const Text('About')),
                        TextButton(
                            onPressed: () {}, child: const Text('Service')),
                        TextButton(onPressed: () {}, child: const Text('Work')),
                        TextButton(
                            onPressed: () {}, child: const Text('Contact'))
                      ],
                    )
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
