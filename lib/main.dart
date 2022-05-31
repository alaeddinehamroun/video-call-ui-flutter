import 'package:flutter/material.dart';
import 'package:video_call_ui/screens/contacts_list_screen.dart';
import 'package:video_call_ui/screens/video_call_screen.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'video Chat App',
      theme: ThemeData(
        fontFamily: "SF UI",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const ContactsListScreen(),
        VideoCallScreen.routName: (ctx) => const VideoCallScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => const ContactsListScreen());
      },
    );
  }
}
