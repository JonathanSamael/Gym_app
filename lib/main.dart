import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym workout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Gym workout'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(widget.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
      ),
      body: const Body(),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(225, 150, 255, 0.6)),
                curve: Curves.bounceInOut,
                child: Text(
                  "Menu",
                  style: TextStyle(fontSize: 26),
                )),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Edit workout"),
              leading: Icon(Icons.fitness_center_rounded),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SecondRoute()));
          },
          title: const Text('Treino A'),
          subtitle: const Text('Perna e ombro'),
          leading: const Icon(Icons.fitness_center_rounded),
          trailing: const Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ThirdRoute()));
          },
          title: const Text('Treino B'),
          subtitle: const Text('Costas e bíceps'),
          leading: const Icon(Icons.fitness_center_rounded),
          trailing: const Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FourthRoute()));
          },
          title: const Text('Treino C'),
          subtitle: const Text('Peito e tríceps'),
          leading: const Icon(Icons.fitness_center_rounded),
          trailing: const Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LagPage()));
          },
          title: const Text('Natação'),
          subtitle: const Text('Aeróbico e anaeróbico'),
          leading: const Icon(Icons.pool_rounded),
          trailing: const Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Treino A', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),),
      ),
      body: Card(
        // mainAxisAlignment: MainAxisAlignment.start,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('lib/assets/lag.jpg'),
            ListTile(
              title: const Text("LagPress"),
              subtitle: const Text("3 x 10 - repetições"),
              trailing: const Icon(Icons.link),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => 
                     const GifToLegPress()));
              },
            ),
            ListTile(
              title: const Text("Agachamento unilateral com halteres + Hack"),
              subtitle: const Text("4 x 8 + 8 - repetições"),
              trailing: const Icon(Icons.link),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => 
                     const GifToSquat()));
              },
            ),
            ListTile(
              title: const Text("Mesa Flexora"),
              subtitle: const Text("3 x 12 + 12 + 12 - repetições"),
              trailing: const Icon(Icons.link),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => 
                     const GifToFlexor()));
              },
            ),
            ListTile(
              title: const Text("Mesa Extensora"),
              subtitle: const Text("3 x 12 + 12 + 12 - repetições"),
              trailing: const Icon(Icons.link),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => 
                     const GifToExtender()));
              },
            ),
            ListTile(
              title: const Text("Flexão Plantar Sentado"),
              subtitle: const Text("3 x 12 + 12 + 12 - repetições"),
              trailing: const Icon(Icons.link),
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => 
                     const GifToCalf()));
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go Back!"),
            ),
          ],
        ),
      ),
    );
  }
}

class GifToLegPress extends StatelessWidget {
  const GifToLegPress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo LagPress 45º'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.network('https://media.tenor.com/e0qeS17dv7QAAAAC/legpress45-leg-press.gif'),]
      )
    );
  }
}
class GifToSquat extends StatelessWidget {
  const GifToSquat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo Squat e Hack'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network('https://www.mundoboaforma.com.br/wp-content/uploads/2020/11/avanco-com-halteras.gif'),
          Image.network('https://www.mundoboaforma.com.br/wp-content/uploads/2020/11/agachamento-no-rack.gif'),  
        ],
      )
    );
  }
}
class GifToFlexor extends StatelessWidget {
  const GifToFlexor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo Flexora'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.network('https://www.mundoboaforma.com.br/wp-content/uploads/2021/04/pernas-flexao-de-pernas-na-maquina.gif'),]
      )
    );
  }
}
class GifToExtender extends StatelessWidget {
  const GifToExtender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo Extensora'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.network('https://media.tenor.com/fNeMiJuGmEcAAAAC/cadeira-extensora-extensora.gif'),]
      )
    );
  }
}

class GifToCalf extends StatelessWidget {
  const GifToCalf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo Flexão Plantar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.network("https://i.pinimg.com/originals/19/54/4f/19544f4e21322137847a25acd501a18a.gif")],
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Treino B'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Treino C'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class FifthRoute extends StatelessWidget {
  const FifthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Natação'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class LagPage extends StatelessWidget {
  const LagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imagem"),
      ),
      body: Column(
        children: [
          Image.asset(
            'lib/assets/lag.jpg',
          ),
          const Text(
            "Image 2",
            style: TextStyle(fontSize: 32),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Voltar!'),
          ),
        ],
      ),
    );
  }
}
