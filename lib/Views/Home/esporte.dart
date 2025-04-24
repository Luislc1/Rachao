import 'package:flutter/material.dart';
import 'package:rachao/Views/BottomNavigation/BottomNavigation.dart';

class SportScreen extends StatefulWidget {
  const SportScreen({super.key});

  @override
  State<SportScreen> createState() => _SportScreenState();
}

class _SportScreenState extends State<SportScreen> {
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
      appBar: AppBar(
        title: Text(
          'RACHÃO',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 35),
          onPressed: () => Navigator.pop(context, '/home'),
          tooltip: 'Sair',
        ),
        backgroundColor: Color(0xfe003b8a),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatar.iran.liara.run/public/boy?username=Ash'),
            ),
          ),
        ],
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
              description: 'Expresse a arte do futebol brasileiro!',
              gradient: const [Colors.green, Colors.greenAccent],
            ),
            const SizedBox(height: 20),
            _buildSportButton(
              label: 'Handebol',
              imagePath: 'assets/imagens/handebol.png',
              description: 'Domine a bola, arremesse longe!',
              gradient: const [Colors.lightBlue, Colors.blueAccent],
            ),
            const SizedBox(height: 20),
            _buildSportButton(
              label: 'Vôlei',
              imagePath: 'assets/imagens/vôlei.png',
              description: 'Vire a bola e jogue para ganhar!',
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
