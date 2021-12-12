import 'package:flutter/material.dart';

void main() {

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),

    );
  }
}

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override

  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  int count = 0;

  void decrement() {

    setState(() {
      count--;
    });

    print(count);

  }

  void increment() {

    setState(() {
      count++;
    });

    print(count);

  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 20;

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.red,

      body: Container(

        decoration: const BoxDecoration(

          image: DecorationImage(

            image: AssetImage('essets/imagens/fundo_principal.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              isFull ? 'Lotado' : 'Pode Entrar!',
              style: const TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(32),
              child: Text(
                count.toString(),
                style: TextStyle(
                  fontSize: 100,
                  
                  color: isFull ? Colors.red : Colors.white,
                  ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: isEmpty ? null : decrement,
                  style: TextButton.styleFrom(
                    backgroundColor:
                        isEmpty ? Colors.white.withOpacity(0.2) : Colors.white,
                    fixedSize: const Size(100, 100),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),

                  child: const Text(
                    'Saiu',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),

                const SizedBox(
                  width: 32,
                ),

                TextButton(
                  onPressed: isFull ? null : increment,
                  style: TextButton.styleFrom(
                    backgroundColor:
                        isFull ? Colors.white.withOpacity(0.2) : Colors.white,
                    fixedSize: const Size(100, 100),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  
                  child: const Text(
                    'Entrou!',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
