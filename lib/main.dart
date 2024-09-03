import 'package:flutter/material.dart';

void main() {
  runApp(const NavApp());
}

//MAIN VIEW
class NavApp extends StatefulWidget {
  const NavApp({super.key});

  @override
  State<NavApp> createState() => _NavAppState();
}

class _NavAppState extends State<NavApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff16423C),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Landing page".toUpperCase(),
                style: const TextStyle(color: Colors.white, fontSize: 48),
              ),
              const SizedBox(
                height: 100,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      runApp(const LogIn());
                    });
                  },
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.album_rounded,
                        color: Colors.white,
                        size: 48,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

//LOGIN VIEW
class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffA04747),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Log In page".toUpperCase(),
                style: const TextStyle(color: Colors.white, fontSize: 48),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        runApp(const NavApp());
                      },
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.arrow_circle_left,
                            color: Colors.white,
                            size: 48,
                          ),
                        ],
                      )),
                  TextButton(
                      onPressed: () {
                        runApp(const HomeApp());
                      },
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.arrow_circle_right,
                            color: Colors.white,
                            size: 48,
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//HOME VIEW

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffCD5C08),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome Home".toUpperCase(),
                style: const TextStyle(color: Colors.white, fontSize: 48),
              ),
              const SizedBox(
                height: 100,
              ),
              const Text("© iSAD",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
