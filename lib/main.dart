import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MyChromeSafariBrowser extends ChromeSafariBrowser {
  @override
  void onOpened() {
    print("ChromeSafari browser opened");
  }

  @override
  void onCompletedInitialLoad() {
    print("ChromeSafari browser initial load completed");
  }

  @override
  void onClosed() {
    print("ChromeSafari browser closed");
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    await AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  final ChromeSafariBrowser browser = new MyChromeSafariBrowser();
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Online Eğitim Köprüsü"),
          backgroundColor: Colors.blueAccent),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF00c8ff),
                surfaceTintColor: Color(0xF000000),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen2()));
              },
              child: Text('1.Sınıf'),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF00c8ff),
                surfaceTintColor: Color(0xF000000),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen3()));
              },
              child: Text('2.Sınıf'),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF00c8ff),
                surfaceTintColor: Color(0xF000000),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen4()));
              },
              child: Text('3.Sınıf'),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF00c8ff),
                surfaceTintColor: Color(0xF000000),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen5()));
              },
              child: Text('4.Sınıf'),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF00c8ff),
                surfaceTintColor: Color(0xF000000),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen6()));
              },
              child: Text('5.Sınıf'),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF00c8ff),
                surfaceTintColor: Color(0xF000000),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen7()));
              },
              child: Text('6.Sınıf'),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF00c8ff),
                surfaceTintColor: Color(0xF000000),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen8()));
              },
              child: Text('7.Sınıf'),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF00c8ff),
                surfaceTintColor: Color(0xF000000),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen9()));
              },
              child: Text('8.Sınıf'),
            ),
            TextButton(
                onPressed: () {
                  exit(0);
                },
                child: Text("ÇIKIŞ"))
          ],
        ),
      ),
    );
  }
}

class Screen2 extends StatefulWidget {
  final ChromeSafariBrowser browser = new MyChromeSafariBrowser();
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  var options = InAppBrowserClassOptions(
      crossPlatform: InAppBrowserOptions(hideUrlBar: false),
      inAppWebViewGroupOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to a new screen on Button click'),
          backgroundColor: Colors.blueAccent),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/1-sinif/1-sinif-okuma-yazma/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: Text("OKUMA YAZMA"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/1-sinif/1-sinif-matematik/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: Text("  MATEMATİK  "),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/1-sinif/1-sinif-hayat-bilgisi/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: Text("HAYAT BİLGİSİ"),
            )
          ],
        ),
      ),
    );
  }
}

class Screen3 extends StatefulWidget {
  final ChromeSafariBrowser browser = new MyChromeSafariBrowser();
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  var options = InAppBrowserClassOptions(
      crossPlatform: InAppBrowserOptions(hideUrlBar: false),
      inAppWebViewGroupOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('2.Sınıf'), backgroundColor: Colors.blueAccent),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/2-sinif/ingilizce-2/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: Text("İNGİLİZCE"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/2-sinif/matematik-2/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: Text("  MATEMATİK  "),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/2-sinif/2-sinif-hayat-bilgisi/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: Text("HAYAT BİLGİSİ"),
            )
          ],
        ),
      ),
    );
  }
}

class Screen4 extends StatefulWidget {
  final ChromeSafariBrowser browser = new MyChromeSafariBrowser();
  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  var options = InAppBrowserClassOptions(
      crossPlatform: InAppBrowserOptions(hideUrlBar: false),
      inAppWebViewGroupOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('3.Sınıf'),
          backgroundColor: Colors.blueAccent),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/2-sinif/ingilizce-2/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: Text("İNGİLİZCE"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/2-sinif/matematik-2/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: Text("  MATEMATİK  "),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/2-sinif/2-sinif-hayat-bilgisi/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: Text("HAYAT BİLGİSİ"),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(180, 90),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                onPressed: () async {
                  await widget.browser.open(
                      url: Uri.parse(
                          "https://www.dersizleyin.com/kategori/ilkokul/2-sinif/2-sinif-hayat-bilgisi/"),
                      options: ChromeSafariBrowserClassOptions(
                          android: AndroidChromeCustomTabsOptions(
                              shareState: CustomTabsShareState.SHARE_STATE_OFF),
                          ios: IOSSafariOptions(barCollapsingEnabled: true)));
                },
                child: Text("FEN BİLİMLERİ")),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0))),
              onPressed: () async {
                await widget.browser.open(
                    url: Uri.parse(
                        "https://www.dersizleyin.com/kategori/ilkokul/2-sinif/2-sinif-hayat-bilgisi/"),
                    options: ChromeSafariBrowserClassOptions(
                        android: AndroidChromeCustomTabsOptions(
                            shareState: CustomTabsShareState.SHARE_STATE_OFF),
                        ios: IOSSafariOptions(barCollapsingEnabled: true)));
              },
              child: Text("TÜRKÇE"),
            )
          ],
        ),
      ),
    );
  }
}

class Screen5 extends StatefulWidget {
  final ChromeSafariBrowser browser = new MyChromeSafariBrowser();
  @override
  _Screen5State createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  var options = InAppBrowserClassOptions(
      crossPlatform: InAppBrowserOptions(hideUrlBar: false),
      inAppWebViewGroupOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to a new screen on Button click'),
          backgroundColor: Colors.blueAccent),
      body: const Center(),
    );
  }
}

class Screen6 extends StatefulWidget {
  final ChromeSafariBrowser browser = new MyChromeSafariBrowser();
  @override
  _Screen6State createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  var options = InAppBrowserClassOptions(
      crossPlatform: InAppBrowserOptions(hideUrlBar: false),
      inAppWebViewGroupOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to a new screen on Button click'),
          backgroundColor: Colors.blueAccent),
      body: const Center(),
    );
  }
}

class Screen7 extends StatefulWidget {
  final ChromeSafariBrowser browser = new MyChromeSafariBrowser();
  @override
  _Screen7State createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
  var options = InAppBrowserClassOptions(
      crossPlatform: InAppBrowserOptions(hideUrlBar: false),
      inAppWebViewGroupOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to a new screen on Button click'),
          backgroundColor: Colors.blueAccent),
      body: const Center(),
    );
  }
}

class Screen8 extends StatefulWidget {
  final ChromeSafariBrowser browser = new MyChromeSafariBrowser();
  @override
  _Screen8State createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  var options = InAppBrowserClassOptions(
      crossPlatform: InAppBrowserOptions(hideUrlBar: false),
      inAppWebViewGroupOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to a new screen on Button click'),
          backgroundColor: Colors.blueAccent),
      body: const Center(),
    );
  }
}

class Screen9 extends StatefulWidget {
  final ChromeSafariBrowser browser = new MyChromeSafariBrowser();
  @override
  _Screen9State createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {
  var options = InAppBrowserClassOptions(
      crossPlatform: InAppBrowserOptions(hideUrlBar: false),
      inAppWebViewGroupOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(javaScriptEnabled: true)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to a new screen on Button click'),
          backgroundColor: Colors.blueAccent),
      body: const Center(),
    );
  }
}
