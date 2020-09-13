import 'package:flutter/material.dart';
import 'package:marque/tabs/pacientes_tabs.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  PageController _pageController;
  int _page = 0;


  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }


  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[250],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.deepPurple,
          primaryColor: Colors.white,
          textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Colors.grey)
          )
        ),
        child: BottomNavigationBar(
          currentIndex: _page,
          onTap: (p) {
            _pageController.animateToPage(
                p,
                duration: Duration(microseconds: 500),
                curve: Curves.ease
            );
          },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                title: Text("Agenda"),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  title: Text("Pacientes")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.payment),
                  title: Text("Pagamentos")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard),
                  title: Text("Dashboard")
              ),

            ]
        ),
      ),
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: (p) {
            setState(() {
              _page = p;
            });
          },
          children: <Widget>[
            Container(color: Colors.yellow,),
            PacientesTab(),
            Container(color: Colors.green,),
            Container(color: Colors.black,),
          ],
        ),
      ),
    );
  }
}
