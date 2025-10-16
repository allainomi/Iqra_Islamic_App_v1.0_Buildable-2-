import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const IqraIslamicApp());
}

class IqraIslamicApp extends StatelessWidget {
  const IqraIslamicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iqra Islamic',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: GoogleFonts.notoSansArabicTextTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> screens = const [
    Center(child: Text('📖 قرآن', style: TextStyle(fontSize: 26))),
    Center(child: Text('📜 حدیث', style: TextStyle(fontSize: 26))),
    Center(child: Text('⚖️ فتاویٰ', style: TextStyle(fontSize: 26))),
    Center(child: Text('🌿 اذکار', style: TextStyle(fontSize: 26))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iqra Islamic'),
        backgroundColor: Colors.green.shade700,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => currentIndex = i),
        selectedItemColor: Colors.green.shade800,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'قرآن'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'حدیث'),
          BottomNavigationBarItem(icon: Icon(Icons.balance), label: 'فتاویٰ'),
          BottomNavigationBarItem(icon: Icon(Icons.spa), label: 'اذکار'),
        ],
      ),
    );
  }
}
