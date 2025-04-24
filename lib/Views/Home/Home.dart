import 'package:flutter/material.dart';
import 'package:rachao/Views/AppBar/appBarCustom.dart';
import 'package:rachao/Views/BottomNavigation/BottomNavigation.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80), child: AppBarCustom()),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Text(
              'Menu',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 35),
            Column(children: [
              _buildElevattedButton(
                icon: Icons.calendar_month,
                label: 'Agendar horário',
                description: 'Realizar agendamento de horário',
                gradient: const [
                  Color.fromARGB(255, 84, 212, 15),
                  Color.fromARGB(255, 212, 199, 15)
                ],
                appRoutes: '/esporte',
              ),
              SizedBox(height: 35),
              _buildElevattedButton(
                icon: Icons.edit_calendar_sharp,
                label: 'Meus horários',
                description: 'Visualizar meus horários',
                gradient: const [Colors.red, Colors.redAccent],
                appRoutes: '',
              ),
            ])
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
      ),
    );
  }

  Widget _buildElevattedButton({
    required IconData icon,
    required String label,
    required String description,
    required List<Color> gradient,
    required String appRoutes,
  }) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, appRoutes);
      },
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(children: [
                      Icon(
                        icon,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20),
                      Text(
                        label,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                    Text(
                      description,
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
