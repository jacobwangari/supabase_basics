import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_quickstart/pages/account_page.dart';
import 'package:supabase_quickstart/pages/login_page.dart';
import 'package:supabase_quickstart/pages/splash_page.dart';



const supabaseUrl = 'https://mnhopbukyyltsxaqbkev.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1uaG9wYnVreXlsdHN4YXFia2V2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODk4MzA2MzMsImV4cCI6MjAwNTQwNjYzM30.Lp3BeMHYHsp7EfLllTu3Tcdq5a7D-KzF9RDZjSBhKtQ';

Future<void> main() async {
   await Supabase.initialize(
    
    url: supabaseUrl,
    anonKey: supabaseKey,
    authFlowType: AuthFlowType.pkce,
  );
  runApp(MyApp());
}

final supabase = Supabase.instance.client;


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supabase Flutter',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.green,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
          ),
        ),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => const SplashPage(),
        '/login': (_) => const LoginPage(),
        '/account': (_) => const AccountPage(),
      },
    );
  }
}
