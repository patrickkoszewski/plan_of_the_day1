import 'package:flutter/material.dart';
import 'package:flutter_example/examples/CountdownTimer.dart';
import 'package:flutter_example/examples/custom_tab_bar.dart';

/*
Utworzyłem specjalnie nową klasę HomePage w której będą przyciski do odwoływania 
się do odpowienich innych stron/class i jak Ty to nazwyasz importów :P

Tutaj na górze dodając po kolei przekierowania do kolejnych Class 
będą Ci się dodwać importy o któych mówiłeś
 */

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AppBar Demo')),
      body: Center(
          child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0), // mniejszy button
            child: Container(
              decoration: const BoxDecoration(
                //dekorowanie przycisku w tym wypadku zaokrąglenie
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FinalView()),
                  );
                },
                child: const Text('Final View'),
              ),
            ),
          ),
          /*PROBLEM! Zauważysz że dużo class w plikach ma nazwę FinalView()
          musisz to pozmieniać bo tak to nie wiesz do jakiego pliku się odwołujesz 
           */
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CustomTabBar()),
              );
            },
            child: const Text('Custom Tab Bar'),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Ten ustaw samemu'),
          ),
          /*
          Przycisk onPressed wywołuje funcje czyli () {}
          w {} ustawiasz co ma zrobić ta funkcja w naszym przypadku w {} dajemy
          Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TutajNazwaKlasyNaKtórąPrzechodzimy()),
              );
          
           */
        ],
      )),
    );
  }
}
