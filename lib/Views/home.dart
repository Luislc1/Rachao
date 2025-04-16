import 'package:flutter/material.dart';
import 'package:rachao/Views/appBarCustom.dart';
import 'package:rachao/Views/BottomNavigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    // Aqui você pode navegar para outras telas conforme o índice
    // Exemplo:
    // if (index == 1) Navigator.push(context, MaterialPageRoute(builder: (_) => SearchScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBarCustom(),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Text(
              'Escolha um esporte',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(height: 30),
            _buildSportButton(
              label: 'Basquete',
              imagePath: 'assets/imagens/basquete.png',
              description: 'Venha ser o novo King James!',
              gradient: const [Colors.orange, Colors.yellow],
            ),
            const SizedBox(height: 20),
            _buildSportButton(
              label: 'Futsal',
              imagePath: 'assets/imagens/futsal.png',
              description: 'Domine a bola, brilhe na quadra!',
              gradient: const [Colors.green, Colors.greenAccent],
            ),
            const SizedBox(height: 20),
            _buildSportButton(
              label: 'Handebol',
              imagePath: 'assets/imagens/handebol.png',
              description: 'Domine a bola, brilhe na quadra!',
              gradient: const [Colors.lightBlue, Colors.blueAccent],
            ),
            const SizedBox(height: 20),
            _buildSportButton(
              label: 'Vôlei',
              imagePath: 'assets/imagens/vôlei.png',
              description: 'Domine a bola, brilhe na quadra!',
              gradient: const [Colors.red, Colors.redAccent],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }

  Widget _buildSportButton({
    required String label,
    required String imagePath,
    required String description,
    required List<Color> gradient,
  }) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.black,
        fixedSize: const Size(350, 80),
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      description,
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Image.asset(imagePath, width: 40, height: 40),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
