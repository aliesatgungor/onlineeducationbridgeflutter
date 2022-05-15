import 'package:flutter/material.dart';
void main() => runApp(MyApp());
/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Online Eğitim Köprüsü"),

          backgroundColor: Colors.teal),
      body: Center(
        child: Column(
          children: [
            FlatButton(
              color: Colors.teal,
              textColor: Colors.white,
              height: 24,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2()));
              },
              child: Text('GO TO SCREEN 1'),
            ),
            FlatButton(
              color: Colors.teal,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2()));
              },
              child: Text('GO TO SCREEN 2'),
            ),
            FlatButton(
              color: Colors.teal,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2()));
              },
              child: Text('GO TO SCREEN 3'),
            ),
            FlatButton(
              color: Colors.teal,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2()));
              },
              child: Text('GO TO SCREEN 4'),
            ),
            FlatButton(
              color: Colors.teal,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2()));
              },
              child: Text('GO TO SCREEN 5'),
            ),
            FlatButton(
              color: Colors.teal,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2()));
              },
              child: Text('GO TO SCREEN 6'),
            ),
            FlatButton(
              color: Colors.teal,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2()));
              },
              child: Text('GO TO SCREEN 7'),
            ),
            FlatButton(
              color: Colors.teal,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2()));
              },
              child: Text('GO TO SCREEN 8'),
            ),

          ],
        ),
      ),
    );
  }
}
class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}
class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to a new screen on Button click'),
          backgroundColor: Colors.blueAccent),
      body: Center(
        child: FlatButton(
          color: Colors.blueAccent,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
          },
          child: Text('GO TO HOME'),
        ),
      ),
    );
  }
}
class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}
class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to a new screen on Button click'),
          backgroundColor: Colors.blueAccent),
      body: Center(
        child: FlatButton(
          color: Colors.blueAccent,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
          },
          child: Text('GO TO HOME'),
        ),
      ),
    );
  }
}
class Screen4 extends StatefulWidget {
  @override
  _Screen4State createState() => _Screen4State();
}
class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to a new screen on Button click'),
          backgroundColor: Colors.blueAccent),
      body: Center(
        child: FlatButton(
          color: Colors.blueAccent,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
          },
          child: Text('GO TO HOME'),
        ),
      ),
    );
  }
}
class Screen5 extends StatefulWidget {
  @override
  _Screen5State createState() => _Screen5State();
}
class _Screen5State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to a new screen on Button click'),
          backgroundColor: Colors.blueAccent),
      body: Center(
        child: FlatButton(
          color: Colors.blueAccent,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
          },
          child: Text('GO TO HOME'),
        ),
      ),
    );
  }
}
class Screen6 extends StatefulWidget {
  @override
  _Screen6State createState() => _Screen6State();
}
class _Screen6State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to a new screen on Button click'),
          backgroundColor: Colors.blueAccent),
      body: Center(
        child: FlatButton(
          color: Colors.blueAccent,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
          },
          child: Text('GO TO HOME'),
        ),
      ),
    );
  }
}
class Screen7 extends StatefulWidget {
  @override
  _Screen7State createState() => _Screen7State();
}
class _Screen7State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to a new screen on Button click'),
          backgroundColor: Colors.blueAccent),
      body: Center(
        child: FlatButton(
          color: Colors.blueAccent,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
          },
          child: Text('GO TO HOME'),
        ),
      ),
    );
  }
}
class Screen8 extends StatefulWidget {
  @override
  _Screen8State createState() => _Screen8State();
}
class _Screen8State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to a new screen on Button click'),
          backgroundColor: Colors.blueAccent),
      body: Center(
        child: FlatButton(
          color: Colors.blueAccent,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
          },
          child: Text('GO TO HOME'),
        ),
      ),
    );
  }
}
class Screen9 extends StatefulWidget {
  @override
  _Screen9State createState() => _Screen9State();
}
class _Screen9State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Navigate to a new screen on Button click'),
          backgroundColor: Colors.blueAccent),
      body: Center(
        child: FlatButton(
          color: Colors.blueAccent,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
          },
          child: Text('GO TO HOME'),
        ),
      ),
    );
  }
}
